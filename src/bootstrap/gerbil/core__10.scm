(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49596_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49597_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49654_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49655_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49656_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49658_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49659_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49660_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49661_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49662_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49663_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49664_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49665_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49666_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49667_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50060_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50144_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50164_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50165_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50591_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50592_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50593_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50594_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50595_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (let ((__tmp49580 (list gerbil/core$<macro-object>#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp49580
         '()
         '()
         '#f)))
    (define |gerbil/core$<match>[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|)))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30641_
        (apply make-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30641_)))
    (define |gerbil/core$<match>[1]#match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30638_)
        (if (gx#identifier? _stx30638_)
            (let ((__tmp49581 (gx#syntax-local-value _stx30638_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49581))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28944_ _match-stx28946_)
        (letrec ((_parse128948_
                  (lambda (_hd29301_)
                    (let* ((___stx4437644377_ _hd29301_)
                           (_g2932729469_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4437644377_))))
                      (let ((___kont4437944380_
                             (lambda (_L30401_ _L30403_)
                               (let* ((___stx4429644297_ _L30401_)
                                      (_g3042030453_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4429644297_))))
                                 (let ((___kont4429944300_
                                        (lambda ()
                                          (let ((__tmp49582
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30403_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49582))))
                                       (___kont4430144302_
                                        (lambda (_L30594_)
                                          (let ((__tmp49583
                                                 (let ((__tmp49584
                                                        (let ((__tmp49585
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128948_ _L30594_))))
                  (declare (not safe))
                  (cons __tmp49585 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49584))))
                                            (declare (not safe))
                                            (cons '?: __tmp49583))))
                                       (___kont4430344304_
                                        (lambda (_L30564_)
                                          (let ((__tmp49586
                                                 (let ((__tmp49587
                                                        (let ((__tmp49588
                                                               (let ((__tmp49589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128948_ _L30564_))))
                         (declare (not safe))
                         (cons __tmp49589 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49587))))
                                            (declare (not safe))
                                            (cons '?: __tmp49586))))
                                       (___kont4430544306_
                                        (lambda (_L30515_ _L30517_)
                                          (let ((__tmp49590
                                                 (let ((__tmp49591
                                                        (let ((__tmp49592
                                                               (let ((__tmp49593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49594
                                     (let ((__tmp49595
                                            (let ()
                                              (declare (not safe))
                                              (_parse128948_ _L30515_))))
                                       (declare (not safe))
                                       (cons __tmp49595 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49594))))
                         (declare (not safe))
                         (cons _L30517_ __tmp49593))))
                  (declare (not safe))
                  (cons ':: __tmp49592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49591))))
                                            (declare (not safe))
                                            (cons '?: __tmp49590))))
                                       (___kont4430744308_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28955_ _hd29301_)))))
                                   (let ((_g3041630605_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4429644297_)
                                                (let ((_e3042330584_
                                                       (gx#syntax-e
                                                        ___stx4429644297_)))
                                                  (let ((_tl3042530591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3042330584_)))
                                                        (_hd3042430588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3042330584_))))
                                                    (if (gx#stx-null?
                                                         _tl3042530591_)
                                                        (___kont4430144302_
                                                         _hd3042430588_)
                                                        (if (gx#identifier?
                                                             _hd3042430588_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49596_|
                         _hd3042430588_)
                        (if (gx#stx-pair? _tl3042530591_)
                            (let ((_e3043030554_ (gx#syntax-e _tl3042530591_)))
                              (let ((_tl3043230561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3043030554_)))
                                    (_hd3043130558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3043030554_))))
                                (if (gx#stx-null? _tl3043230561_)
                                    (___kont4430344304_ _hd3043130558_)
                                    (___kont4430744308_))))
                            (___kont4430744308_))
                        (___kont4430744308_))
                    (if (gx#stx-datum? _hd3042430588_)
                        (let ((_e3043830481_ (gx#stx-e _hd3042430588_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3043830481_ '::))
                              (if (gx#stx-pair? _tl3042530591_)
                                  (let ((_e3043930485_
                                         (gx#syntax-e _tl3042530591_)))
                                    (let ((_tl3044130492_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3043930485_)))
                                          (_hd3044030489_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3043930485_))))
                                      (if (gx#stx-pair? _tl3044130492_)
                                          (let ((_e3044230495_
                                                 (gx#syntax-e _tl3044130492_)))
                                            (let ((_tl3044430502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3044230495_)))
                                                  (_hd3044330499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3044230495_))))
                                              (if (gx#identifier?
                                                   _hd3044330499_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49597_|
                                                       _hd3044330499_)
                                                      (if (gx#stx-pair?
                                                           _tl3044430502_)
                                                          (let ((_e3044530505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3044430502_)))
                    (let ((_tl3044730512_
                           (let () (declare (not safe)) (##cdr _e3044530505_)))
                          (_hd3044630509_
                           (let ()
                             (declare (not safe))
                             (##car _e3044530505_))))
                      (if (gx#stx-null? _tl3044730512_)
                          (___kont4430544306_ _hd3044630509_ _hd3044030489_)
                          (___kont4430744308_))))
                  (___kont4430744308_))
              (___kont4430744308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4430744308_))))
                                          (___kont4430744308_))))
                                  (___kont4430744308_))
                              (___kont4430744308_)))
                        (___kont4430744308_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4430744308_)))))
                                     (if (gx#stx-null? ___stx4429644297_)
                                         (___kont4429944300_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3041630605_))))))))
                            (___kont4438144382_
                             (lambda (_L30306_)
                               (let* ((___stx4427844279_ _L30306_)
                                      (_g3031830329_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4427844279_))))
                                 (let ((___kont4428144282_
                                        (lambda (_L30357_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30357_))))
                                       (___kont4428344284_
                                        (lambda ()
                                          (let ((__tmp49598
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30306_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49598)))))
                                   (if (gx#stx-pair? ___stx4427844279_)
                                       (let ((_e3032130347_
                                              (gx#syntax-e ___stx4427844279_)))
                                         (let ((_tl3032330354_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3032130347_)))
                                               (_hd3032230351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3032130347_))))
                                           (if (gx#stx-null? _tl3032330354_)
                                               (___kont4428144282_
                                                _hd3032230351_)
                                               (___kont4428344284_))))
                                       (___kont4428344284_))))))
                            (___kont4438344384_
                             (lambda (_L30221_)
                               (let* ((___stx4426044261_ _L30221_)
                                      (_g3023330244_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4426044261_))))
                                 (let ((___kont4426344264_
                                        (lambda (_L30272_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30272_))))
                                       (___kont4426544266_
                                        (lambda ()
                                          (let ((__tmp49599
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30221_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49599)))))
                                   (if (gx#stx-pair? ___stx4426044261_)
                                       (let ((_e3023630262_
                                              (gx#syntax-e ___stx4426044261_)))
                                         (let ((_tl3023830269_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3023630262_)))
                                               (_hd3023730266_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3023630262_))))
                                           (if (gx#stx-null? _tl3023830269_)
                                               (___kont4426344264_
                                                _hd3023730266_)
                                               (___kont4426544266_))))
                                       (___kont4426544266_))))))
                            (___kont4438544386_
                             (lambda (_L30191_)
                               (let ((__tmp49600
                                      (let ((__tmp49601
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30191_))))
                                        (declare (not safe))
                                        (cons __tmp49601 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49600))))
                            (___kont4438744388_
                             (lambda (_L30147_ _L30149_)
                               (let ((__tmp49602
                                      (let ((__tmp49605
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30149_)))
                                            (__tmp49603
                                             (let ((__tmp49604
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L30147_))))
                                               (declare (not safe))
                                               (cons __tmp49604 '()))))
                                        (declare (not safe))
                                        (cons __tmp49605 __tmp49603))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49602))))
                            (___kont4438944390_
                             (lambda (_L30091_ _L30093_ _L30094_)
                               (if (gx#stx-null? _L30091_)
                                   (let ((__tmp49606
                                          (let ((__tmp49609
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp49607
                                                 (let ((__tmp49608
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128948_
                                                           _L30093_))))
                                                   (declare (not safe))
                                                   (cons __tmp49608 '()))))
                                            (declare (not safe))
                                            (cons __tmp49609 __tmp49607))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49606))
                                   (let ((__tmp49610
                                          (let ((__tmp49616
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp49611
                                                 (let ((__tmp49612
                                                        (let ((__tmp49613
                                                               (let ((__tmp49615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49614
                              (let ()
                                (declare (not safe))
                                (cons _L30093_ _L30091_))))
                         (declare (not safe))
                         (cons __tmp49615 __tmp49614))))
                  (declare (not safe))
                  (_parse128948_ __tmp49613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49612 '()))))
                                            (declare (not safe))
                                            (cons __tmp49616 __tmp49611))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49610)))))
                            (___kont4439144392_
                             (lambda (_L30043_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28950_ _L30043_))))
                            (___kont4439344394_
                             (lambda (_L30013_)
                               (let ((__tmp49617
                                      (let ((__tmp49618
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30013_))))
                                        (declare (not safe))
                                        (cons __tmp49618 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49617))))
                            (___kont4439544396_
                             (lambda (_L29976_)
                               (let ((__tmp49619
                                      (let ((__tmp49620
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29976_))))
                                        (declare (not safe))
                                        (cons __tmp49620 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49619))))
                            (___kont4439744398_
                             (lambda (_L29952_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29952_))))
                            (___kont4439944400_
                             (lambda (_L29914_)
                               (let ((__tmp49621
                                      (let ((__tmp49622
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29914_))))
                                        (declare (not safe))
                                        (cons __tmp49622 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49621))))
                            (___kont4440144402_
                             (lambda (_L29886_)
                               (let ((__tmp49623
                                      (let ((__tmp49624
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29886_))))
                                        (declare (not safe))
                                        (cons __tmp49624 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49623))))
                            (___kont4440344404_
                             (lambda (_L29847_)
                               (let ((__tmp49625
                                      (let ((__tmp49626
                                             (let ((__tmp49627
                                                    (let ((__tmp49628
                                                           (lambda (_g2986029863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2986129866_)
                     (let ()
                       (declare (not safe))
                       (cons _g2986029863_ _g2986129866_)))))
              (declare (not safe))
              (foldr1 __tmp49628 '() _L29847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                __tmp49627))))
                                        (declare (not safe))
                                        (cons __tmp49626 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49625))))
                            (___kont4440744408_
                             (lambda (_L29793_ _L29795_)
                               (let ((__tmp49629
                                      (let ((__tmp49632
                                             (gx#syntax-local-value _L29795_))
                                            (__tmp49630
                                             (let ((__tmp49631
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28951_
                                                       _L29793_))))
                                               (declare (not safe))
                                               (cons __tmp49631 '()))))
                                        (declare (not safe))
                                        (cons __tmp49632 __tmp49630))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49629))))
                            (___kont4440944410_
                             (lambda (_L29763_ _L29765_)
                               (let ((__tmp49633
                                      (let ((__tmp49636
                                             (gx#syntax-local-value _L29765_))
                                            (__tmp49634
                                             (let ((__tmp49635
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28953_
                                                       _L29763_))))
                                               (declare (not safe))
                                               (cons __tmp49635 '()))))
                                        (declare (not safe))
                                        (cons __tmp49636 __tmp49634))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49633))))
                            (___kont4441144412_
                             (lambda (_L29723_ _L29725_)
                               (let ((__tmp49637
                                      (let ((__tmp49638
                                             (let ((__tmp49643
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49639
                                                    (let ((__tmp49640
                                                           (let ((__tmp49642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49641
                          (let () (declare (not safe)) (cons _L29723_ '()))))
                     (declare (not safe))
                     (cons __tmp49642 __tmp49641))))
              (declare (not safe))
              (cons _L29725_ __tmp49640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49643 __tmp49639))))
                                        (declare (not safe))
                                        (cons __tmp49638 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49637))))
                            (___kont4441344414_
                             (lambda (_L29683_)
                               (let ((__tmp49644
                                      (let ((__tmp49645 (gx#stx-e _L29683_)))
                                        (declare (not safe))
                                        (cons __tmp49645 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49644))))
                            (___kont4441544416_
                             (lambda (_L29643_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28954_ _L29643_))))
                            (___kont4441744418_
                             (lambda (_L29599_ _L29601_)
                               (let ((__tmp49646
                                      (let ((__tmp49647
                                             (let ((__tmp49648
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L29599_))))
                                               (declare (not safe))
                                               (cons __tmp49648 '()))))
                                        (declare (not safe))
                                        (cons _L29601_ __tmp49647))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49646))))
                            (___kont4441944420_
                             (lambda (_L29547_)
                               (let ((__tmp49649
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29547_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29301_))
                                        (let ((_$e29558_
                                               (gx#stx-source _hd29301_)))
                                          (if _$e29558_
                                              _$e29558_
                                              (gx#stx-source _stx28944_)))))))
                                 (declare (not safe))
                                 (_parse128948_ __tmp49649))))
                            (___kont4442144422_
                             (lambda (_L29521_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4442344424_
                             (lambda (_L29505_)
                               (let ((__tmp49650
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29505_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49650))))
                            (___kont4442544426_
                             (lambda (_L29487_)
                               (let ((__tmp49651
                                      (let ((__tmp49652 (gx#stx-e _L29487_)))
                                        (declare (not safe))
                                        (cons __tmp49652 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49651))))
                            (___kont4442744428_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28955_ _hd29301_)))))
                        (let* ((_g2932529498_
                                (lambda ()
                                  (let ((_L29487_ ___stx4437644377_))
                                    (if (gx#stx-datum? _L29487_)
                                        (___kont4442544426_ _L29487_)
                                        (___kont4442744428_)))))
                               (_g2932429514_
                                (lambda ()
                                  (let ((_L29505_ ___stx4437644377_))
                                    (if (and (gx#identifier? _L29505_)
                                             (let ((__tmp49653
                                                    (gx#ellipsis? _L29505_)))
                                               (declare (not safe))
                                               (not __tmp49653)))
                                        (___kont4442344424_ _L29505_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932529498_))))))
                               (_g2932329530_
                                (lambda ()
                                  (let ((_L29521_ ___stx4437644377_))
                                    (if (gx#underscore? _L29521_)
                                        (___kont4442144422_ _L29521_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932429514_))))))
                               (___match4470344704_
                                (lambda (_e2945829537_
                                         _hd2945929541_
                                         _tl2946029544_)
                                  (let ((_L29547_ _hd2945929541_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29547_))
                                        (___kont4441944420_ _L29547_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932329530_))))))
                               (___match4463744638_
                                (lambda (_e2942629703_
                                         _hd2942729707_
                                         _tl2942829710_
                                         _e2942929713_
                                         _hd2943029717_
                                         _tl2943129720_)
                                  (let ((_L29723_ _hd2943029717_)
                                        (_L29725_ _hd2942729707_))
                                    (if (and (gx#identifier? _L29725_)
                                             (or (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4441144412_ _L29723_ _L29725_)
                                        (if (gx#identifier? _hd2942729707_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49654_|
                                                 _hd2942729707_)
                                                (___kont4441344414_
                                                 _hd2943029717_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49655_|
                                                     _hd2942729707_)
                                                    (___kont4441544416_
                                                     _hd2943029717_)
                                                    (___match4470344704_
                                                     _e2942629703_
                                                     _hd2942729707_
                                                     _tl2942829710_)))
                                            (___match4470344704_
                                             _e2942629703_
                                             _hd2942729707_
                                             _tl2942829710_))))))
                               (___match4462344624_
                                (lambda (_e2942129753_
                                         _hd2942229757_
                                         _tl2942329760_)
                                  (let ((_L29763_ _tl2942329760_)
                                        (_L29765_ _hd2942229757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29765_))
                                        (___kont4440944410_ _L29763_ _L29765_)
                                        (if (gx#stx-pair? _tl2942329760_)
                                            (let ((_e2942929713_
                                                   (gx#syntax-e
                                                    _tl2942329760_)))
                                              (let ((_tl2943129720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2942929713_)))
                                                    (_hd2943029717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2942929713_))))
                                                (if (gx#stx-null?
                                                     _tl2943129720_)
                                                    (___match4463744638_
                                                     _e2942129753_
                                                     _hd2942229757_
                                                     _tl2942329760_
                                                     _e2942929713_
                                                     _hd2943029717_
                                                     _tl2943129720_)
                                                    (if (gx#identifier?
                                                         _hd2942229757_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49654_|
                                                             _hd2942229757_)
                                                            (___match4470344704_
                                                             _e2942129753_
                                                             _hd2942229757_
                                                             _tl2942329760_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49655_|
                         _hd2942229757_)
                        (___match4470344704_
                         _e2942129753_
                         _hd2942229757_
                         _tl2942329760_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49656_|
                             _hd2942229757_)
                            (if (gx#stx-pair? _tl2943129720_)
                                (let ((_e2945429589_
                                       (gx#syntax-e _tl2943129720_)))
                                  (let ((_tl2945629596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2945429589_)))
                                        (_hd2945529593_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2945429589_))))
                                    (if (gx#stx-null? _tl2945629596_)
                                        (___kont4441744418_
                                         _hd2945529593_
                                         _hd2943029717_)
                                        (___match4470344704_
                                         _e2942129753_
                                         _hd2942229757_
                                         _tl2942329760_))))
                                (___match4470344704_
                                 _e2942129753_
                                 _hd2942229757_
                                 _tl2942329760_))
                            (___match4470344704_
                             _e2942129753_
                             _hd2942229757_
                             _tl2942329760_))))
                (___match4470344704_
                 _e2942129753_
                 _hd2942229757_
                 _tl2942329760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4470344704_
                                             _e2942129753_
                                             _hd2942229757_
                                             _tl2942329760_))))))
                               (___match4461744618_
                                (lambda (_e2941629783_
                                         _hd2941729787_
                                         _tl2941829790_)
                                  (let ((_L29793_ _tl2941829790_)
                                        (_L29795_ _hd2941729787_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29795_
                                           gerbil/core$<MOP>$<MOP:2>#!class-type-struct?))
                                        (___kont4440744408_ _L29793_ _L29795_)
                                        (___match4462344624_
                                         _e2941629783_
                                         _hd2941729787_
                                         _tl2941829790_)))))
                               (___match4461144612_
                                (lambda (_e2940429813_
                                         ___splice4440544406_
                                         _target2940529817_
                                         _tl2940729820_)
                                  (letrec ((_loop2940829823_
                                            (lambda (_hd2940629827_
                                                     _body2941229830_)
                                              (if (gx#stx-pair? _hd2940629827_)
                                                  (let ((_e2940929833_
                                                         (gx#syntax-e
                                                          _hd2940629827_)))
                                                    (let ((_lp-tl2941129840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2940929833_)))
                                                          (_lp-hd2941029837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2940929833_))))
                                                      (let ((__tmp49657
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2941029837_ _body2941229830_))))
                (declare (not safe))
                (_loop2940829823_ _lp-tl2941129840_ __tmp49657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2941329843_
                                                         (reverse _body2941229830_)))
                                                    (___kont4440344404_
                                                     _body2941329843_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2940829823_
                                       _target2940529817_
                                       '())))))
                               (_g2931529869_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4437644377_)
                                      (let ((_e2940429813_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4437644377_))))
                                        (if (gx#stx-pair/null? _e2940429813_)
                                            (let ((___splice4440544406_
                                                   (gx#syntax-split-splice
                                                    _e2940429813_
                                                    '0)))
                                              (let ((_tl2940729820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4440544406_
                                                        '1)))
                                                    (_target2940529817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4440544406_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2940729820_)
                                                    (___match4461144612_
                                                     _e2940429813_
                                                     ___splice4440544406_
                                                     _target2940529817_
                                                     _tl2940729820_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2932329530_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2932329530_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2932329530_)))))
                               (_g2931129986_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4437644377_)
                                      (let ((_e2938729972_
                                             (unbox (gx#syntax-e
                                                     ___stx4437644377_))))
                                        (___kont4439544396_ _e2938729972_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2931529869_)))))
                               (___match4446544466_
                                (lambda (_e2934230211_
                                         _hd2934330215_
                                         _tl2934430218_)
                                  (let ((_L30221_ _tl2934430218_))
                                    (if (gx#stx-list? _L30221_)
                                        (___kont4438344384_ _L30221_)
                                        (___match4461744618_
                                         _e2934230211_
                                         _hd2934330215_
                                         _tl2934430218_)))))
                               (___match4445544456_
                                (lambda (_e2933830296_
                                         _hd2933930300_
                                         _tl2934030303_)
                                  (let ((_L30306_ _tl2934030303_))
                                    (if (gx#stx-list? _L30306_)
                                        (___kont4438144382_ _L30306_)
                                        (___match4461744618_
                                         _e2933830296_
                                         _hd2933930300_
                                         _tl2934030303_))))))
                          (if (gx#stx-pair? ___stx4437644377_)
                              (let ((_e2933130381_
                                     (gx#syntax-e ___stx4437644377_)))
                                (let ((_tl2933330388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2933130381_)))
                                      (_hd2933230385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2933130381_))))
                                  (if (gx#identifier? _hd2933230385_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g49658_|
                                           _hd2933230385_)
                                          (if (gx#stx-pair? _tl2933330388_)
                                              (let ((_e2933430391_
                                                     (gx#syntax-e
                                                      _tl2933330388_)))
                                                (let ((_tl2933630398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2933430391_)))
                                                      (_hd2933530395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2933430391_))))
                                                  (___kont4437944380_
                                                   _tl2933630398_
                                                   _hd2933530395_)))
                                              (___match4461744618_
                                               _e2933130381_
                                               _hd2933230385_
                                               _tl2933330388_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49659_|
                                               _hd2933230385_)
                                              (___match4445544456_
                                               _e2933130381_
                                               _hd2933230385_
                                               _tl2933330388_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49660_|
                                                   _hd2933230385_)
                                                  (___match4446544466_
                                                   _e2933130381_
                                                   _hd2933230385_
                                                   _tl2933330388_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49661_|
                                                       _hd2933230385_)
                                                      (if (gx#stx-pair?
                                                           _tl2933330388_)
                                                          (let ((_e2934930181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2933330388_)))
                    (let ((_tl2935130188_
                           (let () (declare (not safe)) (##cdr _e2934930181_)))
                          (_hd2935030185_
                           (let ()
                             (declare (not safe))
                             (##car _e2934930181_))))
                      (if (gx#stx-null? _tl2935130188_)
                          (___kont4438544386_ _hd2935030185_)
                          (___match4461744618_
                           _e2933130381_
                           _hd2933230385_
                           _tl2933330388_))))
                  (___match4461744618_
                   _e2933130381_
                   _hd2933230385_
                   _tl2933330388_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49662_|
                   _hd2933230385_)
                  (if (gx#stx-pair? _tl2933330388_)
                      (let ((_e2935730127_ (gx#syntax-e _tl2933330388_)))
                        (let ((_tl2935930134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2935730127_)))
                              (_hd2935830131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2935730127_))))
                          (if (gx#stx-pair? _tl2935930134_)
                              (let ((_e2936030137_
                                     (gx#syntax-e _tl2935930134_)))
                                (let ((_tl2936230144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2936030137_)))
                                      (_hd2936130141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2936030137_))))
                                  (if (gx#stx-null? _tl2936230144_)
                                      (___kont4438744388_
                                       _hd2936130141_
                                       _hd2935830131_)
                                      (___match4461744618_
                                       _e2933130381_
                                       _hd2933230385_
                                       _tl2933330388_))))
                              (___match4461744618_
                               _e2933130381_
                               _hd2933230385_
                               _tl2933330388_))))
                      (___match4461744618_
                       _e2933130381_
                       _hd2933230385_
                       _tl2933330388_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49663_|
                       _hd2933230385_)
                      (if (gx#stx-pair? _tl2933330388_)
                          (let ((_e2936930071_ (gx#syntax-e _tl2933330388_)))
                            (let ((_tl2937130078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2936930071_)))
                                  (_hd2937030075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2936930071_))))
                              (if (gx#stx-pair? _tl2937130078_)
                                  (let ((_e2937230081_
                                         (gx#syntax-e _tl2937130078_)))
                                    (let ((_tl2937430088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2937230081_)))
                                          (_hd2937330085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2937230081_))))
                                      (___kont4438944390_
                                       _tl2937430088_
                                       _hd2937330085_
                                       _hd2937030075_)))
                                  (___match4461744618_
                                   _e2933130381_
                                   _hd2933230385_
                                   _tl2933330388_))))
                          (___match4461744618_
                           _e2933130381_
                           _hd2933230385_
                           _tl2933330388_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49664_|
                           _hd2933230385_)
                          (___kont4439144392_ _tl2933330388_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49665_|
                               _hd2933230385_)
                              (if (gx#stx-pair? _tl2933330388_)
                                  (let ((_e2938330003_
                                         (gx#syntax-e _tl2933330388_)))
                                    (let ((_tl2938530010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2938330003_)))
                                          (_hd2938430007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2938330003_))))
                                      (if (gx#stx-null? _tl2938530010_)
                                          (___kont4439344394_ _hd2938430007_)
                                          (___match4461744618_
                                           _e2933130381_
                                           _hd2933230385_
                                           _tl2933330388_))))
                                  (___match4461744618_
                                   _e2933130381_
                                   _hd2933230385_
                                   _tl2933330388_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49666_|
                                   _hd2933230385_)
                                  (if (gx#stx-pair? _tl2933330388_)
                                      (let ((_e2939229942_
                                             (gx#syntax-e _tl2933330388_)))
                                        (let ((_tl2939429949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2939229942_)))
                                              (_hd2939329946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2939229942_))))
                                          (if (gx#stx-null? _tl2939429949_)
                                              (___kont4439744398_
                                               _hd2939329946_)
                                              (___kont4439944400_
                                               _tl2933330388_))))
                                      (___kont4439944400_ _tl2933330388_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49667_|
                                       _hd2933230385_)
                                      (___kont4440144402_ _tl2933330388_)
                                      (___match4461744618_
                                       _e2933130381_
                                       _hd2933230385_
                                       _tl2933330388_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4461744618_
                                       _e2933130381_
                                       _hd2933230385_
                                       _tl2933330388_))))
                              (let ()
                                (declare (not safe))
                                (_g2931129986_))))))))
                 (_parse-list28950_
                  (lambda (_body29130_)
                    (let* ((___stx4470644707_ _body29130_)
                           (_g2913629165_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4470644707_))))
                      (let ((___kont4470944710_
                             (lambda (_L29283_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29283_))))
                            (___kont4471144712_
                             (lambda (_L29235_ _L29237_ _L29238_)
                               (let ((__tmp49668
                                      (let ((__tmp49671
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29238_)))
                                            (__tmp49669
                                             (let ((__tmp49670
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29235_))))
                                               (declare (not safe))
                                               (cons __tmp49670 '()))))
                                        (declare (not safe))
                                        (cons __tmp49671 __tmp49669))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49668))))
                            (___kont4471344714_
                             (lambda (_L29193_ _L29195_)
                               (let ((__tmp49672
                                      (let ((__tmp49675
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29195_)))
                                            (__tmp49673
                                             (let ((__tmp49674
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29193_))))
                                               (declare (not safe))
                                               (cons __tmp49674 '()))))
                                        (declare (not safe))
                                        (cons __tmp49675 __tmp49673))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49672))))
                            (___kont4471544716_
                             (lambda ()
                               (if (gx#stx-null? _body29130_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49676
                                              (gx#stx-pair? _body29130_)))
                                         (declare (not safe))
                                         (not __tmp49676))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128948_ _body29130_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28955_ _body29130_)))))))
                        (let* ((___match4475544756_
                                (lambda (_e2915729183_
                                         _hd2915829187_
                                         _tl2915929190_)
                                  (let ((_L29193_ _tl2915929190_)
                                        (_L29195_ _hd2915829187_))
                                    (if (let ((__tmp49677
                                               (gx#ellipsis? _L29195_)))
                                          (declare (not safe))
                                          (not __tmp49677))
                                        (___kont4471344714_ _L29193_ _L29195_)
                                        (___kont4471544716_)))))
                               (___match4474944750_
                                (lambda (_e2914929215_
                                         _hd2915029219_
                                         _tl2915129222_
                                         _e2915229225_
                                         _hd2915329229_
                                         _tl2915429232_)
                                  (let ((_L29235_ _tl2915429232_)
                                        (_L29237_ _hd2915329229_)
                                        (_L29238_ _hd2915029219_))
                                    (if (gx#ellipsis? _L29237_)
                                        (___kont4471144712_
                                         _L29235_
                                         _L29237_
                                         _L29238_)
                                        (___match4475544756_
                                         _e2914929215_
                                         _hd2915029219_
                                         _tl2915129222_))))))
                          (if (gx#stx-pair? ___stx4470644707_)
                              (let ((_e2913929259_
                                     (gx#syntax-e ___stx4470644707_)))
                                (let ((_tl2914129266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2913929259_)))
                                      (_hd2914029263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2913929259_))))
                                  (if (gx#stx-datum? _hd2914029263_)
                                      (let ((_e2914229269_
                                             (gx#stx-e _hd2914029263_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2914229269_ '::))
                                            (if (gx#stx-pair? _tl2914129266_)
                                                (let ((_e2914329273_
                                                       (gx#syntax-e
                                                        _tl2914129266_)))
                                                  (let ((_tl2914529280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2914329273_)))
                                                        (_hd2914429277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2914329273_))))
                                                    (if (gx#stx-null?
                                                         _tl2914529280_)
                                                        (___kont4470944710_
                                                         _hd2914429277_)
                                                        (___match4474944750_
                                                         _e2913929259_
                                                         _hd2914029263_
                                                         _tl2914129266_
                                                         _e2914329273_
                                                         _hd2914429277_
                                                         _tl2914529280_))))
                                                (___match4475544756_
                                                 _e2913929259_
                                                 _hd2914029263_
                                                 _tl2914129266_))
                                            (if (gx#stx-pair? _tl2914129266_)
                                                (let ((_e2915229225_
                                                       (gx#syntax-e
                                                        _tl2914129266_)))
                                                  (let ((_tl2915429232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2915229225_)))
                                                        (_hd2915329229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2915229225_))))
                                                    (___match4474944750_
                                                     _e2913929259_
                                                     _hd2914029263_
                                                     _tl2914129266_
                                                     _e2915229225_
                                                     _hd2915329229_
                                                     _tl2915429232_)))
                                                (___match4475544756_
                                                 _e2913929259_
                                                 _hd2914029263_
                                                 _tl2914129266_))))
                                      (if (gx#stx-pair? _tl2914129266_)
                                          (let ((_e2915229225_
                                                 (gx#syntax-e _tl2914129266_)))
                                            (let ((_tl2915429232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2915229225_)))
                                                  (_hd2915329229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2915229225_))))
                                              (___match4474944750_
                                               _e2913929259_
                                               _hd2914029263_
                                               _tl2914129266_
                                               _e2915229225_
                                               _hd2915329229_
                                               _tl2915429232_)))
                                          (___match4475544756_
                                           _e2913929259_
                                           _hd2914029263_
                                           _tl2914129266_)))))
                              (___kont4471544716_)))))))
                 (_parse-vector28951_
                  (lambda (_body29127_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28952_ _body29127_))
                        (let ((__tmp49678
                               (let ((__tmp49679
                                      (gx#stx-map _parse128948_ _body29127_)))
                                 (declare (not safe))
                                 (cons __tmp49679 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49678))
                        (let ((__tmp49680
                               (let ((__tmp49681
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28950_ _body29127_))))
                                 (declare (not safe))
                                 (cons __tmp49681 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49680)))))
                 (_simple-vector?28952_
                  (lambda (_body29064_)
                    (let* ((___stx4475844759_ _body29064_)
                           (_g2906829080_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4475844759_))))
                      (let ((___kont4476144762_
                             (lambda (_L29108_ _L29110_)
                               (if (let ((__tmp49682 (gx#ellipsis? _L29110_)))
                                     (declare (not safe))
                                     (not __tmp49682))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28952_ _L29108_))
                                   '#f)))
                            (___kont4476344764_
                             (lambda () (gx#stx-null? _body29064_))))
                        (if (gx#stx-pair? ___stx4475844759_)
                            (let ((_e2907229098_
                                   (gx#syntax-e ___stx4475844759_)))
                              (let ((_tl2907429105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2907229098_)))
                                    (_hd2907329102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2907229098_))))
                                (___kont4476144762_
                                 _tl2907429105_
                                 _hd2907329102_)))
                            (___kont4476344764_))))))
                 (_parse-class-body28953_
                  (lambda (_body28973_)
                    (let _recur28976_ ((_rest28979_ _body28973_))
                      (let* ((___stx4477444775_ _rest28979_)
                             (_g2898328999_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4477444775_))))
                        (let ((___kont4477744778_
                               (lambda (_L29037_ _L29039_ _L29040_)
                                 (let ((__tmp49683
                                        (let ((__tmp49685
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128948_ _L29039_)))
                                              (__tmp49684
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28976_ _L29037_))))
                                          (declare (not safe))
                                          (cons __tmp49685 __tmp49684))))
                                   (declare (not safe))
                                   (cons _L29040_ __tmp49683))))
                              (___kont4477944780_
                               (lambda ()
                                 (if (gx#stx-null? _rest28979_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28955_ _rest28979_))))))
                          (let ((___match4479344794_
                                 (lambda (_e2898829017_
                                          _hd2898929021_
                                          _tl2899029024_
                                          _e2899129027_
                                          _hd2899229031_
                                          _tl2899329034_)
                                   (let ((_L29037_ _tl2899329034_)
                                         (_L29039_ _hd2899229031_)
                                         (_L29040_ _hd2898929021_))
                                     (if (gx#stx-keyword? _L29040_)
                                         (___kont4477744778_
                                          _L29037_
                                          _L29039_
                                          _L29040_)
                                         (___kont4477944780_))))))
                            (if (gx#stx-pair? ___stx4477444775_)
                                (let ((_e2898829017_
                                       (gx#syntax-e ___stx4477444775_)))
                                  (let ((_tl2899029024_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2898829017_)))
                                        (_hd2898929021_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2898829017_))))
                                    (if (gx#stx-pair? _tl2899029024_)
                                        (let ((_e2899129027_
                                               (gx#syntax-e _tl2899029024_)))
                                          (let ((_tl2899329034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2899129027_)))
                                                (_hd2899229031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2899129027_))))
                                            (___match4479344794_
                                             _e2898829017_
                                             _hd2898929021_
                                             _tl2899029024_
                                             _e2899129027_
                                             _hd2899229031_
                                             _tl2899329034_)))
                                        (___kont4477944780_))))
                                (___kont4477944780_))))))))
                 (_parse-qq28954_
                  (lambda (_hd28960_)
                    (let ((_g2896228969_
                           (lambda (_g2896328965_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2896328965_))))
                      (declare (not safe))
                      (_g2896228969_ _hd28960_))))
                 (_parse-error28955_
                  (lambda (_hd28957_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx28946_
                               (let ((__tmp49686
                                      (let ((__tmp49687
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28957_ '()))))
                                        (declare (not safe))
                                        (cons _stx28944_ __tmp49687))))
                                 (declare (not safe))
                                 (cons _match-stx28946_ __tmp49686))
                               (let ((__tmp49688
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28957_ '()))))
                                 (declare (not safe))
                                 (cons _stx28944_ __tmp49688)))))))
          (let () (declare (not safe)) (_parse128948_ _stx28944_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30628_)
        (let ((_match-stx30631_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30628_
           _match-stx30631_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49690_
        (let ((_g49689_ (let () (declare (not safe)) (##length _g49690_))))
          (cond ((let () (declare (not safe)) (##fx= _g49689_ 1))
                 (apply (lambda (_stx30628_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30628_)))
                        _g49690_))
                ((let () (declare (not safe)) (##fx= _g49689_ 2))
                 (apply (lambda (_stx30634_ _match-stx30636_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30634_
                             _match-stx30636_)))
                        _g49690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49690_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28928_)
        (call-with-current-continuation
         (lambda (_E28932_)
           (with-exception-handler
            (let ((_E!28935_ (current-exception-handler)))
              (lambda (_e28938_)
                (if (syntax-error? _e28938_)
                    (_E28932_ '#f)
                    (_E!28935_ _e28938_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28928_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27663_)
        (letrec ((_loop27666_
                  (lambda (_ptree27953_ _vars27955_ _K27956_)
                    (let* ((___stx4489244893_ _ptree27953_)
                           (_g2796928079_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4489244893_))))
                      (let ((___kont4489544896_
                             (lambda (_L28709_)
                               (let* ((___stx4481244813_ _L28709_)
                                      (_g2872628760_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4481244813_))))
                                 (let ((___kont4481544816_
                                        (lambda (_L28909_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28909_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4481744818_
                                        (lambda (_L28878_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28878_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4481944820_
                                        (lambda (_L28826_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28826_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4482144822_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4481244813_)
                                       (let ((_e2872928899_
                                              (gx#syntax-e ___stx4481244813_)))
                                         (let ((_tl2873128906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2872928899_)))
                                               (_hd2873028903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2872928899_))))
                                           (if (gx#stx-null? _tl2873128906_)
                                               (___kont4481544816_
                                                _hd2873028903_)
                                               (if (gx#stx-datum?
                                                    _hd2873028903_)
                                                   (let ((_e2873628864_
                                                          (gx#stx-e
                                                           _hd2873028903_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2873628864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2873128906_)
                     (let ((_e2873728868_ (gx#syntax-e _tl2873128906_)))
                       (let ((_tl2873928875_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2873728868_)))
                             (_hd2873828872_
                              (let ()
                                (declare (not safe))
                                (##car _e2873728868_))))
                         (if (gx#stx-null? _tl2873928875_)
                             (___kont4481744818_ _hd2873828872_)
                             (___kont4482144822_))))
                     (___kont4482144822_))
                 (if (let () (declare (not safe)) (equal? _e2873628864_ '::))
                     (if (gx#stx-pair? _tl2873128906_)
                         (let ((_e2874528792_ (gx#syntax-e _tl2873128906_)))
                           (let ((_tl2874728799_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2874528792_)))
                                 (_hd2874628796_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2874528792_))))
                             (if (gx#stx-pair? _tl2874728799_)
                                 (let ((_e2874828802_
                                        (gx#syntax-e _tl2874728799_)))
                                   (let ((_tl2875028809_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2874828802_)))
                                         (_hd2874928806_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2874828802_))))
                                     (if (gx#stx-datum? _hd2874928806_)
                                         (let ((_e2875128812_
                                                (gx#stx-e _hd2874928806_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2875128812_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2875028809_)
                                                   (let ((_e2875228816_
                                                          (gx#syntax-e
                                                           _tl2875028809_)))
                                                     (let ((_tl2875428823_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2875228816_)))
                                                           (_hd2875328820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2875228816_))))
                                                       (if (gx#stx-null?
                                                            _tl2875428823_)
                                                           (___kont4481944820_
                                                            _hd2875328820_)
                                                           (___kont4482144822_))))
                                                   (___kont4482144822_))
                                               (___kont4482144822_)))
                                         (___kont4482144822_))))
                                 (___kont4482144822_))))
                         (___kont4482144822_))
                     (___kont4482144822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4482144822_)))))
                                       (___kont4482144822_))))))
                            (___kont4489744898_
                             (lambda (_L28596_ _L28598_)
                               (let* ((___stx4479644797_ _L28596_)
                                      (_g2861428626_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4479644797_))))
                                 (let ((___kont4479944800_
                                        (lambda (_L28654_ _L28656_)
                                          (let ((__tmp49691
                                                 (lambda (_g2866828670_)
                                                   (let ((__tmp49692
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27666_
                                                      __tmp49692
                                                      _g2866828670_
                                                      _K27956_)))))
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28656_
                                             _vars27955_
                                             __tmp49691))))
                                       (___kont4480144802_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4479644797_)
                                       (let ((_e2861828644_
                                              (gx#syntax-e ___stx4479644797_)))
                                         (let ((_tl2862028651_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2861828644_)))
                                               (_hd2861928648_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2861828644_))))
                                           (___kont4479944800_
                                            _tl2862028651_
                                            _hd2861928648_)))
                                       (___kont4480144802_))))))
                            (___kont4489944900_
                             (lambda (_L28565_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28565_ _vars27955_ _K27956_))))
                            (___kont4490144902_
                             (lambda (_L28511_ _L28513_)
                               (let ((__tmp49693
                                      (lambda (_g2852828530_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28511_
                                           _g2852828530_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28513_
                                  _vars27955_
                                  __tmp49693))))
                            (___kont4490344904_
                             (lambda (_L28447_ _L28449_)
                               (let ((__tmp49694
                                      (lambda (_g2846428466_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28447_
                                           _g2846428466_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28449_
                                  _vars27955_
                                  __tmp49694))))
                            (___kont4490544906_
                             (lambda (_L28392_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28392_ _vars27955_ _K27956_))))
                            (___kont4490744908_
                             (lambda (_L28342_ _L28344_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28342_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4490944910_
                             (lambda (_L28299_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28299_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4491144912_
                             (lambda (_L28242_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27670_
                                  _L28242_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4491344914_
                             (lambda (_L28183_ _L28185_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28183_ _vars27955_ _K27956_))))
                            (___kont4491544916_
                             (lambda (_L28121_)
                               (if (let ((__tmp49695
                                          (lambda (_g2813628138_)
                                            (gx#bound-identifier=?
                                             _g2813628138_
                                             _L28121_))))
                                     (declare (not safe))
                                     (find __tmp49695 _vars27955_))
                                   (_K27956_ _vars27955_)
                                   (_K27956_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28121_ _vars27955_))))))
                            (___kont4491744918_
                             (lambda () (_K27956_ _vars27955_))))
                        (let* ((___match4504945050_
                                (lambda (_e2802628322_
                                         _hd2802728326_
                                         _tl2802828329_
                                         _e2802928332_
                                         _hd2803028336_
                                         _tl2803128339_)
                                  (let ((_L28342_ _hd2803028336_)
                                        (_L28344_ _hd2802728326_))
                                    (if (or (gx#stx-eq? 'values: _L28344_)
                                            (gx#stx-eq? 'vector: _L28344_))
                                        (___kont4490744908_ _L28342_ _L28344_)
                                        (if (gx#stx-datum? _hd2802728326_)
                                            (let ((_e2803628275_
                                                   (gx#stx-e _hd2802728326_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2803628275_
                                                            'struct:))
                                                  (___kont4491744918_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2803628275_
                                                                'class:))
                                                      (___kont4491744918_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2803628275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4491744918_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2803628275_ 'var:))
                      (___kont4491544916_ _hd2803028336_)
                      (___kont4491744918_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4491744918_))))))
                               (___match4494344944_
                                (lambda (_e2798128586_
                                         _hd2798228590_
                                         _tl2798328593_)
                                  (let ((_L28596_ _tl2798328593_)
                                        (_L28598_ _hd2798228590_))
                                    (if (or (gx#stx-eq? 'and: _L28598_)
                                            (gx#stx-eq? 'or: _L28598_))
                                        (___kont4489744898_ _L28596_ _L28598_)
                                        (if (gx#stx-datum? _hd2798228590_)
                                            (let ((_e2798828551_
                                                   (gx#stx-e _hd2798228590_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2798828551_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2798328593_)
                                                      (let ((_e2798928555_
                                                             (gx#syntax-e
                                                              _tl2798328593_)))
                                                        (let ((_tl2799128562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2798928555_)))
                      (_hd2799028559_
                       (let () (declare (not safe)) (##car _e2798928555_))))
                  (if (gx#stx-null? _tl2799128562_)
                      (___kont4489944900_ _hd2799028559_)
                      (___kont4491744918_))))
              (___kont4491744918_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2798828551_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2798328593_)
                                                          (let ((_e2799828491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2798328593_)))
                    (let ((_tl2800028498_
                           (let () (declare (not safe)) (##cdr _e2799828491_)))
                          (_hd2799928495_
                           (let ()
                             (declare (not safe))
                             (##car _e2799828491_))))
                      (if (gx#stx-pair? _tl2800028498_)
                          (let ((_e2800128501_ (gx#syntax-e _tl2800028498_)))
                            (let ((_tl2800328508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2800128501_)))
                                  (_hd2800228505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2800128501_))))
                              (if (gx#stx-null? _tl2800328508_)
                                  (___kont4490144902_
                                   _hd2800228505_
                                   _hd2799928495_)
                                  (___kont4491744918_))))
                          (if (gx#stx-null? _tl2800028498_)
                              (___match4504945050_
                               _e2798128586_
                               _hd2798228590_
                               _tl2798328593_
                               _e2799828491_
                               _hd2799928495_
                               _tl2800028498_)
                              (___kont4491744918_)))))
                  (___kont4491744918_))
              (if (let () (declare (not safe)) (equal? _e2798828551_ 'splice:))
                  (if (gx#stx-pair? _tl2798328593_)
                      (let ((_e2801028427_ (gx#syntax-e _tl2798328593_)))
                        (let ((_tl2801228434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2801028427_)))
                              (_hd2801128431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2801028427_))))
                          (if (gx#stx-pair? _tl2801228434_)
                              (let ((_e2801328437_
                                     (gx#syntax-e _tl2801228434_)))
                                (let ((_tl2801528444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2801328437_)))
                                      (_hd2801428441_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2801328437_))))
                                  (if (gx#stx-null? _tl2801528444_)
                                      (___kont4490344904_
                                       _hd2801428441_
                                       _hd2801128431_)
                                      (___kont4491744918_))))
                              (if (gx#stx-null? _tl2801228434_)
                                  (___match4504945050_
                                   _e2798128586_
                                   _hd2798228590_
                                   _tl2798328593_
                                   _e2801028427_
                                   _hd2801128431_
                                   _tl2801228434_)
                                  (___kont4491744918_)))))
                      (___kont4491744918_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2798828551_ 'box:))
                      (if (gx#stx-pair? _tl2798328593_)
                          (let ((_e2802128382_ (gx#syntax-e _tl2798328593_)))
                            (let ((_tl2802328389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2802128382_)))
                                  (_hd2802228386_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2802128382_))))
                              (if (gx#stx-null? _tl2802328389_)
                                  (___kont4490544906_ _hd2802228386_)
                                  (___kont4491744918_))))
                          (___kont4491744918_))
                      (if (gx#stx-pair? _tl2798328593_)
                          (let ((_e2802928332_ (gx#syntax-e _tl2798328593_)))
                            (let ((_tl2803128339_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2802928332_)))
                                  (_hd2803028336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2802928332_))))
                              (if (gx#stx-null? _tl2803128339_)
                                  (___match4504945050_
                                   _e2798128586_
                                   _hd2798228590_
                                   _tl2798328593_
                                   _e2802928332_
                                   _hd2803028336_
                                   _tl2803128339_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2798828551_ 'struct:))
                                      (if (gx#stx-pair? _tl2803128339_)
                                          (let ((_e2804028289_
                                                 (gx#syntax-e _tl2803128339_)))
                                            (let ((_tl2804228296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2804028289_)))
                                                  (_hd2804128293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2804028289_))))
                                              (if (gx#stx-null? _tl2804228296_)
                                                  (___kont4490944910_
                                                   _hd2804128293_)
                                                  (___kont4491744918_))))
                                          (___kont4491744918_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2798828551_ 'class:))
                                          (if (gx#stx-pair? _tl2803128339_)
                                              (let ((_e2805128232_
                                                     (gx#syntax-e
                                                      _tl2803128339_)))
                                                (let ((_tl2805328239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2805128232_)))
                                                      (_hd2805228236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2805128232_))))
                                                  (if (gx#stx-null?
                                                       _tl2805328239_)
                                                      (___kont4491144912_
                                                       _hd2805228236_)
                                                      (___kont4491744918_))))
                                              (___kont4491744918_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2798828551_ 'apply:))
                                              (if (gx#stx-pair? _tl2803128339_)
                                                  (let ((_e2806328173_
                                                         (gx#syntax-e
                                                          _tl2803128339_)))
                                                    (let ((_tl2806528180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2806328173_)))
                                                          (_hd2806428177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2806328173_))))
                                                      (if (gx#stx-null?
                                                           _tl2806528180_)
                                                          (___kont4491344914_
                                                           _hd2806428177_
                                                           _hd2803028336_)
                                                          (___kont4491744918_))))
                                                  (___kont4491744918_))
                                              (___kont4491744918_)))))))
                          (___kont4491744918_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2798328593_)
                                                (let ((_e2802928332_
                                                       (gx#syntax-e
                                                        _tl2798328593_)))
                                                  (let ((_tl2803128339_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2802928332_)))
                                                        (_hd2803028336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2802928332_))))
                                                    (if (gx#stx-null?
                                                         _tl2803128339_)
                                                        (___match4504945050_
                                                         _e2798128586_
                                                         _hd2798228590_
                                                         _tl2798328593_
                                                         _e2802928332_
                                                         _hd2803028336_
                                                         _tl2803128339_)
                                                        (___kont4491744918_))))
                                                (___kont4491744918_))))))))
                          (if (gx#stx-pair? ___stx4489244893_)
                              (let ((_e2797228685_
                                     (gx#syntax-e ___stx4489244893_)))
                                (let ((_tl2797428692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2797228685_)))
                                      (_hd2797328689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2797228685_))))
                                  (if (gx#stx-datum? _hd2797328689_)
                                      (let ((_e2797528695_
                                             (gx#stx-e _hd2797328689_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2797528695_ '?:))
                                            (if (gx#stx-pair? _tl2797428692_)
                                                (let ((_e2797628699_
                                                       (gx#syntax-e
                                                        _tl2797428692_)))
                                                  (let ((_tl2797828706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2797628699_)))
                                                        (_hd2797728703_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2797628699_))))
                                                    (___kont4489544896_
                                                     _tl2797828706_)))
                                                (___match4494344944_
                                                 _e2797228685_
                                                 _hd2797328689_
                                                 _tl2797428692_))
                                            (___match4494344944_
                                             _e2797228685_
                                             _hd2797328689_
                                             _tl2797428692_)))
                                      (___match4494344944_
                                       _e2797228685_
                                       _hd2797328689_
                                       _tl2797428692_))))
                              (___kont4491744918_)))))))
                 (_loop-vector27668_
                  (lambda (_body27829_ _vars27831_ _K27832_)
                    (let* ((___stx4515045151_ _body27829_)
                           (_g2783527858_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4515045151_))))
                      (let ((___kont4515345154_
                             (lambda (_L27935_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27669_
                                  _L27935_
                                  _vars27831_
                                  _K27832_))))
                            (___kont4515545156_
                             (lambda (_L27889_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27889_
                                  _vars27831_
                                  _K27832_)))))
                        (if (gx#stx-pair? ___stx4515045151_)
                            (let ((_e2783827911_
                                   (gx#syntax-e ___stx4515045151_)))
                              (let ((_tl2784027918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2783827911_)))
                                    (_hd2783927915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2783827911_))))
                                (if (gx#stx-datum? _hd2783927915_)
                                    (let ((_e2784127921_
                                           (gx#stx-e _hd2783927915_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2784127921_ 'simple:))
                                          (if (gx#stx-pair? _tl2784027918_)
                                              (let ((_e2784227925_
                                                     (gx#syntax-e
                                                      _tl2784027918_)))
                                                (let ((_tl2784427932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2784227925_)))
                                                      (_hd2784327929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2784227925_))))
                                                  (if (gx#stx-null?
                                                       _tl2784427932_)
                                                      (___kont4515345154_
                                                       _hd2784327929_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2783527858_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2784127921_ 'list:))
                                              (if (gx#stx-pair? _tl2784027918_)
                                                  (let ((_e2785027879_
                                                         (gx#syntax-e
                                                          _tl2784027918_)))
                                                    (let ((_tl2785227886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2785027879_)))
                                                          (_hd2785127883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2785027879_))))
                                                      (if (gx#stx-null?
                                                           _tl2785227886_)
                                                          (___kont4515545156_
                                                           _hd2785127883_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2783527858_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2783527858_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2783527858_)))))
                            (let () (declare (not safe)) (_g2783527858_)))))))
                 (_loop-list27669_
                  (lambda (_rest27759_ _vars27761_ _K27762_)
                    (let* ((___stx4520045201_ _rest27759_)
                           (_g2776527777_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4520045201_))))
                      (let ((___kont4520345204_
                             (lambda (_L27805_ _L27807_)
                               (let ((__tmp49696
                                      (lambda (_g2781927821_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27669_
                                           _L27805_
                                           _g2781927821_
                                           _K27762_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27807_
                                  _vars27761_
                                  __tmp49696))))
                            (___kont4520545206_
                             (lambda () (_K27762_ _vars27761_))))
                        (if (gx#stx-pair? ___stx4520045201_)
                            (let ((_e2776927795_
                                   (gx#syntax-e ___stx4520045201_)))
                              (let ((_tl2777127802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2776927795_)))
                                    (_hd2777027799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2776927795_))))
                                (___kont4520345204_
                                 _tl2777127802_
                                 _hd2777027799_)))
                            (___kont4520545206_))))))
                 (_loop-class-list27670_
                  (lambda (_rest27672_ _vars27674_ _K27675_)
                    (let* ((___stx4521645217_ _rest27672_)
                           (_g2767827693_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4521645217_))))
                      (let ((___kont4521945220_
                             (lambda (_L27731_ _L27733_)
                               (let ((__tmp49697
                                      (lambda (_g2774927751_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27670_
                                           _L27731_
                                           _g2774927751_
                                           _K27675_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27733_
                                  _vars27674_
                                  __tmp49697))))
                            (___kont4522145222_
                             (lambda () (_K27675_ _vars27674_))))
                        (if (gx#stx-pair? ___stx4521645217_)
                            (let ((_e2768227711_
                                   (gx#syntax-e ___stx4521645217_)))
                              (let ((_tl2768427718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2768227711_)))
                                    (_hd2768327715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2768227711_))))
                                (if (gx#stx-pair? _tl2768427718_)
                                    (let ((_e2768527721_
                                           (gx#syntax-e _tl2768427718_)))
                                      (let ((_tl2768727728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2768527721_)))
                                            (_hd2768627725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2768527721_))))
                                        (___kont4521945220_
                                         _tl2768727728_
                                         _hd2768627725_)))
                                    (___kont4522145222_))))
                            (___kont4522145222_)))))))
          (let ()
            (declare (not safe))
            (_loop27666_ _ptree27663_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24624_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)
        (letrec ((_generate124631_
                  (lambda (_tgt25876_ _ptree25878_ _K25879_ _E25880_)
                    (let* ((_g2588225890_
                            (lambda (_g2588325886_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2588325886_)))
                           (_g2588127659_
                            (lambda (_g2588325894_)
                              ((lambda (_L25897_)
                                 (let ()
                                   (let* ((___stx4545245453_ _ptree25878_)
                                          (_g2592426066_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4545245453_))))
                                     (let ((___kont4545545456_
                                            (lambda (_L27374_ _L27376_)
                                              (let* ((___stx4537045371_
                                                      _L27374_)
                                                     (_g2739327428_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4537045371_))))
                                                (let ((___kont4537345374_
                                                       (lambda ()
                                                         (let ((__tmp49698
                                                                (let ((__tmp49701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49704 (gx#datum->syntax '#f '?))
                                     (__tmp49702
                                      (let ((__tmp49703
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp49703))))
                                 (declare (not safe))
                                 (cons __tmp49704 __tmp49702)))
                              (__tmp49699
                               (let ((__tmp49700
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons _K25879_ __tmp49700))))
                          (declare (not safe))
                          (cons __tmp49701 __tmp49699))))
                   (declare (not safe))
                   (cons 'if __tmp49698))))
              (___kont4537545376_
               (lambda (_L27629_)
                 (let ((__tmp49705
                        (let ((__tmp49709
                               (let ((__tmp49712 (gx#datum->syntax '#f '?))
                                     (__tmp49710
                                      (let ((__tmp49711
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp49711))))
                                 (declare (not safe))
                                 (cons __tmp49712 __tmp49710)))
                              (__tmp49706
                               (let ((__tmp49708
                                      (let ()
                                        (declare (not safe))
                                        (_generate124631_
                                         _tgt25876_
                                         _L27629_
                                         _K25879_
                                         _E25880_)))
                                     (__tmp49707
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49708 __tmp49707))))
                          (declare (not safe))
                          (cons __tmp49709 __tmp49706))))
                   (declare (not safe))
                   (cons 'if __tmp49705))))
              (___kont4537745378_
               (lambda (_L27567_)
                 (let* ((_g2758127589_
                         (lambda (_g2758227585_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2758227585_)))
                        (_g2758027608_
                         (lambda (_g2758227593_)
                           ((lambda (_L27596_)
                              (let ()
                                (let ((__tmp49713
                                       (let ((__tmp49720
                                              (let ((__tmp49721
                                                     (let ((__tmp49722
                                                            (let ((__tmp49723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49724
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L27376_ __tmp49724))))
                      (declare (not safe))
                      (cons __tmp49723 '()))))
               (declare (not safe))
               (cons _L27596_ __tmp49722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49721 '())))
                                             (__tmp49714
                                              (let ((__tmp49715
                                                     (let ((__tmp49716
                                                            (let ((__tmp49717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49719
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27596_
                                     _L27567_
                                     _K25879_
                                     _E25880_)))
                                 (__tmp49718
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp49719 __tmp49718))))
                      (declare (not safe))
                      (cons _L27596_ __tmp49717))))
               (declare (not safe))
               (cons 'if __tmp49716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49715 '()))))
                                         (declare (not safe))
                                         (cons __tmp49720 __tmp49714))))
                                  (declare (not safe))
                                  (cons 'let __tmp49713))))
                            _g2758227593_)))
                        (__tmp49725 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2758027608_ __tmp49725))))
              (___kont4537945380_
               (lambda (_L27483_ _L27485_)
                 (let* ((_g2750527513_
                         (lambda (_g2750627509_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2750627509_)))
                        (_g2750427532_
                         (lambda (_g2750627517_)
                           ((lambda (_L27520_)
                              (let ()
                                (let ((__tmp49726
                                       (let ((__tmp49738
                                              (let ((__tmp49741
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp49739
                                                     (let ((__tmp49740
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27376_ __tmp49740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49741 __tmp49739)))
                                             (__tmp49727
                                              (let ((__tmp49729
                                                     (let ((__tmp49730
                                                            (let ((__tmp49733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49734
                                  (let ((__tmp49735
                                         (let ((__tmp49736
                                                (let ((__tmp49737
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25897_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27485_ __tmp49737))))
                                           (declare (not safe))
                                           (cons __tmp49736 '()))))
                                    (declare (not safe))
                                    (cons _L27520_ __tmp49735))))
                             (declare (not safe))
                             (cons __tmp49734 '())))
                          (__tmp49731
                           (let ((__tmp49732
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27520_
                                     _L27483_
                                     _K25879_
                                     _E25880_))))
                             (declare (not safe))
                             (cons __tmp49732 '()))))
                      (declare (not safe))
                      (cons __tmp49733 __tmp49731))))
               (declare (not safe))
               (cons 'let __tmp49730)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49728
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49729 __tmp49728))))
                                         (declare (not safe))
                                         (cons __tmp49738 __tmp49727))))
                                  (declare (not safe))
                                  (cons 'if __tmp49726))))
                            _g2750627517_)))
                        (__tmp49742 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2750427532_ __tmp49742)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2739027640_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4537045371_)
                                                               (let ((_e2739627619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4537045371_)))
                         (let ((_tl2739827626_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2739627619_)))
                               (_hd2739727623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2739627619_))))
                           (if (gx#stx-null? _tl2739827626_)
                               (___kont4537545376_ _hd2739727623_)
                               (if (gx#stx-datum? _hd2739727623_)
                                   (let ((_e2740327553_
                                          (gx#stx-e _hd2739727623_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2740327553_ '=>:))
                                         (if (gx#stx-pair? _tl2739827626_)
                                             (let ((_e2740427557_
                                                    (gx#syntax-e
                                                     _tl2739827626_)))
                                               (let ((_tl2740627564_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2740427557_)))
                                                     (_hd2740527561_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2740427557_))))
                                                 (if (gx#stx-null?
                                                      _tl2740627564_)
                                                     (___kont4537745378_
                                                      _hd2740527561_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2739327428_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2740327553_ '::))
                                             (if (gx#stx-pair? _tl2739827626_)
                                                 (let ((_e2741327449_
                                                        (gx#syntax-e
                                                         _tl2739827626_)))
                                                   (let ((_tl2741527456_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2741327449_)))
                                                         (_hd2741427453_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2741327449_))))
                                                     (if (gx#stx-pair?
                                                          _tl2741527456_)
                                                         (let ((_e2741627459_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2741527456_)))
                   (let ((_tl2741827466_
                          (let () (declare (not safe)) (##cdr _e2741627459_)))
                         (_hd2741727463_
                          (let () (declare (not safe)) (##car _e2741627459_))))
                     (if (gx#stx-datum? _hd2741727463_)
                         (let ((_e2741927469_ (gx#stx-e _hd2741727463_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2741927469_ '=>:))
                               (if (gx#stx-pair? _tl2741827466_)
                                   (let ((_e2742027473_
                                          (gx#syntax-e _tl2741827466_)))
                                     (let ((_tl2742227480_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2742027473_)))
                                           (_hd2742127477_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2742027473_))))
                                       (if (gx#stx-null? _tl2742227480_)
                                           (___kont4537945380_
                                            _hd2742127477_
                                            _hd2741427453_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_)))
                               (let () (declare (not safe)) (_g2739327428_))))
                         (let () (declare (not safe)) (_g2739327428_)))))
                 (let () (declare (not safe)) (_g2739327428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2739327428_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_))))))
                       (let () (declare (not safe)) (_g2739327428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4537045371_)
                                                        (___kont4537345374_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2739027640_))))))))
                                           (___kont4545745458_
                                            (lambda (_L27271_)
                                              (let* ((___stx4535445355_
                                                      _L27271_)
                                                     (_g2728427296_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4535445355_))))
                                                (let ((___kont4535745358_
                                                       (lambda (_L27324_
                                                                _L27326_)
                                                         (let ((__tmp49743
                                                                (let ((__tmp49744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27324_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp49744
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27326_
                    __tmp49743
                    _E25880_))))
              (___kont4535945360_ (lambda () _K25879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4535445355_)
                                                      (let ((_e2728827314_
                                                             (gx#syntax-e
                                                              ___stx4535445355_)))
                                                        (let ((_tl2729027321_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2728827314_)))
                      (_hd2728927318_
                       (let () (declare (not safe)) (##car _e2728827314_))))
                  (___kont4535745358_ _tl2729027321_ _hd2728927318_)))
              (___kont4535945360_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4545945460_
                                            (lambda (_L27178_)
                                              (let* ((___stx4533845339_
                                                      _L27178_)
                                                     (_g2719127203_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4533845339_))))
                                                (let ((___kont4534145342_
                                                       (lambda (_L27231_
                                                                _L27233_)
                                                         (let ((__tmp49745
                                                                (let ((__tmp49746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27231_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp49746
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27233_
                    _K25879_
                    __tmp49745))))
              (___kont4534345344_ (lambda () _E25880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4533845339_)
                                                      (let ((_e2719527221_
                                                             (gx#syntax-e
                                                              ___stx4533845339_)))
                                                        (let ((_tl2719727228_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2719527221_)))
                      (_hd2719627225_
                       (let () (declare (not safe)) (##car _e2719527221_))))
                  (___kont4534145342_ _tl2719727228_ _hd2719627225_)))
              (___kont4534345344_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4546145462_
                                            (lambda (_L27143_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124631_
                                                 _tgt25876_
                                                 _L27143_
                                                 _E25880_
                                                 _K25879_))))
                                           (___kont4546345464_
                                            (lambda (_L27025_ _L27027_)
                                              (let* ((_g2704427059_
                                                      (lambda (_g2704527055_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2704527055_)))
                                                     (_g2704327108_
                                                      (lambda (_g2704527063_)
                                                        (if (gx#stx-pair?
                                                             _g2704527063_)
                                                            (let ((_e2704827066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2704527063_)))
                      (let ((_hd2704927070_
                             (let ()
                               (declare (not safe))
                               (##car _e2704827066_)))
                            (_tl2705027073_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2704827066_))))
                        (if (gx#stx-pair? _tl2705027073_)
                            (let ((_e2705127076_ (gx#syntax-e _tl2705027073_)))
                              (let ((_hd2705227080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2705127076_)))
                                    (_tl2705327083_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2705127076_))))
                                (if (gx#stx-null? _tl2705327083_)
                                    ((lambda (_L27086_ _L27088_)
                                       (let ()
                                         (let ((__tmp49747
                                                (let ((__tmp49785
                                                       (let ((__tmp49787
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp49786
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25897_ '()))))
                 (declare (not safe))
                 (cons __tmp49787 __tmp49786)))
              (__tmp49748
               (let ((__tmp49750
                      (let ((_hd-pat27104_ (gx#stx-e _L27027_))
                            (_tl-pat27106_ (gx#stx-e _L27025_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat27104_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat27106_ '(any:))))
                            _K25879_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat27106_ '(any:)))
                                (let ((__tmp49751
                                       (let ((__tmp49754
                                              (let ((__tmp49755
                                                     (let ((__tmp49756
                                                            (let ((__tmp49757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49759 (gx#datum->syntax '#f '##car))
                                 (__tmp49758
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons __tmp49759 __tmp49758))))
                      (declare (not safe))
                      (cons __tmp49757 '()))))
               (declare (not safe))
               (cons _L27088_ __tmp49756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49755 '())))
                                             (__tmp49752
                                              (let ((__tmp49753
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124631_
                                                        _L27088_
                                                        _L27027_
                                                        _K25879_
                                                        _E25880_))))
                                                (declare (not safe))
                                                (cons __tmp49753 '()))))
                                         (declare (not safe))
                                         (cons __tmp49754 __tmp49752))))
                                  (declare (not safe))
                                  (cons 'let __tmp49751))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27104_ '(any:)))
                                    (let ((__tmp49760
                                           (let ((__tmp49763
                                                  (let ((__tmp49764
                                                         (let ((__tmp49765
                                                                (let ((__tmp49766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49768 (gx#datum->syntax '#f '##cdr))
                                     (__tmp49767
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49768 __tmp49767))))
                          (declare (not safe))
                          (cons __tmp49766 '()))))
                   (declare (not safe))
                   (cons _L27086_ __tmp49765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49764 '())))
                                                 (__tmp49761
                                                  (let ((__tmp49762
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124631_
                                                            _L27086_
                                                            _L27025_
                                                            _K25879_
                                                            _E25880_))))
                                                    (declare (not safe))
                                                    (cons __tmp49762 '()))))
                                             (declare (not safe))
                                             (cons __tmp49763 __tmp49761))))
                                      (declare (not safe))
                                      (cons 'let __tmp49760))
                                    (let ((__tmp49769
                                           (let ((__tmp49773
                                                  (let ((__tmp49780
                                                         (let ((__tmp49781
                                                                (let ((__tmp49782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49784 (gx#datum->syntax '#f '##car))
                                     (__tmp49783
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49784 __tmp49783))))
                          (declare (not safe))
                          (cons __tmp49782 '()))))
                   (declare (not safe))
                   (cons _L27088_ __tmp49781)))
                (__tmp49774
                 (let ((__tmp49775
                        (let ((__tmp49776
                               (let ((__tmp49777
                                      (let ((__tmp49779
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp49778
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49779 __tmp49778))))
                                 (declare (not safe))
                                 (cons __tmp49777 '()))))
                          (declare (not safe))
                          (cons _L27086_ __tmp49776))))
                   (declare (not safe))
                   (cons __tmp49775 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49780
                                                          __tmp49774)))
                                                 (__tmp49770
                                                  (let ((__tmp49771
                                                         (let ((__tmp49772
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124631_
                           _L27086_
                           _L27025_
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_ _L27088_ _L27027_ __tmp49772 _E25880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49771 '()))))
                                             (declare (not safe))
                                             (cons __tmp49773 __tmp49770))))
                                      (declare (not safe))
                                      (cons 'let __tmp49769)))))))
                     (__tmp49749
                      (let () (declare (not safe)) (cons _E25880_ '()))))
                 (declare (not safe))
                 (cons __tmp49750 __tmp49749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49785
                                                        __tmp49748))))
                                           (declare (not safe))
                                           (cons 'if __tmp49747))))
                                     _hd2705227080_
                                     _hd2704927070_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2704427059_ _g2704527063_)))))
                            (let ()
                              (declare (not safe))
                              (_g2704427059_ _g2704527063_)))))
                    (let ()
                      (declare (not safe))
                      (_g2704427059_ _g2704527063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49788
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2704327108_ __tmp49788))))
                                           (___kont4546545466_
                                            (lambda ()
                                              (let ((__tmp49789
                                                     (let ((__tmp49792
                                                            (let ((__tmp49794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp49793
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp49794 __tmp49793)))
                   (__tmp49790
                    (let ((__tmp49791
                           (let () (declare (not safe)) (cons _E25880_ '()))))
                      (declare (not safe))
                      (cons _K25879_ __tmp49791))))
               (declare (not safe))
               (cons __tmp49792 __tmp49790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp49789))))
                                           (___kont4546745468_
                                            (lambda (_L26941_ _L26943_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24633_
                                                 _tgt25876_
                                                 _L26943_
                                                 _L26941_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4546945470_
                                            (lambda (_L26855_)
                                              (let* ((_g2686926877_
                                                      (lambda (_g2687026873_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2687026873_)))
                                                     (_g2686826896_
                                                      (lambda (_g2687026881_)
                                                        ((lambda (_L26884_)
                                                           (let ()
                                                             (let ((__tmp49795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49808
                                   (let ((__tmp49810
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp49809
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25897_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49810 __tmp49809)))
                                  (__tmp49796
                                   (let ((__tmp49798
                                          (let ((__tmp49799
                                                 (let ((__tmp49802
                                                        (let ((__tmp49803
                                                               (let ((__tmp49804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49805
                                     (let ((__tmp49807
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp49806
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25897_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49807 __tmp49806))))
                                (declare (not safe))
                                (cons __tmp49805 '()))))
                         (declare (not safe))
                         (cons _L26884_ __tmp49804))))
                  (declare (not safe))
                  (cons __tmp49803 '())))
               (__tmp49800
                (let ((__tmp49801
                       (let ()
                         (declare (not safe))
                         (_generate124631_
                          _L26884_
                          _L26855_
                          _K25879_
                          _E25880_))))
                  (declare (not safe))
                  (cons __tmp49801 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49802
                                                         __tmp49800))))
                                            (declare (not safe))
                                            (cons 'let __tmp49799)))
                                         (__tmp49797
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49798 __tmp49797))))
                              (declare (not safe))
                              (cons __tmp49808 __tmp49796))))
                       (declare (not safe))
                       (cons 'if __tmp49795))))
                 _g2687026881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49811
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2686826896_ __tmp49811))))
                                           (___kont4547145472_
                                            (lambda (_L26660_)
                                              (let* ((___stx4528845289_
                                                      _L26660_)
                                                     (_g2667526698_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4528845289_))))
                                                (let ((___kont4529145292_
                                                       (lambda (_L26775_)
                                                         (let* ((_g2678926797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2679026793_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2679026793_)))
                        (_g2678826816_
                         (lambda (_g2679026801_)
                           ((lambda (_L26804_)
                              (let ()
                                (let ((__tmp49812
                                       (let ((__tmp49816
                                              (let ((__tmp49822
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp49817
                                                     (let ((__tmp49819
                                                            (let ((__tmp49821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp49820
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp49821 __tmp49820)))
                   (__tmp49818
                    (let () (declare (not safe)) (cons _L26804_ '()))))
               (declare (not safe))
               (cons __tmp49819 __tmp49818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49822 __tmp49817)))
                                             (__tmp49813
                                              (let ((__tmp49815
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24634_
                                                        _tgt25876_
                                                        _L26775_
                                                        '0
                                                        _K25879_
                                                        _E25880_)))
                                                    (__tmp49814
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49815 __tmp49814))))
                                         (declare (not safe))
                                         (cons __tmp49816 __tmp49813))))
                                  (declare (not safe))
                                  (cons 'if __tmp49812))))
                            _g2679026801_)))
                        (__tmp49823 (gx#stx-length _L26775_)))
                   (declare (not safe))
                   (_g2678826816_ __tmp49823))))
              (___kont4529345294_
               (lambda (_L26729_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24635_
                    _tgt25876_
                    _L26729_
                    'values->list
                    _K25879_
                    _E25880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4528845289_)
                                                      (let ((_e2667826751_
                                                             (gx#syntax-e
                                                              ___stx4528845289_)))
                                                        (let ((_tl2668026758_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2667826751_)))
                      (_hd2667926755_
                       (let () (declare (not safe)) (##car _e2667826751_))))
                  (if (gx#stx-datum? _hd2667926755_)
                      (let ((_e2668126761_ (gx#stx-e _hd2667926755_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2668126761_ 'simple:))
                            (if (gx#stx-pair? _tl2668026758_)
                                (let ((_e2668226765_
                                       (gx#syntax-e _tl2668026758_)))
                                  (let ((_tl2668426772_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2668226765_)))
                                        (_hd2668326769_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2668226765_))))
                                    (if (gx#stx-null? _tl2668426772_)
                                        (___kont4529145292_ _hd2668326769_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2667526698_)))))
                                (let () (declare (not safe)) (_g2667526698_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2668126761_ 'list:))
                                (if (gx#stx-pair? _tl2668026758_)
                                    (let ((_e2669026719_
                                           (gx#syntax-e _tl2668026758_)))
                                      (let ((_tl2669226726_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2669026719_)))
                                            (_hd2669126723_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2669026719_))))
                                        (if (gx#stx-null? _tl2669226726_)
                                            (___kont4529345294_ _hd2669126723_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2667526698_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2667526698_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2667526698_)))))
                      (let () (declare (not safe)) (_g2667526698_)))))
              (let () (declare (not safe)) (_g2667526698_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4547345474_
                                            (lambda (_L26465_)
                                              (let* ((___stx4523845239_
                                                      _L26465_)
                                                     (_g2648026503_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4523845239_))))
                                                (let ((___kont4524145242_
                                                       (lambda (_L26580_)
                                                         (let* ((_g2659426602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2659526598_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2659526598_)))
                        (_g2659326621_
                         (lambda (_g2659526606_)
                           ((lambda (_L26609_)
                              (let ()
                                (let ((__tmp49824
                                       (let ((__tmp49839
                                              (let ((__tmp49841
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp49840
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25897_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49841 __tmp49840)))
                                             (__tmp49825
                                              (let ((__tmp49827
                                                     (let ((__tmp49828
                                                            (let ((__tmp49832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49838 (gx#datum->syntax '#f '##fx=))
                                 (__tmp49833
                                  (let ((__tmp49835
                                         (let ((__tmp49837
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp49836
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25897_ '()))))
                                           (declare (not safe))
                                           (cons __tmp49837 __tmp49836)))
                                        (__tmp49834
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26609_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49835 __tmp49834))))
                             (declare (not safe))
                             (cons __tmp49838 __tmp49833)))
                          (__tmp49829
                           (let ((__tmp49831
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24634_
                                     _tgt25876_
                                     _L26580_
                                     '0
                                     _K25879_
                                     _E25880_)))
                                 (__tmp49830
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp49831 __tmp49830))))
                      (declare (not safe))
                      (cons __tmp49832 __tmp49829))))
               (declare (not safe))
               (cons 'if __tmp49828)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49826
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49827 __tmp49826))))
                                         (declare (not safe))
                                         (cons __tmp49839 __tmp49825))))
                                  (declare (not safe))
                                  (cons 'if __tmp49824))))
                            _g2659526606_)))
                        (__tmp49842 (gx#stx-length _L26580_)))
                   (declare (not safe))
                   (_g2659326621_ __tmp49842))))
              (___kont4524345244_
               (lambda (_L26534_)
                 (let ((__tmp49843
                        (let ((__tmp49847
                               (let ((__tmp49849
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp49848
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49849 __tmp49848)))
                              (__tmp49844
                               (let ((__tmp49846
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24635_
                                         _tgt25876_
                                         _L26534_
                                         'vector->list
                                         _K25879_
                                         _E25880_)))
                                     (__tmp49845
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49846 __tmp49845))))
                          (declare (not safe))
                          (cons __tmp49847 __tmp49844))))
                   (declare (not safe))
                   (cons 'if __tmp49843)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4523845239_)
                                                      (let ((_e2648326556_
                                                             (gx#syntax-e
                                                              ___stx4523845239_)))
                                                        (let ((_tl2648526563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2648326556_)))
                      (_hd2648426560_
                       (let () (declare (not safe)) (##car _e2648326556_))))
                  (if (gx#stx-datum? _hd2648426560_)
                      (let ((_e2648626566_ (gx#stx-e _hd2648426560_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2648626566_ 'simple:))
                            (if (gx#stx-pair? _tl2648526563_)
                                (let ((_e2648726570_
                                       (gx#syntax-e _tl2648526563_)))
                                  (let ((_tl2648926577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2648726570_)))
                                        (_hd2648826574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2648726570_))))
                                    (if (gx#stx-null? _tl2648926577_)
                                        (___kont4524145242_ _hd2648826574_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2648026503_)))))
                                (let () (declare (not safe)) (_g2648026503_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2648626566_ 'list:))
                                (if (gx#stx-pair? _tl2648526563_)
                                    (let ((_e2649526524_
                                           (gx#syntax-e _tl2648526563_)))
                                      (let ((_tl2649726531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2649526524_)))
                                            (_hd2649626528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2649526524_))))
                                        (if (gx#stx-null? _tl2649726531_)
                                            (___kont4524345244_ _hd2649626528_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2648026503_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2648026503_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2648026503_)))))
                      (let () (declare (not safe)) (_g2648026503_)))))
              (let () (declare (not safe)) (_g2648026503_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4547545476_
                                            (lambda (_L26416_ _L26418_)
                                              (let ((__tmp49850
                                                     (gx#stx-e _L26418_)))
                                                (declare (not safe))
                                                (_generate-struct24636_
                                                 __tmp49850
                                                 _tgt25876_
                                                 _L26416_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4547745478_
                                            (lambda (_L26357_ _L26359_)
                                              (let ((__tmp49851
                                                     (gx#stx-e _L26359_)))
                                                (declare (not safe))
                                                (_generate-class24639_
                                                 __tmp49851
                                                 _tgt25876_
                                                 _L26357_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4547945480_
                                            (lambda (_L26260_)
                                              (let* ((_g2627426282_
                                                      (lambda (_g2627526278_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2627526278_)))
                                                     (_g2627326301_
                                                      (lambda (_g2627526286_)
                                                        ((lambda (_L26289_)
                                                           (let ()
                                                             (let ((__tmp49852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49855
                                   (let ((__tmp49856
                                          (let ((__tmp49857
                                                 (let ((__tmp49858
                                                        (let ((__tmp49860
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49859
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26260_ '()))))
                  (declare (not safe))
                  (cons __tmp49860 __tmp49859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49858 '()))))
                                            (declare (not safe))
                                            (cons _L25897_ __tmp49857))))
                                     (declare (not safe))
                                     (cons _L26289_ __tmp49856)))
                                  (__tmp49853
                                   (let ((__tmp49854
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons _K25879_ __tmp49854))))
                              (declare (not safe))
                              (cons __tmp49855 __tmp49853))))
                       (declare (not safe))
                       (cons 'if __tmp49852))))
                 _g2627526286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49861
                                                      (let ((_e26305_
                                                             (gx#stx-e
                                                              _L26260_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26305_))
                        (keyword? _e26305_)
                        (let () (declare (not safe)) (immediate? _e26305_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26305_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2627326301_ __tmp49861))))
                                           (___kont4548145482_
                                            (lambda (_L26180_ _L26182_)
                                              (let* ((_g2619826206_
                                                      (lambda (_g2619926202_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2619926202_)))
                                                     (_g2619726225_
                                                      (lambda (_g2619926210_)
                                                        ((lambda (_L26213_)
                                                           (let ()
                                                             (let ((__tmp49862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49865
                                   (let ((__tmp49866
                                          (let ((__tmp49867
                                                 (let ((__tmp49868
                                                        (let ((__tmp49869
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25897_ '()))))
                  (declare (not safe))
                  (cons _L26182_ __tmp49869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49868 '()))))
                                            (declare (not safe))
                                            (cons _L26213_ __tmp49867))))
                                     (declare (not safe))
                                     (cons __tmp49866 '())))
                                  (__tmp49863
                                   (let ((__tmp49864
                                          (let ()
                                            (declare (not safe))
                                            (_generate124631_
                                             _L26213_
                                             _L26180_
                                             _K25879_
                                             _E25880_))))
                                     (declare (not safe))
                                     (cons __tmp49864 '()))))
                              (declare (not safe))
                              (cons __tmp49865 __tmp49863))))
                       (declare (not safe))
                       (cons 'let __tmp49862))))
                 _g2619926210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49870
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2619726225_ __tmp49870))))
                                           (___kont4548345484_
                                            (lambda (_L26122_)
                                              (let ((__tmp49871
                                                     (let ((__tmp49873
                                                            (let ((__tmp49874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49875
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L26122_ __tmp49875))))
                      (declare (not safe))
                      (cons __tmp49874 '())))
                   (__tmp49872
                    (let () (declare (not safe)) (cons _K25879_ '()))))
               (declare (not safe))
               (cons __tmp49873 __tmp49872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp49871))))
                                           (___kont4548545486_
                                            (lambda () _K25879_)))
                                       (if (gx#stx-pair? ___stx4545245453_)
                                           (let ((_e2592827350_
                                                  (gx#syntax-e
                                                   ___stx4545245453_)))
                                             (let ((_tl2593027357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2592827350_)))
                                                   (_hd2592927354_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2592827350_))))
                                               (if (gx#stx-datum?
                                                    _hd2592927354_)
                                                   (let ((_e2593127360_
                                                          (gx#stx-e
                                                           _hd2592927354_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2593027357_)
                     (let ((_e2593227364_ (gx#syntax-e _tl2593027357_)))
                       (let ((_tl2593427371_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2593227364_)))
                             (_hd2593327368_
                              (let ()
                                (declare (not safe))
                                (##car _e2593227364_))))
                         (___kont4545545456_ _tl2593427371_ _hd2593327368_)))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let () (declare (not safe)) (equal? _e2593127360_ 'and:))
                     (___kont4545745458_ _tl2593027357_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'or:))
                         (___kont4545945460_ _tl2593027357_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'not:))
                             (if (gx#stx-pair? _tl2593027357_)
                                 (let ((_e2595027133_
                                        (gx#syntax-e _tl2593027357_)))
                                   (let ((_tl2595227140_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2595027133_)))
                                         (_hd2595127137_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2595027133_))))
                                     (if (gx#stx-null? _tl2595227140_)
                                         (___kont4546145462_ _hd2595127137_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'cons:))
                                 (if (gx#stx-pair? _tl2593027357_)
                                     (let ((_e2595927005_
                                            (gx#syntax-e _tl2593027357_)))
                                       (let ((_tl2596127012_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2595927005_)))
                                             (_hd2596027009_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2595927005_))))
                                         (if (gx#stx-pair? _tl2596127012_)
                                             (let ((_e2596227015_
                                                    (gx#syntax-e
                                                     _tl2596127012_)))
                                               (let ((_tl2596427022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2596227015_)))
                                                     (_hd2596327019_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2596227015_))))
                                                 (if (gx#stx-null?
                                                      _tl2596427022_)
                                                     (___kont4546345464_
                                                      _hd2596327019_
                                                      _hd2596027009_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'null:))
                                     (if (gx#stx-null? _tl2593027357_)
                                         (___kont4546545466_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2593127360_ 'splice:))
                                         (if (gx#stx-pair? _tl2593027357_)
                                             (let ((_e2597526921_
                                                    (gx#syntax-e
                                                     _tl2593027357_)))
                                               (let ((_tl2597726928_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2597526921_)))
                                                     (_hd2597626925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2597526921_))))
                                                 (if (gx#stx-pair?
                                                      _tl2597726928_)
                                                     (let ((_e2597826931_
                                                            (gx#syntax-e
                                                             _tl2597726928_)))
                                                       (let ((_tl2598026938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2597826931_)))
                     (_hd2597926935_
                      (let () (declare (not safe)) (##car _e2597826931_))))
                 (if (gx#stx-null? _tl2598026938_)
                     (___kont4546745468_ _hd2597926935_ _hd2597626925_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2593127360_ 'box:))
                                             (if (gx#stx-pair? _tl2593027357_)
                                                 (let ((_e2598626845_
                                                        (gx#syntax-e
                                                         _tl2593027357_)))
                                                   (let ((_tl2598826852_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2598626845_)))
                                                         (_hd2598726849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2598626845_))))
                                                     (if (gx#stx-null?
                                                          _tl2598826852_)
                                                         (___kont4546945470_
                                                          _hd2598726849_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2592426066_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2593127360_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2593027357_)
                                                     (let ((_e2599426650_
                                                            (gx#syntax-e
                                                             _tl2593027357_)))
                                                       (let ((_tl2599626657_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2599426650_)))
                     (_hd2599526654_
                      (let () (declare (not safe)) (##car _e2599426650_))))
                 (if (gx#stx-null? _tl2599626657_)
                     (___kont4547145472_ _hd2599526654_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2593127360_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2593027357_)
                                                         (let ((_e2600226455_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2593027357_)))
                   (let ((_tl2600426462_
                          (let () (declare (not safe)) (##cdr _e2600226455_)))
                         (_hd2600326459_
                          (let () (declare (not safe)) (##car _e2600226455_))))
                     (if (gx#stx-null? _tl2600426462_)
                         (___kont4547345474_ _hd2600326459_)
                         (let () (declare (not safe)) (_g2592426066_)))))
                 (let () (declare (not safe)) (_g2592426066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2593027357_)
                     (let ((_e2601126396_ (gx#syntax-e _tl2593027357_)))
                       (let ((_tl2601326403_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2601126396_)))
                             (_hd2601226400_
                              (let ()
                                (declare (not safe))
                                (##car _e2601126396_))))
                         (if (gx#stx-pair? _tl2601326403_)
                             (let ((_e2601426406_
                                    (gx#syntax-e _tl2601326403_)))
                               (let ((_tl2601626413_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2601426406_)))
                                     (_hd2601526410_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2601426406_))))
                                 (if (gx#stx-null? _tl2601626413_)
                                     (___kont4547545476_
                                      _hd2601526410_
                                      _hd2601226400_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2593127360_ 'class:))
                     (if (gx#stx-pair? _tl2593027357_)
                         (let ((_e2602326337_ (gx#syntax-e _tl2593027357_)))
                           (let ((_tl2602526344_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2602326337_)))
                                 (_hd2602426341_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2602326337_))))
                             (if (gx#stx-pair? _tl2602526344_)
                                 (let ((_e2602626347_
                                        (gx#syntax-e _tl2602526344_)))
                                   (let ((_tl2602826354_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2602626347_)))
                                         (_hd2602726351_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2602626347_))))
                                     (if (gx#stx-null? _tl2602826354_)
                                         (___kont4547745478_
                                          _hd2602726351_
                                          _hd2602426341_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2592426066_)))))
                         (let () (declare (not safe)) (_g2592426066_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'datum:))
                         (if (gx#stx-pair? _tl2593027357_)
                             (let ((_e2603426250_
                                    (gx#syntax-e _tl2593027357_)))
                               (let ((_tl2603626257_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2603426250_)))
                                     (_hd2603526254_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2603426250_))))
                                 (if (gx#stx-null? _tl2603626257_)
                                     (___kont4547945480_ _hd2603526254_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'apply:))
                             (if (gx#stx-pair? _tl2593027357_)
                                 (let ((_e2604326160_
                                        (gx#syntax-e _tl2593027357_)))
                                   (let ((_tl2604526167_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2604326160_)))
                                         (_hd2604426164_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2604326160_))))
                                     (if (gx#stx-pair? _tl2604526167_)
                                         (let ((_e2604626170_
                                                (gx#syntax-e _tl2604526167_)))
                                           (let ((_tl2604826177_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2604626170_)))
                                                 (_hd2604726174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2604626170_))))
                                             (if (gx#stx-null? _tl2604826177_)
                                                 (___kont4548145482_
                                                  _hd2604726174_
                                                  _hd2604426164_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'var:))
                                 (if (gx#stx-pair? _tl2593027357_)
                                     (let ((_e2605426112_
                                            (gx#syntax-e _tl2593027357_)))
                                       (let ((_tl2605626119_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2605426112_)))
                                             (_hd2605526116_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2605426112_))))
                                         (if (gx#stx-null? _tl2605626119_)
                                             (___kont4548345484_
                                              _hd2605526116_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'any:))
                                     (if (gx#stx-null? _tl2593027357_)
                                         (___kont4548545486_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2592426066_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2592426066_)))))))
                               _g2588325894_))))
                      (declare (not safe))
                      (_g2588127659_ _tgt25876_))))
                 (_generate-splice24633_
                  (lambda (_tgt25248_ _hd25250_ _rest25251_ _K25252_ _E25253_)
                    (let* ((_g2525525272_
                            (lambda (_g2525625268_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2525625268_)))
                           (_g2525425872_
                            (lambda (_g2525625276_)
                              (if (gx#stx-pair/null? _g2525625276_)
                                  (let ((_g49876_
                                         (gx#syntax-split-splice
                                          _g2525625276_
                                          '0)))
                                    (begin
                                      (let ((_g49877_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49876_)
                                                   (##vector-length _g49876_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49877_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49877_)))
                                      (let ((_target2525825279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49876_ 0)))
                                            (_tl2526025282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49876_ 1))))
                                        (if (gx#stx-null? _tl2526025282_)
                                            (letrec ((_loop2526125285_
                                                      (lambda (_hd2525925289_
                                                               _var2526525292_)
                                                        (if (gx#stx-pair?
                                                             _hd2525925289_)
                                                            (let ((_e2526225295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2525925289_)))
                      (let ((_lp-hd2526325299_
                             (let ()
                               (declare (not safe))
                               (##car _e2526225295_)))
                            (_lp-tl2526425302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2526225295_))))
                        (let ((__tmp49878
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2526325299_ _var2526525292_))))
                          (declare (not safe))
                          (_loop2526125285_ _lp-tl2526425302_ __tmp49878))))
                    (let ((_var2526625305_ (reverse _var2526525292_)))
                      ((lambda (_L25309_)
                         (let ()
                           (let* ((_g2532525342_
                                   (lambda (_g2532625338_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2532625338_)))
                                  (_g2532425860_
                                   (lambda (_g2532625346_)
                                     (if (gx#stx-pair/null? _g2532625346_)
                                         (let ((_g49879_
                                                (gx#syntax-split-splice
                                                 _g2532625346_
                                                 '0)))
                                           (begin
                                             (let ((_g49880_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g49879_)
                                                          (##vector-length
                                                           _g49879_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g49880_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g49880_)))
                                             (let ((_target2532825349_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49879_
                                                       0)))
                                                   (_tl2533025352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49879_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2533025352_)
                                                   (letrec ((_loop2533125355_
                                                             (lambda (_hd2532925359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2533525362_)
                       (if (gx#stx-pair? _hd2532925359_)
                           (let ((_e2533225365_ (gx#syntax-e _hd2532925359_)))
                             (let ((_lp-hd2533325369_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2533225365_)))
                                   (_lp-tl2533425372_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2533225365_))))
                               (let ((__tmp49881
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2533325369_
                                              _var-r2533525362_))))
                                 (declare (not safe))
                                 (_loop2533125355_
                                  _lp-tl2533425372_
                                  __tmp49881))))
                           (let ((_var-r2533625375_
                                  (reverse _var-r2533525362_)))
                             ((lambda (_L25379_)
                                (let ()
                                  (let* ((_g2539625413_
                                          (lambda (_g2539725409_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2539725409_)))
                                         (_g2539525848_
                                          (lambda (_g2539725417_)
                                            (if (gx#stx-pair/null?
                                                 _g2539725417_)
                                                (let ((_g49882_
                                                       (gx#syntax-split-splice
                                                        _g2539725417_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49882_)
                         (##vector-length _g49882_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49883_ 2)))
                  (error "Context expects 2 values" _g49883_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2539925420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49882_
                                                              0)))
                                                          (_tl2540125423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49882_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2540125423_)
                                                          (letrec ((_loop2540225426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2540025430_ _init2540625433_)
                              (if (gx#stx-pair? _hd2540025430_)
                                  (let ((_e2540325436_
                                         (gx#syntax-e _hd2540025430_)))
                                    (let ((_lp-hd2540425440_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2540325436_)))
                                          (_lp-tl2540525443_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2540325436_))))
                                      (let ((__tmp49884
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2540425440_
                                                     _init2540625433_))))
                                        (declare (not safe))
                                        (_loop2540225426_
                                         _lp-tl2540525443_
                                         __tmp49884))))
                                  (let ((_init2540725446_
                                         (reverse _init2540625433_)))
                                    ((lambda (_L25450_)
                                       (let ()
                                         (let* ((_g2546725475_
                                                 (lambda (_g2546825471_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2546825471_)))
                                                (_g2546625844_
                                                 (lambda (_g2546825479_)
                                                   ((lambda (_L25482_)
                                                      (let ()
                                                        (let* ((_g2549525503_
                                                                (lambda (_g2549625499_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2549625499_)))
                       (_g2549425840_
                        (lambda (_g2549625507_)
                          ((lambda (_L25510_)
                             (let ()
                               (let* ((_g2552325531_
                                       (lambda (_g2552425527_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2552425527_)))
                                      (_g2552225836_
                                       (lambda (_g2552425535_)
                                         ((lambda (_L25538_)
                                            (let ()
                                              (let* ((_g2555125559_
                                                      (lambda (_g2555225555_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2555225555_)))
                                                     (_g2555025832_
                                                      (lambda (_g2555225563_)
                                                        ((lambda (_L25566_)
                                                           (let ()
                                                             (let* ((_g2557925587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2558025583_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2558025583_)))
                            (_g2557825828_
                             (lambda (_g2558025591_)
                               ((lambda (_L25594_)
                                  (let ()
                                    (let* ((_g2560725615_
                                            (lambda (_g2560825611_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2560825611_)))
                                           (_g2560625824_
                                            (lambda (_g2560825619_)
                                              ((lambda (_L25622_)
                                                 (let ()
                                                   (let* ((_g2563525643_
                                                           (lambda (_g2563625639_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2563625639_)))
                                                          (_g2563425820_
                                                           (lambda (_g2563625647_)
                                                             ((lambda (_L25650_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2566325671_
                                  (lambda (_g2566425667_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2566425667_)))
                                 (_g2566225805_
                                  (lambda (_g2566425675_)
                                    ((lambda (_L25678_)
                                       (let ()
                                         (let* ((_g2569125699_
                                                 (lambda (_g2569225695_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2569225695_)))
                                                (_g2569025793_
                                                 (lambda (_g2569225703_)
                                                   ((lambda (_L25706_)
                                                      (let ()
                                                        (let* ((_g2571925727_
                                                                (lambda (_g2572025723_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2572025723_)))
                       (_g2571825789_
                        (lambda (_g2572025731_)
                          ((lambda (_L25734_)
                             (let ()
                               (let ()
                                 (let ((__tmp49938
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp49885
                                        (let ((__tmp49891
                                               (let ((__tmp49929
                                                      (let ((__tmp49930
                                                             (let ((__tmp49931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49937 (gx#datum->syntax '#f 'lambda))
                                  (__tmp49932
                                   (let ((__tmp49934
                                          (let ((__tmp49935
                                                 (let ((__tmp49936
                                                        (lambda (_g2574825759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2574925762_)
                  (let ()
                    (declare (not safe))
                    (cons _g2574825759_ _g2574925762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp49936
                                                           '()
                                                           _L25309_))))
                                            (declare (not safe))
                                            (cons _L25622_ __tmp49935)))
                                         (__tmp49933
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25650_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49934 __tmp49933))))
                              (declare (not safe))
                              (cons __tmp49937 __tmp49932))))
                       (declare (not safe))
                       (cons __tmp49931 '()))))
                (declare (not safe))
                (cons _L25510_ __tmp49930)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49892
                                                      (let ((__tmp49919
                                                             (let ((__tmp49920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49921
                                   (let ((__tmp49928
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp49922
                                          (let ((__tmp49924
                                                 (let ((__tmp49925
                                                        (let ((__tmp49926
                                                               (let ((__tmp49927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2575025765_ _g2575125768_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575025765_ _g2575125768_)))))
                         (declare (not safe))
                         (foldr1 __tmp49927 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp49926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25594_ __tmp49925)))
                                                (__tmp49923
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25734_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49924 __tmp49923))))
                                     (declare (not safe))
                                     (cons __tmp49928 __tmp49922))))
                              (declare (not safe))
                              (cons __tmp49921 '()))))
                       (declare (not safe))
                       (cons _L25566_ __tmp49920)))
                    (__tmp49893
                     (let ((__tmp49894
                            (let ((__tmp49895
                                   (let ((__tmp49896
                                          (let ((__tmp49918
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp49897
                                                 (let ((__tmp49915
                                                        (let ((__tmp49916
                                                               (let ((__tmp49917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2575225771_ _g2575325774_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575225771_ _g2575325774_)))))
                         (declare (not safe))
                         (foldr1 __tmp49917 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp49916)))
               (__tmp49898
                (let ((__tmp49899
                       (let ((__tmp49914 (gx#datum->syntax '#f 'if))
                             (__tmp49900
                              (let ((__tmp49911
                                     (let ((__tmp49913
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp49912
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25622_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49913 __tmp49912)))
                                    (__tmp49901
                                     (let ((__tmp49903
                                            (let ((__tmp49904
                                                   (let ((__tmp49908
                                                          (let ((__tmp49910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp49909
                         (let () (declare (not safe)) (cons _L25622_ '()))))
                    (declare (not safe))
                    (cons __tmp49910 __tmp49909)))
                 (__tmp49905
                  (let ((__tmp49906
                         (let ((__tmp49907
                                (lambda (_g2575425777_ _g2575525780_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2575425777_ _g2575525780_)))))
                           (declare (not safe))
                           (foldr1 __tmp49907 '() _L25379_))))
                    (declare (not safe))
                    (cons _L25622_ __tmp49906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49908
                                                           __tmp49905))))
                                              (declare (not safe))
                                              (cons _L25566_ __tmp49904)))
                                           (__tmp49902
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25706_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49903 __tmp49902))))
                                (declare (not safe))
                                (cons __tmp49911 __tmp49901))))
                         (declare (not safe))
                         (cons __tmp49914 __tmp49900))))
                  (declare (not safe))
                  (cons __tmp49899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49915
                                                         __tmp49898))))
                                            (declare (not safe))
                                            (cons __tmp49918 __tmp49897))))
                                     (declare (not safe))
                                     (cons __tmp49896 '()))))
                              (declare (not safe))
                              (cons _L25538_ __tmp49895))))
                       (declare (not safe))
                       (cons __tmp49894 '()))))
                (declare (not safe))
                (cons __tmp49919 __tmp49893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49929 __tmp49892)))
                                              (__tmp49886
                                               (let ((__tmp49887
                                                      (let ((__tmp49888
                                                             (let ((__tmp49889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49890
                                   (lambda (_g2575625783_ _g2575725786_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2575625783_ _g2575725786_)))))
                              (declare (not safe))
                              (foldr1 __tmp49890 '() _L25450_))))
                       (declare (not safe))
                       (cons _L25482_ __tmp49889))))
                (declare (not safe))
                (cons _L25538_ __tmp49888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49887 '()))))
                                          (declare (not safe))
                                          (cons __tmp49891 __tmp49886))))
                                   (declare (not safe))
                                   (cons __tmp49938 __tmp49885)))))
                           _g2572025731_)))
                       (__tmp49939
                        (let ()
                          (declare (not safe))
                          (_generate124631_
                           _L25594_
                           _hd25250_
                           _L25678_
                           _L25706_))))
                  (declare (not safe))
                  (_g2571825789_ __tmp49939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2569225703_)))
                                                (__tmp49940
                                                 (let ((__tmp49941
                                                        (let ((__tmp49942
                                                               (let ((__tmp49943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2579625799_ _g2579725802_)
                                (let ((__tmp49944
                                       (let ((__tmp49946
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp49945
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2579625799_ '()))))
                                         (declare (not safe))
                                         (cons __tmp49946 __tmp49945))))
                                  (declare (not safe))
                                  (cons __tmp49944 _g2579725802_)))))
                         (declare (not safe))
                         (foldr1 __tmp49943 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp49942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25510_
                                                         __tmp49941))))
                                           (declare (not safe))
                                           (_g2569025793_ __tmp49940))))
                                     _g2566425675_)))
                                 (__tmp49947
                                  (let ((__tmp49948
                                         (let ((__tmp49955
                                                (let ((__tmp49957
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp49956
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25622_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49957
                                                        __tmp49956)))
                                               (__tmp49949
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25379_
                                                   _L25309_)
                                                  (let ((__tmp49950
                                                         (lambda (_g2580825812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2580925815_
                          _g2581025817_)
                   (let ((__tmp49951
                          (let ((__tmp49954 (gx#datum->syntax '#f 'cons))
                                (__tmp49952
                                 (let ((__tmp49953
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2580825812_ '()))))
                                   (declare (not safe))
                                   (cons _g2580925815_ __tmp49953))))
                            (declare (not safe))
                            (cons __tmp49954 __tmp49952))))
                     (declare (not safe))
                     (cons __tmp49951 _g2581025817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp49950
                                                            '()
                                                            _L25379_
                                                            _L25309_)))))
                                           (declare (not safe))
                                           (cons __tmp49955 __tmp49949))))
                                    (declare (not safe))
                                    (cons _L25538_ __tmp49948))))
                            (declare (not safe))
                            (_g2566225805_ __tmp49947))))
                      _g2563625647_)))
                  (__tmp49958
                   (let ()
                     (declare (not safe))
                     (_generate124631_
                      _L25622_
                      _rest25251_
                      _K25252_
                      _E25253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2563425820_
                                                      __tmp49958))))
                                               _g2560825619_)))
                                           (__tmp49959 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2560625824_ __tmp49959))))
                                _g2558025591_)))
                            (__tmp49960 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2557825828_ __tmp49960))))
                 _g2555225563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49961
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2555025832_ __tmp49961))))
                                          _g2552425535_)))
                                      (__tmp49962 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2552225836_ __tmp49962))))
                           _g2549625507_)))
                       (__tmp49963 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2549425840_ __tmp49963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2546825479_))))
                                           (declare (not safe))
                                           (_g2546625844_ _tgt25248_))))
                                     _init2540725446_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2540225426_ _target2539925420_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2539625413_ _g2539725417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2539625413_
                                                   _g2539725417_)))))
                                         (__tmp49964
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp49965
                                                   (lambda (_g2585125854_
                                                            _g2585225857_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2585125854_
                                                             _g2585225857_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49965
                                                      '()
                                                      _L25309_)))
                                           (let ((__tmp49966
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp49966 '())))))
                                    (declare (not safe))
                                    (_g2539525848_ __tmp49964))))
                              _var-r2533625375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2533125355_
                                                        _target2532825349_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2532525342_
                                                      _g2532625346_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2532525342_ _g2532625346_)))))
                                  (__tmp49967
                                   (gx#gentemps
                                    (let ((__tmp49968
                                           (lambda (_g2586325866_
                                                    _g2586425869_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2586325866_
                                                     _g2586425869_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp49968 '() _L25309_)))))
                             (declare (not safe))
                             (_g2532425860_ __tmp49967))))
                       _var2526625305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2526125285_
                                                 _target2525825279_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2525525272_
                                               _g2525625276_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2525525272_ _g2525625276_)))))
                           (__tmp49969
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25250_))))
                      (declare (not safe))
                      (_g2525425872_ __tmp49969))))
                 (_generate-simple-vector24634_
                  (lambda (_tgt25090_
                           _body25092_
                           _start25093_
                           _K25094_
                           _E25095_)
                    (let _recur25097_ ((_rest25100_ _body25092_)
                                       (_off25102_ _start25093_))
                      (let* ((___stx4581045811_ _rest25100_)
                             (_g2510525117_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4581045811_))))
                        (let ((___kont4581345814_
                               (lambda (_L25145_ _L25147_)
                                 (let* ((_g2516225181_
                                         (lambda (_g2516325177_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2516325177_)))
                                        (_g2516125240_
                                         (lambda (_g2516325185_)
                                           (if (gx#stx-pair? _g2516325185_)
                                               (let ((_e2516725188_
                                                      (gx#syntax-e
                                                       _g2516325185_)))
                                                 (let ((_hd2516825192_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2516725188_)))
                                                       (_tl2516925195_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2516725188_))))
                                                   (if (gx#stx-pair?
                                                        _tl2516925195_)
                                                       (let ((_e2517025198_
                                                              (gx#syntax-e
                                                               _tl2516925195_)))
                                                         (let ((_hd2517125202_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2517025198_)))
                       (_tl2517225205_
                        (let () (declare (not safe)) (##cdr _e2517025198_))))
                   (if (gx#stx-pair? _tl2517225205_)
                       (let ((_e2517325208_ (gx#syntax-e _tl2517225205_)))
                         (let ((_hd2517425212_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2517325208_)))
                               (_tl2517525215_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2517325208_))))
                           (if (gx#stx-null? _tl2517525215_)
                               ((lambda (_L25218_ _L25220_ _L25221_)
                                  (let ()
                                    (let ((__tmp49970
                                           (let ((__tmp49975
                                                  (let ((__tmp49976
                                                         (let ((__tmp49977
                                                                (let ((__tmp49978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49981
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp49979
                                      (let ((__tmp49980
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25218_ '()))))
                                        (declare (not safe))
                                        (cons _L25220_ __tmp49980))))
                                 (declare (not safe))
                                 (cons __tmp49981 __tmp49979))))
                          (declare (not safe))
                          (cons __tmp49978 '()))))
                   (declare (not safe))
                   (cons _L25221_ __tmp49977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49976 '())))
                                                 (__tmp49971
                                                  (let ((__tmp49972
                                                         (let ((__tmp49973
                                                                (let ((__tmp49974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25102_ '1))))
                          (declare (not safe))
                          (_recur25097_ _L25145_ __tmp49974))))
                   (declare (not safe))
                   (_generate124631_ _L25221_ _L25147_ __tmp49973 _E25095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49972 '()))))
                                             (declare (not safe))
                                             (cons __tmp49975 __tmp49971))))
                                      (declare (not safe))
                                      (cons 'let __tmp49970))))
                                _hd2517425212_
                                _hd2517125202_
                                _hd2516825192_)
                               (let ()
                                 (declare (not safe))
                                 (_g2516225181_ _g2516325185_)))))
                       (let ()
                         (declare (not safe))
                         (_g2516225181_ _g2516325185_)))))
               (let () (declare (not safe)) (_g2516225181_ _g2516325185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2516225181_
                                                  _g2516325185_)))))
                                        (__tmp49982
                                         (list (gx#genident 'e)
                                               _tgt25090_
                                               _off25102_)))
                                   (declare (not safe))
                                   (_g2516125240_ __tmp49982))))
                              (___kont4581545816_ (lambda () _K25094_)))
                          (if (gx#stx-pair? ___stx4581045811_)
                              (let ((_e2510925135_
                                     (gx#syntax-e ___stx4581045811_)))
                                (let ((_tl2511125142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2510925135_)))
                                      (_hd2511025139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2510925135_))))
                                  (___kont4581345814_
                                   _tl2511125142_
                                   _hd2511025139_)))
                              (___kont4581545816_)))))))
                 (_generate-list-vector24635_
                  (lambda (_tgt24982_
                           _body24984_
                           _->list24985_
                           _K24986_
                           _E24987_)
                    (let* ((_g2498924997_
                            (lambda (_g2499024993_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2499024993_)))
                           (_g2498825086_
                            (lambda (_g2499025001_)
                              ((lambda (_L25004_)
                                 (let ()
                                   (let* ((_g2501625024_
                                           (lambda (_g2501725020_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2501725020_)))
                                          (_g2501525082_
                                           (lambda (_g2501725028_)
                                             ((lambda (_L25031_)
                                                (let ()
                                                  (let* ((_g2504425052_
                                                          (lambda (_g2504525048_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2504525048_)))
                                                         (_g2504325074_
                                                          (lambda (_g2504525056_)
                                                            ((lambda (_L25059_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp49983
                                  (let ((__tmp49986
                                         (let ((__tmp49987
                                                (let ((__tmp49988
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25059_ '()))))
                                                  (declare (not safe))
                                                  (cons _L25004_ __tmp49988))))
                                           (declare (not safe))
                                           (cons __tmp49987 '())))
                                        (__tmp49984
                                         (let ((__tmp49985
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124631_
                                                   _L25004_
                                                   _body24984_
                                                   _K24986_
                                                   _E24987_))))
                                           (declare (not safe))
                                           (cons __tmp49985 '()))))
                                    (declare (not safe))
                                    (cons __tmp49986 __tmp49984))))
                             (declare (not safe))
                             (cons 'let __tmp49983)))))
                     _g2504525056_)))
                 (__tmp49989
                  (let ((_$e25078_ _->list24985_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e25078_))
                        (let ((__tmp49991 (gx#datum->syntax '#f 'values->list))
                              (__tmp49990
                               (let ()
                                 (declare (not safe))
                                 (cons _L25031_ '()))))
                          (declare (not safe))
                          (cons __tmp49991 __tmp49990))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e25078_))
                            (let ((__tmp49993
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp49992
                                   (let ()
                                     (declare (not safe))
                                     (cons _L25031_ '()))))
                              (declare (not safe))
                              (cons __tmp49993 __tmp49992))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e25078_))
                                (let ((__tmp49998
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp49994
                                       (let ((__tmp49995
                                              (let ((__tmp49997
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp49996
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25031_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49997 __tmp49996))))
                                         (declare (not safe))
                                         (cons __tmp49995 '()))))
                                  (declare (not safe))
                                  (cons __tmp49998 __tmp49994))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24624_
                                 _->list24985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2504325074_
                                                     __tmp49989))))
                                              _g2501725028_))))
                                     (declare (not safe))
                                     (_g2501525082_ _tgt24982_))))
                               _g2499025001_)))
                           (__tmp49999 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2498825086_ __tmp49999))))
                 (_generate-struct24636_
                  (lambda (_info24853_
                           _tgt24855_
                           _body24856_
                           _K24857_
                           _E24858_)
                    (let* ((___stx4582645827_ _body24856_)
                           (_g2486124884_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4582645827_))))
                      (let ((___kont4582945830_
                             (lambda (_L24961_)
                               (let* ((_fields24975_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24638_
                                          _info24853_)))
                                      (__tmp50000
                                       (let ((__tmp50004
                                              (let ((__tmp50006
                                                     (let ((__obj47029
                                                            _info24853_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47029
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47029
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47029
                                                            'predicate))))
                                                    (__tmp50005
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24855_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50006 __tmp50005)))
                                             (__tmp50001
                                              (let ((__tmp50003
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24637_
                                                        _info24853_
                                                        _tgt24855_
                                                        _L24961_
                                                        _K24857_
                                                        _E24858_)))
                                                    (__tmp50002
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24858_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50003 __tmp50002))))
                                         (declare (not safe))
                                         (cons __tmp50004 __tmp50001))))
                                 (declare (not safe))
                                 (cons 'if __tmp50000))))
                            (___kont4583145832_
                             (lambda (_L24915_)
                               (let ((__tmp50007
                                      (let ((__tmp50011
                                             (let ((__tmp50013
                                                    (let ((__obj47030
                                                           _info24853_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47030
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47030
                                                             '11
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47030
                                                           'predicate))))
                                                   (__tmp50012
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24855_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50013 __tmp50012)))
                                            (__tmp50008
                                             (let ((__tmp50010
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24635_
                                                       _tgt24855_
                                                       _L24915_
                                                       'struct->list
                                                       _K24857_
                                                       _E24858_)))
                                                   (__tmp50009
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24858_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50010 __tmp50009))))
                                        (declare (not safe))
                                        (cons __tmp50011 __tmp50008))))
                                 (declare (not safe))
                                 (cons 'if __tmp50007)))))
                        (if (gx#stx-pair? ___stx4582645827_)
                            (let ((_e2486424937_
                                   (gx#syntax-e ___stx4582645827_)))
                              (let ((_tl2486624944_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2486424937_)))
                                    (_hd2486524941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2486424937_))))
                                (if (gx#stx-datum? _hd2486524941_)
                                    (let ((_e2486724947_
                                           (gx#stx-e _hd2486524941_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2486724947_ 'simple:))
                                          (if (gx#stx-pair? _tl2486624944_)
                                              (let ((_e2486824951_
                                                     (gx#syntax-e
                                                      _tl2486624944_)))
                                                (let ((_tl2487024958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2486824951_)))
                                                      (_hd2486924955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2486824951_))))
                                                  (if (gx#stx-null?
                                                       _tl2487024958_)
                                                      (___kont4582945830_
                                                       _hd2486924955_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2486124884_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2486724947_ 'list:))
                                              (if (gx#stx-pair? _tl2486624944_)
                                                  (let ((_e2487624905_
                                                         (gx#syntax-e
                                                          _tl2486624944_)))
                                                    (let ((_tl2487824912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2487624905_)))
                                                          (_hd2487724909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2487624905_))))
                                                      (if (gx#stx-null?
                                                           _tl2487824912_)
                                                          (___kont4583145832_
                                                           _hd2487724909_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2486124884_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2486124884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2486124884_)))))
                            (let () (declare (not safe)) (_g2486124884_)))))))
                 (_generate-simple-struct-body24637_
                  (lambda (_info24773_
                           _tgt24775_
                           _body24776_
                           _K24777_
                           _E24778_)
                    (let _recur24780_ ((_rest24783_ _body24776_)
                                       (_fields24785_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24638_
                                           _info24773_))))
                      (let* ((___stx4587645877_ _rest24783_)
                             (_g2478824800_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4587645877_))))
                        (let ((___kont4587945880_
                               (lambda (_L24828_ _L24830_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24785_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24624_
                                      _info24773_
                                      (let ((__obj47031 _info24773_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47031
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47031
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47031
                                             'name))))
                                     (let ((_$tgt24845_ (gx#genident 'e))
                                           (_getf24847_ (car _fields24785_)))
                                       (let ((__tmp50014
                                              (let ((__tmp50019
                                                     (let ((__tmp50020
                                                            (let ((__tmp50021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50022
                                  (let ((__tmp50023
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24775_ '()))))
                                    (declare (not safe))
                                    (cons _getf24847_ __tmp50023))))
                             (declare (not safe))
                             (cons __tmp50022 '()))))
                      (declare (not safe))
                      (cons _$tgt24845_ __tmp50021))))
               (declare (not safe))
               (cons __tmp50020 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50015
                                                     (let ((__tmp50016
                                                            (let ((__tmp50017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50018 (cdr _fields24785_)))
                             (declare (not safe))
                             (_recur24780_ _L24828_ __tmp50018))))
                      (declare (not safe))
                      (_generate124631_
                       _$tgt24845_
                       _L24830_
                       __tmp50017
                       _E24778_))))
               (declare (not safe))
               (cons __tmp50016 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50019 __tmp50015))))
                                         (declare (not safe))
                                         (cons 'let __tmp50014))))))
                              (___kont4588145882_ (lambda () _K24777_)))
                          (if (gx#stx-pair? ___stx4587645877_)
                              (let ((_e2479224818_
                                     (gx#syntax-e ___stx4587645877_)))
                                (let ((_tl2479424825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2479224818_)))
                                      (_hd2479324822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2479224818_))))
                                  (___kont4587945880_
                                   _tl2479424825_
                                   _hd2479324822_)))
                              (___kont4588145882_)))))))
                 (_struct-field-accessors24638_
                  (lambda (_info24754_)
                    (let _recur24757_ ((_next24760_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24754_ '()))))
                      (if (let () (declare (not safe)) (null? _next24760_))
                          '()
                          (let ((_ti24763_ (car _next24760_)))
                            (append (let ((__tmp50024
                                           (map gx#syntax-local-value
                                                (let ((__obj47032 _ti24763_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47032
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47032
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47032
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24757_ __tmp50024))
                                    (map (lambda (_slot24766_)
                                           (let ((_$e24769_
                                                  (let ((__tmp50025
                                                         (let ((__obj47033
                                                                _ti24763_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47033
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47033
                          '14
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47033
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24766_
                                                             __tmp50025))))
                                             (if _$e24769_
                                                 _$e24769_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24624_
                                                  _info24754_
                                                  _slot24766_))))
                                         (let ((__obj47034 _ti24763_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47034
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47034
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47034
                                                'slots))))))))))
                 (_generate-class24639_
                  (lambda (_info24747_
                           _tgt24749_
                           _body24750_
                           _K24751_
                           _E24752_)
                    (let ((__tmp50026
                           (let ((__tmp50030
                                  (let ((__tmp50032
                                         (let ((__obj47035 _info24747_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47035
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47035
                                                  '11
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47035
                                                'predicate))))
                                        (__tmp50031
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50032 __tmp50031)))
                                 (__tmp50027
                                  (let ((__tmp50029
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24640_
                                            _info24747_
                                            _tgt24749_
                                            _body24750_
                                            _K24751_
                                            _E24752_)))
                                        (__tmp50028
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24752_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50029 __tmp50028))))
                             (declare (not safe))
                             (cons __tmp50030 __tmp50027))))
                      (declare (not safe))
                      (cons 'if __tmp50026))))
                 (_generate-class-body24640_
                  (lambda (_info24642_
                           _tgt24644_
                           _body24645_
                           _K24646_
                           _E24647_)
                    (let _recur24649_ ((_rest24652_ _body24645_))
                      (let* ((___stx4589245893_ _rest24652_)
                             (_g2465624672_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4589245893_))))
                        (let ((___kont4589545896_
                               (lambda (_L24710_ _L24712_ _L24713_)
                                 (let ((_$e24733_
                                        (let ((__tmp50034
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24713_))))
                                              (__tmp50033
                                               (let ((__obj47036 _info24642_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47036
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47036
                                                        '14
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47036
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp50034 __tmp50033))))
                                   (if _$e24733_
                                       ((lambda (_getf24737_)
                                          (let* ((_$tgt24740_ (gx#genident 'e))
                                                 (__tmp50035
                                                  (let ((__tmp50039
                                                         (let ((__tmp50040
                                                                (let ((__tmp50041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50042
                                      (let ((__tmp50043
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24644_ '()))))
                                        (declare (not safe))
                                        (cons _getf24737_ __tmp50043))))
                                 (declare (not safe))
                                 (cons __tmp50042 '()))))
                          (declare (not safe))
                          (cons _$tgt24740_ __tmp50041))))
                   (declare (not safe))
                   (cons __tmp50040 '())))
                (__tmp50036
                 (let ((__tmp50037
                        (let ((__tmp50038
                               (let ()
                                 (declare (not safe))
                                 (_recur24649_ _L24710_))))
                          (declare (not safe))
                          (_generate124631_
                           _$tgt24740_
                           _L24712_
                           __tmp50038
                           _E24647_))))
                   (declare (not safe))
                   (cons __tmp50037 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50039
                                                          __tmp50036))))
                                            (declare (not safe))
                                            (cons 'let __tmp50035)))
                                        _$e24733_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24624_
                                        _info24642_
                                        _L24713_)))))
                              (___kont4589745898_ (lambda () _K24646_)))
                          (if (gx#stx-pair? ___stx4589245893_)
                              (let ((_e2466124690_
                                     (gx#syntax-e ___stx4589245893_)))
                                (let ((_tl2466324697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2466124690_)))
                                      (_hd2466224694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2466124690_))))
                                  (if (gx#stx-pair? _tl2466324697_)
                                      (let ((_e2466424700_
                                             (gx#syntax-e _tl2466324697_)))
                                        (let ((_tl2466624707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2466424700_)))
                                              (_hd2466524704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2466424700_))))
                                          (___kont4589545896_
                                           _tl2466624707_
                                           _hd2466524704_
                                           _hd2466224694_)))
                                      (___kont4589745898_))))
                              (___kont4589745898_))))))))
          (let ()
            (declare (not safe))
            (_generate124631_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23520_ _tgt-lst23522_ _clauses23523_)
        (letrec ((_parse-body23525_
                  (lambda (_hd-len24446_)
                    (let _lp24449_ ((_rest24452_ _clauses23523_)
                                    (_r24454_ '()))
                      (let* ((___stx4594245943_ _rest24452_)
                             (_g2445724469_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4594245943_))))
                        (let ((___kont4594545946_
                               (lambda (_L24497_ _L24499_)
                                 (let* ((___stx4591445915_ _L24499_)
                                        (_g2451624532_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4591445915_))))
                                   (let ((___kont4591745918_
                                          (lambda (_L24601_)
                                            (if (gx#stx-null? _L24497_)
                                                (let ((__tmp50044
                                                       (let ((__tmp50049
                                                              (gx#genident
                                                               'else))
                                                             (__tmp50045
                                                              (let ((__tmp50046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50047
                                    (gx#stx-wrap-source
                                     (let ((__tmp50048
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp50048 _L24601_))
                                     (let ((_$e24612_
                                            (gx#stx-source _L24499_)))
                                       (if _$e24612_
                                           _$e24612_
                                           (gx#stx-source _stx23520_))))))
                               (declare (not safe))
                               (cons __tmp50047 '()))))
                        (declare (not safe))
                        (cons '#f __tmp50046))))
                 (declare (not safe))
                 (cons __tmp50049 __tmp50045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50044 _r24454_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23520_
                                                 _L24499_))))
                                         (___kont4591945920_
                                          (lambda (_L24560_ _L24562_)
                                            (let ((__tmp50050
                                                   (let ((__tmp50051
                                                          (let ((__tmp50057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp50052
                         (let ((__tmp50056
                                (gx#stx-map
                                 (lambda (_g2457424576_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2457424576_
                                      _stx23520_)))
                                 _L24562_))
                               (__tmp50053
                                (let ((__tmp50054
                                       (gx#stx-wrap-source
                                        (let ((__tmp50055
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50055 _L24560_))
                                        (let ((_$e24580_
                                               (gx#stx-source _L24499_)))
                                          (if _$e24580_
                                              _$e24580_
                                              (gx#stx-source _stx23520_))))))
                                  (declare (not safe))
                                  (cons __tmp50054 '()))))
                           (declare (not safe))
                           (cons __tmp50056 __tmp50053))))
                    (declare (not safe))
                    (cons __tmp50057 __tmp50052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50051
                                                           _r24454_))))
                                              (declare (not safe))
                                              (_lp24449_
                                               _L24497_
                                               __tmp50050))))
                                         (___kont4592145922_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23520_
                                             _L24499_))))
                                     (let* ((___match4593945940_
                                             (lambda (_e2452424550_
                                                      _hd2452524554_
                                                      _tl2452624557_)
                                               (let ((_L24560_ _tl2452624557_)
                                                     (_L24562_ _hd2452524554_))
                                                 (if (and (gx#stx-list?
                                                           _L24562_)
                                                          (fx= (gx#stx-length
                                                                _L24562_)
                                                               _hd-len24446_)
                                                          (gx#stx-list?
                                                           _L24560_)
                                                          (let ((__tmp50058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24560_)))
                    (declare (not safe))
                    (not __tmp50058)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4591945920_
                                                      _L24560_
                                                      _L24562_)
                                                     (___kont4592145922_)))))
                                            (___match4593345934_
                                             (lambda (_e2451924591_
                                                      _hd2452024595_
                                                      _tl2452124598_)
                                               (let ((_L24601_ _tl2452124598_))
                                                 (if (and (gx#stx-list?
                                                           _L24601_)
                                                          (let ((__tmp50059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24601_)))
                    (declare (not safe))
                    (not __tmp50059)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4591745918_
                                                      _L24601_)
                                                     (___match4593945940_
                                                      _e2451924591_
                                                      _hd2452024595_
                                                      _tl2452124598_))))))
                                       (if (gx#stx-pair? ___stx4591445915_)
                                           (let ((_e2451924591_
                                                  (gx#syntax-e
                                                   ___stx4591445915_)))
                                             (let ((_tl2452124598_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2451924591_)))
                                                   (_hd2452024595_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2451924591_))))
                                               (if (gx#identifier?
                                                    _hd2452024595_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g50060_|
                                                        _hd2452024595_)
                                                       (___match4593345934_
                                                        _e2451924591_
                                                        _hd2452024595_
                                                        _tl2452124598_)
                                                       (___match4593945940_
                                                        _e2451924591_
                                                        _hd2452024595_
                                                        _tl2452124598_))
                                                   (___match4593945940_
                                                    _e2451924591_
                                                    _hd2452024595_
                                                    _tl2452124598_))))
                                           (___kont4592145922_)))))))
                              (___kont4594745948_ (lambda () _r24454_)))
                          (if (gx#stx-pair? ___stx4594245943_)
                              (let ((_e2446124487_
                                     (gx#syntax-e ___stx4594245943_)))
                                (let ((_tl2446324494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2446124487_)))
                                      (_hd2446224491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2446124487_))))
                                  (___kont4594545946_
                                   _tl2446324494_
                                   _hd2446224491_)))
                              (___kont4594745948_)))))))
                 (_generate-body23527_
                  (lambda (_body24231_)
                    (let* ((_g2423424242_
                            (lambda (_g2423524238_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2423524238_)))
                           (_g2423324442_
                            (lambda (_g2423524246_)
                              ((lambda (_L24249_)
                                 (let ()
                                   (let* ((_g2426124278_
                                           (lambda (_g2426224274_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2426224274_)))
                                          (_g2426024438_
                                           (lambda (_g2426224282_)
                                             (if (gx#stx-pair/null?
                                                  _g2426224282_)
                                                 (let ((_g50061_
                                                        (gx#syntax-split-splice
                                                         _g2426224282_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50062_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50061_)
                          (##vector-length _g50061_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50062_ 2)))
                   (error "Context expects 2 values" _g50062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2426424285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50061_
                                                               0)))
                                                           (_tl2426624288_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50061_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2426624288_)
                                                           (letrec ((_loop2426724291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2426524295_ _target2427124298_)
                               (if (gx#stx-pair? _hd2426524295_)
                                   (let ((_e2426824301_
                                          (gx#syntax-e _hd2426524295_)))
                                     (let ((_lp-hd2426924305_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2426824301_)))
                                           (_lp-tl2427024308_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2426824301_))))
                                       (let ((__tmp50063
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2426924305_
                                                      _target2427124298_))))
                                         (declare (not safe))
                                         (_loop2426724291_
                                          _lp-tl2427024308_
                                          __tmp50063))))
                                   (let ((_target2427224311_
                                          (reverse _target2427124298_)))
                                     ((lambda (_L24315_)
                                        (let ()
                                          (let* ((_g2433224340_
                                                  (lambda (_g2433324336_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2433324336_)))
                                                 (_g2433124426_
                                                  (lambda (_g2433324344_)
                                                    ((lambda (_L24347_)
                                                       (let ()
                                                         (let* ((_g2436024368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2436124364_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2436124364_)))
                        (_g2435924422_
                         (lambda (_g2436124372_)
                           ((lambda (_L24375_)
                              (let ()
                                (let* ((_g2438824396_
                                        (lambda (_g2438924392_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2438924392_)))
                                       (_g2438724418_
                                        (lambda (_g2438924400_)
                                          ((lambda (_L24403_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp50067
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50064
                                                        (let ((__tmp50066
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50065
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24403_ '()))))
                  (declare (not safe))
                  (cons __tmp50066 __tmp50065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50067
                                                         __tmp50064)))))
                                           _g2438924400_)))
                                       (__tmp50068
                                        (gx#stx-wrap-source
                                         (let ((__tmp50074
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50069
                                                (let ((__tmp50071
                                                       (let ((__tmp50072
                                                              (let ((__tmp50073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24347_ '()))))
                        (declare (not safe))
                        (cons _L24249_ __tmp50073))))
                 (declare (not safe))
                 (cons __tmp50072 '())))
              (__tmp50070 (let () (declare (not safe)) (cons _L24375_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50071
                                                        __tmp50070))))
                                           (declare (not safe))
                                           (cons __tmp50074 __tmp50069))
                                         (gx#stx-source _stx23520_))))
                                  (declare (not safe))
                                  (_g2438724418_ __tmp50068))))
                            _g2436124372_)))
                        (__tmp50075
                         (let ((__tmp50076
                                (let ()
                                  (declare (not safe))
                                  (cons _L24249_ '()))))
                           (declare (not safe))
                           (_generate-clauses23528_ _body24231_ __tmp50076))))
                   (declare (not safe))
                   (_g2435924422_ __tmp50075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2433324344_)))
                                                 (__tmp50077
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50085
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50078
                                                          (let ((__tmp50079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50080
                                (let ((__tmp50084
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50081
                                       (let ((__tmp50082
                                              (let ((__tmp50083
                                                     (lambda (_g2442924432_
                                                              _g2443024435_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2442924432_
                                                               _g2443024435_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50083
                                                        '()
                                                        _L24315_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50082))))
                                  (declare (not safe))
                                  (cons __tmp50084 __tmp50081))))
                           (declare (not safe))
                           (cons __tmp50080 '()))))
                    (declare (not safe))
                    (cons '() __tmp50079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50085
                                                           __tmp50078))
                                                   (gx#stx-source
                                                    _stx23520_))))
                                            (declare (not safe))
                                            (_g2433124426_ __tmp50077))))
                                      _target2427224311_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2426724291_ _target2426424285_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2426124278_ _g2426224282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2426124278_
                                                    _g2426224282_))))))
                                     (declare (not safe))
                                     (_g2426024438_ _tgt-lst23522_))))
                               _g2423524246_)))
                           (__tmp50086 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2423324442_ __tmp50086))))
                 (_generate-clauses23528_
                  (lambda (_rest23883_ _E23885_)
                    (let* ((___stx4595845959_ _rest23883_)
                           (_g2388923905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4595845959_))))
                      (let ((___kont4596145962_
                             (lambda (_L24139_)
                               (let* ((_g2415024168_
                                       (lambda (_g2415124164_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2415124164_)))
                                      (_g2414924223_
                                       (lambda (_g2415124172_)
                                         (if (gx#stx-pair? _g2415124172_)
                                             (let ((_e2415424175_
                                                    (gx#syntax-e
                                                     _g2415124172_)))
                                               (let ((_hd2415524179_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2415424175_)))
                                                     (_tl2415624182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2415424175_))))
                                                 (if (gx#stx-pair?
                                                      _tl2415624182_)
                                                     (let ((_e2415724185_
                                                            (gx#syntax-e
                                                             _tl2415624182_)))
                                                       (let ((_hd2415824189_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2415724185_)))
                     (_tl2415924192_
                      (let () (declare (not safe)) (##cdr _e2415724185_))))
                 (if (gx#stx-pair? _tl2415924192_)
                     (let ((_e2416024195_ (gx#syntax-e _tl2415924192_)))
                       (let ((_hd2416124199_
                              (let ()
                                (declare (not safe))
                                (##car _e2416024195_)))
                             (_tl2416224202_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2416024195_))))
                         (if (gx#stx-null? _tl2416224202_)
                             ((lambda (_L24205_ _L24207_)
                                (let ((__tmp50087
                                       (let ((__tmp50088
                                              (let ((__tmp50089
                                                     (if (gx#stx-e _L24207_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123529_
                                                            _L24207_
                                                            _L24205_
                                                            _E23885_))
                                                         _L24205_)))
                                                (declare (not safe))
                                                (cons __tmp50089 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50088))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50087)))
                              _hd2416124199_
                              _hd2415824189_)
                             (let ()
                               (declare (not safe))
                               (_g2415024168_ _g2415124172_)))))
                     (let ()
                       (declare (not safe))
                       (_g2415024168_ _g2415124172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2415024168_
                                                        _g2415124172_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2415024168_
                                                _g2415124172_))))))
                                 (declare (not safe))
                                 (_g2414924223_ _L24139_))))
                            (___kont4596345964_
                             (lambda (_L23933_ _L23935_)
                               (let* ((_g2394823967_
                                       (lambda (_g2394923963_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2394923963_)))
                                      (_g2394724118_
                                       (lambda (_g2394923971_)
                                         (if (gx#stx-pair? _g2394923971_)
                                             (let ((_e2395323974_
                                                    (gx#syntax-e
                                                     _g2394923971_)))
                                               (let ((_hd2395423978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2395323974_)))
                                                     (_tl2395523981_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2395323974_))))
                                                 (if (gx#stx-pair?
                                                      _tl2395523981_)
                                                     (let ((_e2395623984_
                                                            (gx#syntax-e
                                                             _tl2395523981_)))
                                                       (let ((_hd2395723988_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2395623984_)))
                     (_tl2395823991_
                      (let () (declare (not safe)) (##cdr _e2395623984_))))
                 (if (gx#stx-pair? _tl2395823991_)
                     (let ((_e2395923994_ (gx#syntax-e _tl2395823991_)))
                       (let ((_hd2396023998_
                              (let ()
                                (declare (not safe))
                                (##car _e2395923994_)))
                             (_tl2396124001_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2395923994_))))
                         (if (gx#stx-null? _tl2396124001_)
                             ((lambda (_L24004_ _L24006_ _L24007_)
                                (if (gx#stx-e _L24006_)
                                    (let* ((_g2402424039_
                                            (lambda (_g2402524035_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2402524035_)))
                                           (_g2402324084_
                                            (lambda (_g2402524043_)
                                              (if (gx#stx-pair? _g2402524043_)
                                                  (let ((_e2402824046_
                                                         (gx#syntax-e
                                                          _g2402524043_)))
                                                    (let ((_hd2402924050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2402824046_)))
                                                          (_tl2403024053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2402824046_))))
                                                      (if (gx#stx-pair?
                                                           _tl2403024053_)
                                                          (let ((_e2403124056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2403024053_)))
                    (let ((_hd2403224060_
                           (let () (declare (not safe)) (##car _e2403124056_)))
                          (_tl2403324063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2403124056_))))
                      (if (gx#stx-null? _tl2403324063_)
                          ((lambda (_L24066_ _L24068_)
                             (let ()
                               (let ((__tmp50099 (gx#datum->syntax '#f 'let))
                                     (__tmp50090
                                      (let ((__tmp50092
                                             (let ((__tmp50093
                                                    (let ((__tmp50094
                                                           (let ((__tmp50095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50098 (gx#datum->syntax '#f 'lambda))
                                (__tmp50096
                                 (let ((__tmp50097
                                        (let ()
                                          (declare (not safe))
                                          (cons _L24068_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50097))))
                            (declare (not safe))
                            (cons __tmp50098 __tmp50096))))
                     (declare (not safe))
                     (cons __tmp50095 '()))))
              (declare (not safe))
              (cons _L24007_ __tmp50094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50093 '())))
                                            (__tmp50091
                                             (let ()
                                               (declare (not safe))
                                               (cons _L24066_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50092 __tmp50091))))
                                 (declare (not safe))
                                 (cons __tmp50099 __tmp50090))))
                           _hd2403224060_
                           _hd2402924050_)
                          (let ()
                            (declare (not safe))
                            (_g2402424039_ _g2402524043_)))))
                  (let ()
                    (declare (not safe))
                    (_g2402424039_ _g2402524043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2402424039_
                                                     _g2402524043_)))))
                                           (__tmp50100
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123529_
                                                     _L24006_
                                                     _L24004_
                                                     _E23885_))
                                                  (let ((__tmp50101
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L24007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23528_
                                                     _L23933_
                                                     __tmp50101)))))
                                      (declare (not safe))
                                      (_g2402324084_ __tmp50100))
                                    (let* ((_g2408824096_
                                            (lambda (_g2408924092_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2408924092_)))
                                           (_g2408724114_
                                            (lambda (_g2408924100_)
                                              ((lambda (_L24103_)
                                                 (let ()
                                                   (let ((__tmp50116
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50102
                                                          (let ((__tmp50104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50105
                                (let ((__tmp50106
                                       (let ((__tmp50107
                                              (let ((__tmp50115
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50108
                                                     (let ((__tmp50114
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50109
                                                            (let ((__tmp50110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50113 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50111
                                  (let ((__tmp50112
                                         (let ()
                                           (declare (not safe))
                                           (cons _L24004_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50112))))
                             (declare (not safe))
                             (cons __tmp50113 __tmp50111))))
                      (declare (not safe))
                      (cons __tmp50110 '()))))
               (declare (not safe))
               (cons __tmp50114 __tmp50109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50115 __tmp50108))))
                                         (declare (not safe))
                                         (cons __tmp50107 '()))))
                                  (declare (not safe))
                                  (cons _L24007_ __tmp50106))))
                           (declare (not safe))
                           (cons __tmp50105 '())))
                        (__tmp50103
                         (let () (declare (not safe)) (cons _L24103_ '()))))
                    (declare (not safe))
                    (cons __tmp50104 __tmp50103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50116
                                                           __tmp50102))))
                                               _g2408924100_)))
                                           (__tmp50117
                                            (let ((__tmp50118
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L24007_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23528_
                                               _L23933_
                                               __tmp50118))))
                                      (declare (not safe))
                                      (_g2408724114_ __tmp50117))))
                              _hd2396023998_
                              _hd2395723988_
                              _hd2395423978_)
                             (let ()
                               (declare (not safe))
                               (_g2394823967_ _g2394923971_)))))
                     (let ()
                       (declare (not safe))
                       (_g2394823967_ _g2394923971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2394823967_
                                                        _g2394923971_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2394823967_
                                                _g2394923971_))))))
                                 (declare (not safe))
                                 (_g2394724118_ _L23935_))))
                            (___kont4596545966_
                             (lambda ()
                               (let ((__tmp50119
                                      (let ((__tmp50120
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23885_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50120))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50119)))))
                        (if (gx#stx-pair? ___stx4595845959_)
                            (let ((_e2389224129_
                                   (gx#syntax-e ___stx4595845959_)))
                              (let ((_tl2389424136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2389224129_)))
                                    (_hd2389324133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2389224129_))))
                                (if (gx#stx-null? _tl2389424136_)
                                    (___kont4596145962_ _hd2389324133_)
                                    (___kont4596345964_
                                     _tl2389424136_
                                     _hd2389324133_))))
                            (___kont4596545966_))))))
                 (_generate123529_
                  (lambda (_clause23531_ _body23533_ _E23534_)
                    (let* ((_g2353623560_
                            (lambda (_g2353723556_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2353723556_)))
                           (_g2353523879_
                            (lambda (_g2353723564_)
                              (if (gx#stx-pair? _g2353723564_)
                                  (let ((_e2354023567_
                                         (gx#syntax-e _g2353723564_)))
                                    (let ((_hd2354123571_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2354023567_)))
                                          (_tl2354223574_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2354023567_))))
                                      (if (gx#stx-pair? _tl2354223574_)
                                          (let ((_e2354323577_
                                                 (gx#syntax-e _tl2354223574_)))
                                            (let ((_hd2354423581_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2354323577_)))
                                                  (_tl2354523584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2354323577_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2354423581_)
                                                  (let ((_g50121_
                                                         (gx#syntax-split-splice
                                                          _hd2354423581_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50122_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50121_)
                           (##vector-length _g50121_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50122_ 2)))
                    (error "Context expects 2 values" _g50122_)))
              (let ((_target2354623587_
                     (let () (declare (not safe)) (##vector-ref _g50121_ 0)))
                    (_tl2354823590_
                     (let () (declare (not safe)) (##vector-ref _g50121_ 1))))
                (if (gx#stx-null? _tl2354823590_)
                    (letrec ((_loop2354923593_
                              (lambda (_hd2354723597_ _var2355323600_)
                                (if (gx#stx-pair? _hd2354723597_)
                                    (let ((_e2355023603_
                                           (gx#syntax-e _hd2354723597_)))
                                      (let ((_lp-hd2355123607_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2355023603_)))
                                            (_lp-tl2355223610_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2355023603_))))
                                        (let ((__tmp50123
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2355123607_
                                                       _var2355323600_))))
                                          (declare (not safe))
                                          (_loop2354923593_
                                           _lp-tl2355223610_
                                           __tmp50123))))
                                    (let ((_var2355423613_
                                           (reverse _var2355323600_)))
                                      (if (gx#stx-null? _tl2354523584_)
                                          ((lambda (_L23617_ _L23619_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50124
                                                       (lambda (_g2364023643_
                                                                _g2364123646_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2364023643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2364123646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50124
                                                          '()
                                                          _L23617_))
                                                _stx23520_)
                                               (let* ((_g2364923657_
                                                       (lambda (_g2365023653_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2365023653_)))
                                                      (_g2364823751_
                                                       (lambda (_g2365023661_)
                                                         ((lambda (_L23664_)
                                                            (let ()
                                                              (let* ((_g2367723685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2367823681_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2367823681_)))
                             (_g2367623747_
                              (lambda (_g2367823689_)
                                ((lambda (_L23692_)
                                   (let ()
                                     (let* ((_g2370523713_
                                             (lambda (_g2370623709_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2370623709_)))
                                            (_g2370423735_
                                             (lambda (_g2370623717_)
                                               ((lambda (_L23720_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp50129
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50125
                                                              (let ((__tmp50127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50128
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23720_ '()))))
                               (declare (not safe))
                               (cons _L23619_ __tmp50128)))
                            (__tmp50126
                             (let ()
                               (declare (not safe))
                               (cons _L23664_ '()))))
                        (declare (not safe))
                        (cons __tmp50127 __tmp50126))))
                 (declare (not safe))
                 (cons __tmp50129 __tmp50125))
               (gx#stx-source _stx23520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2370623717_)))
                                            (__tmp50130
                                             (gx#stx-wrap-source
                                              (let ((__tmp50135
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50131
                                                     (let ((__tmp50133
                                                            (let ((__tmp50134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2373823741_ _g2373923744_)
                             (let ()
                               (declare (not safe))
                               (cons _g2373823741_ _g2373923744_)))))
                      (declare (not safe))
                      (foldr1 __tmp50134 '() _L23617_)))
                   (__tmp50132
                    (let () (declare (not safe)) (cons _L23692_ '()))))
               (declare (not safe))
               (cons __tmp50133 __tmp50132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50135 __tmp50131))
                                              (gx#stx-source _stx23520_))))
                                       (declare (not safe))
                                       (_g2370423735_ __tmp50130))))
                                 _g2367823689_))))
                        (declare (not safe))
                        (_g2367623747_ _body23533_))))
                  _g2365023661_)))
              (__tmp50136
               (let _recur23755_ ((_rest23758_ _clause23531_)
                                  (_rest-targets23760_ _tgt-lst23522_))
                 (let* ((___stx4598445985_ _rest23758_)
                        (_g2376323775_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4598445985_))))
                   (let ((___kont4598745988_
                          (lambda (_L23811_ _L23813_)
                            (let* ((_g2382823840_
                                    (lambda (_g2382923836_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2382923836_)))
                                   (_g2382723871_
                                    (lambda (_g2382923844_)
                                      (if (gx#stx-pair? _g2382923844_)
                                          (let ((_e2383223847_
                                                 (gx#syntax-e _g2382923844_)))
                                            (let ((_hd2383323851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2383223847_)))
                                                  (_tl2383423854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2383223847_))))
                                              ((lambda (_L23857_ _L23859_)
                                                 (let ((__tmp50137
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23755_
                                                           _L23811_
                                                           _L23857_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23520_
                                                    _L23859_
                                                    _L23813_
                                                    __tmp50137
                                                    _E23534_)))
                                               _tl2383423854_
                                               _hd2383323851_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2382823840_ _g2382923844_))))))
                              (declare (not safe))
                              (_g2382723871_ _rest-targets23760_))))
                         (___kont4598945990_
                          (lambda ()
                            (let ((__tmp50138
                                   (let ((__tmp50139
                                          (lambda (_g2378523788_ _g2378623791_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2378523788_
                                                    _g2378623791_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50139 '() _L23617_))))
                              (declare (not safe))
                              (cons _L23619_ __tmp50138)))))
                     (if (gx#stx-pair? ___stx4598445985_)
                         (let ((_e2376723801_ (gx#syntax-e ___stx4598445985_)))
                           (let ((_tl2376923808_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2376723801_)))
                                 (_hd2376823805_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2376723801_))))
                             (___kont4598745988_
                              _tl2376923808_
                              _hd2376823805_)))
                         (___kont4598945990_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2364823751_ __tmp50136))))
                                           _var2355423613_
                                           _hd2354123571_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_
                                             _g2353723564_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2354923593_ _target2354623587_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2353623560_ _g2353723564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2353623560_
                                                     _g2353723564_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_ _g2353723564_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2353623560_ _g2353723564_)))))
                           (__tmp50140
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23531_)))))
                      (declare (not safe))
                      (_g2353523879_ __tmp50140)))))
          (let ((__tmp50141
                 (let ((__tmp50142 (gx#stx-length _tgt-lst23522_)))
                   (declare (not safe))
                   (_parse-body23525_ __tmp50142))))
            (declare (not safe))
            (_generate-body23527_ __tmp50141)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23422_ _tgt23424_ _clauses23425_)
        (letrec ((_reclause23427_
                  (lambda (_clause23430_)
                    (let* ((___stx4600046001_ _clause23430_)
                           (_g2343523450_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4600046001_))))
                      (let ((___kont4600346004_ (lambda () _clause23430_))
                            (___kont4600546006_
                             (lambda (_L23478_ _L23480_)
                               (gx#stx-wrap-source
                                (let ((__tmp50143
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23480_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50143 _L23478_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4600746008_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23422_
                                _clause23430_))))
                        (if (gx#stx-pair? ___stx4600046001_)
                            (let ((_e2343723502_
                                   (gx#syntax-e ___stx4600046001_)))
                              (let ((_tl2343923509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2343723502_)))
                                    (_hd2343823506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2343723502_))))
                                (if (gx#identifier? _hd2343823506_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50144_|
                                         _hd2343823506_)
                                        (___kont4600346004_)
                                        (___kont4600546006_
                                         _tl2343923509_
                                         _hd2343823506_))
                                    (___kont4600546006_
                                     _tl2343923509_
                                     _hd2343823506_))))
                            (___kont4600746008_)))))))
          (let ((__tmp50146
                 (let () (declare (not safe)) (cons _tgt23424_ '())))
                (__tmp50145 (gx#stx-map _reclause23427_ _clauses23425_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23422_
             __tmp50146
             __tmp50145)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30653_)
        (let* ((___stx4602846029_ _stx30653_)
               (_g3065830687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4602846029_))))
          (let ((___kont4603146032_
                 (lambda (_L30927_)
                   (let* ((_g3094030948_
                           (lambda (_g3094130944_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3094130944_)))
                          (_g3093931001_
                           (lambda (_g3094130952_)
                             ((lambda (_L30955_)
                                (let ()
                                  (let* ((_g3096730975_
                                          (lambda (_g3096830971_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3096830971_)))
                                         (_g3096630997_
                                          (lambda (_g3096830979_)
                                            ((lambda (_L30982_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50150
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50147
                                                          (let ((__tmp50149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30955_ '())))
                        (__tmp50148
                         (let () (declare (not safe)) (cons _L30982_ '()))))
                    (declare (not safe))
                    (cons __tmp50149 __tmp50148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50150
                                                           __tmp50147)))))
                                             _g3096830979_))))
                                    (_g3096630997_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50152
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50151
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30955_ _L30927_))))
                                        (declare (not safe))
                                        (cons __tmp50152 __tmp50151))
                                      (gx#stx-source _stx30653_))))))
                              _g3094130952_))))
                     (_g3093931001_ (gx#genident 'e)))))
                (___kont4603346034_
                 (lambda (_L30822_)
                   (let* ((_g3083530843_
                           (lambda (_g3083630839_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3083630839_)))
                          (_g3083430896_
                           (lambda (_g3083630847_)
                             ((lambda (_L30850_)
                                (let ()
                                  (let* ((_g3086230870_
                                          (lambda (_g3086330866_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3086330866_)))
                                         (_g3086130892_
                                          (lambda (_g3086330874_)
                                            ((lambda (_L30877_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50155
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50153
                                                          (let ((__tmp50154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30877_ '()))))
                    (declare (not safe))
                    (cons _L30850_ __tmp50154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50155
                                                           __tmp50153)))))
                                             _g3086330874_))))
                                    (_g3086130892_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50157
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50156
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30850_ _L30822_))))
                                        (declare (not safe))
                                        (cons __tmp50157 __tmp50156))
                                      (gx#stx-source _stx30653_))))))
                              _g3083630847_))))
                     (_g3083430896_ (gx#genident 'args)))))
                (___kont4603546036_
                 (lambda (_L30714_ _L30716_)
                   (let* ((_g3073030738_
                           (lambda (_g3073130734_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3073130734_)))
                          (_g3072930791_
                           (lambda (_g3073130742_)
                             ((lambda (_L30745_)
                                (let ()
                                  (let* ((_g3075730765_
                                          (lambda (_g3075830761_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3075830761_)))
                                         (_g3075630787_
                                          (lambda (_g3075830769_)
                                            ((lambda (_L30772_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50163
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50158
                                                          (let ((__tmp50160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50161
                                (let ((__tmp50162
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30716_ '()))))
                                  (declare (not safe))
                                  (cons _L30745_ __tmp50162))))
                           (declare (not safe))
                           (cons __tmp50161 '())))
                        (__tmp50159
                         (let () (declare (not safe)) (cons _L30772_ '()))))
                    (declare (not safe))
                    (cons __tmp50160 __tmp50159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50163
                                                           __tmp50158)))))
                                             _g3075830769_))))
                                    (_g3075630787_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30653_
                                        _L30745_
                                        _L30714_))))))
                              _g3073130742_))))
                     (_g3072930791_ (gx#genident _L30716_))))))
            (let* ((___match4608146082_
                    (lambda (_e3067630694_
                             _hd3067730698_
                             _tl3067830701_
                             _e3067930704_
                             _hd3068030708_
                             _tl3068130711_)
                      (let ((_L30714_ _tl3068130711_)
                            (_L30716_ _hd3068030708_))
                        (if (gx#stx-list? _L30714_)
                            (___kont4603546036_ _L30714_ _L30716_)
                            (let () (declare (not safe)) (_g3065830687_))))))
                   (___match4606946070_
                    (lambda (_e3066830802_
                             _hd3066930806_
                             _tl3067030809_
                             _e3067130812_
                             _hd3067230816_
                             _tl3067330819_)
                      (let ((_L30822_ _tl3067330819_))
                        (if (gx#stx-list? _L30822_)
                            (___kont4603346034_ _L30822_)
                            (___match4608146082_
                             _e3066830802_
                             _hd3066930806_
                             _tl3067030809_
                             _e3067130812_
                             _hd3067230816_
                             _tl3067330819_)))))
                   (___match4605346054_
                    (lambda (_e3066130907_
                             _hd3066230911_
                             _tl3066330914_
                             _e3066430917_
                             _hd3066530921_
                             _tl3066630924_)
                      (let ((_L30927_ _tl3066630924_))
                        (if (gx#stx-list? _L30927_)
                            (___kont4603146032_ _L30927_)
                            (___match4608146082_
                             _e3066130907_
                             _hd3066230911_
                             _tl3066330914_
                             _e3066430917_
                             _hd3066530921_
                             _tl3066630924_))))))
              (if (gx#stx-pair? ___stx4602846029_)
                  (let ((_e3066130907_ (gx#syntax-e ___stx4602846029_)))
                    (let ((_tl3066330914_
                           (let () (declare (not safe)) (##cdr _e3066130907_)))
                          (_hd3066230911_
                           (let ()
                             (declare (not safe))
                             (##car _e3066130907_))))
                      (if (gx#stx-pair? _tl3066330914_)
                          (let ((_e3066430917_ (gx#syntax-e _tl3066330914_)))
                            (let ((_tl3066630924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3066430917_)))
                                  (_hd3066530921_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3066430917_))))
                              (if (gx#identifier? _hd3066530921_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50164_|
                                       _hd3066530921_)
                                      (___match4605346054_
                                       _e3066130907_
                                       _hd3066230911_
                                       _tl3066330914_
                                       _e3066430917_
                                       _hd3066530921_
                                       _tl3066630924_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50165_|
                                           _hd3066530921_)
                                          (___match4606946070_
                                           _e3066130907_
                                           _hd3066230911_
                                           _tl3066330914_
                                           _e3066430917_
                                           _hd3066530921_
                                           _tl3066630924_)
                                          (___match4608146082_
                                           _e3066130907_
                                           _hd3066230911_
                                           _tl3066330914_
                                           _e3066430917_
                                           _hd3066530921_
                                           _tl3066630924_)))
                                  (___match4608146082_
                                   _e3066130907_
                                   _hd3066230911_
                                   _tl3066330914_
                                   _e3066430917_
                                   _hd3066530921_
                                   _tl3066630924_))))
                          (let () (declare (not safe)) (_g3065830687_)))))
                  (let () (declare (not safe)) (_g3065830687_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx31009_)
        (let* ((_g3101231036_
                (lambda (_g3101331032_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3101331032_)))
               (_g3101131248_
                (lambda (_g3101331040_)
                  (if (gx#stx-pair? _g3101331040_)
                      (let ((_e3101631043_ (gx#syntax-e _g3101331040_)))
                        (let ((_hd3101731047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3101631043_)))
                              (_tl3101831050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3101631043_))))
                          (if (gx#stx-pair? _tl3101831050_)
                              (let ((_e3101931053_
                                     (gx#syntax-e _tl3101831050_)))
                                (let ((_hd3102031057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3101931053_)))
                                      (_tl3102131060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3101931053_))))
                                  (if (gx#stx-pair/null? _hd3102031057_)
                                      (let ((_g50166_
                                             (gx#syntax-split-splice
                                              _hd3102031057_
                                              '0)))
                                        (begin
                                          (let ((_g50167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50166_)
                                                       (##vector-length
                                                        _g50166_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50167_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50167_)))
                                          (let ((_target3102231063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50166_ 0)))
                                                (_tl3102431066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50166_ 1))))
                                            (if (gx#stx-null? _tl3102431066_)
                                                (letrec ((_loop3102531069_
                                                          (lambda (_hd3102331073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3102931076_)
                    (if (gx#stx-pair? _hd3102331073_)
                        (let ((_e3102631079_ (gx#syntax-e _hd3102331073_)))
                          (let ((_lp-hd3102731083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3102631079_)))
                                (_lp-tl3102831086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3102631079_))))
                            (_loop3102531069_
                             _lp-tl3102831086_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3102731083_ _e3102931076_)))))
                        (let ((_e3103031089_ (reverse _e3102931076_)))
                          ((lambda (_L31093_ _L31095_)
                             (if (gx#stx-list? _L31093_)
                                 (let* ((_g3111331130_
                                         (lambda (_g3111431126_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3111431126_)))
                                        (_g3111231236_
                                         (lambda (_g3111431134_)
                                           (if (gx#stx-pair/null?
                                                _g3111431134_)
                                               (let ((_g50168_
                                                      (gx#syntax-split-splice
                                                       _g3111431134_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50169_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50168_)
                        (##vector-length _g50168_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50169_ 2)))
                 (error "Context expects 2 values" _g50169_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3111631137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50168_
                                                             0)))
                                                         (_tl3111831140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50168_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3111831140_)
                                                         (letrec ((_loop3111931143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3111731147_ _$e3112331150_)
                             (if (gx#stx-pair? _hd3111731147_)
                                 (let ((_e3112031153_
                                        (gx#syntax-e _hd3111731147_)))
                                   (let ((_lp-hd3112131157_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3112031153_)))
                                         (_lp-tl3112231160_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3112031153_))))
                                     (_loop3111931143_
                                      _lp-tl3112231160_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3112131157_
                                              _$e3112331150_)))))
                                 (let ((_$e3112431163_
                                        (reverse _$e3112331150_)))
                                   ((lambda (_L31167_)
                                      (let ()
                                        (let* ((_g3118331191_
                                                (lambda (_g3118431187_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3118431187_)))
                                               (_g3118231224_
                                                (lambda (_g3118431195_)
                                                  ((lambda (_L31198_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp50473
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50467
                        (let ((__tmp50469
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31095_
                                  _L31167_)
                                 (let ((__tmp50470
                                        (lambda (_g3121231216_
                                                 _g3121331219_
                                                 _g3121431221_)
                                          (let ((__tmp50471
                                                 (let ((__tmp50472
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3121231216_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3121331219_
                                                         __tmp50472))))
                                            (declare (not safe))
                                            (cons __tmp50471 _g3121431221_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50470 '() _L31095_ _L31167_))))
                              (__tmp50468
                               (let ()
                                 (declare (not safe))
                                 (cons _L31198_ '()))))
                          (declare (not safe))
                          (cons __tmp50469 __tmp50468))))
                   (declare (not safe))
                   (cons __tmp50473 __tmp50467)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3118431195_))))
                                          (_g3118231224_
                                           (let ((__tmp50474
                                                  (let ((__tmp50475
                                                         (lambda (_g3122731230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3122831233_)
                   (let ()
                     (declare (not safe))
                     (cons _g3122731230_ _g3122831233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50475
                                                            '()
                                                            _L31167_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx31009_
                                              __tmp50474
                                              _L31093_))))))
                                    _$e3112431163_))))))
                   (_loop3111931143_ _target3111631137_ '()))
                 (_g3111331130_ _g3111431134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3111331130_
                                                _g3111431134_)))))
                                   (_g3111231236_
                                    (gx#gentemps
                                     (let ((__tmp50476
                                            (lambda (_g3123931242_
                                                     _g3124031245_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3123931242_
                                                      _g3124031245_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50476 '() _L31095_)))))
                                 (_g3101231036_ _g3101331040_)))
                           _tl3102131060_
                           _e3103031089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3102531069_
                                                   _target3102231063_
                                                   '()))
                                                (_g3101231036_
                                                 _g3101331040_)))))
                                      (_g3101231036_ _g3101331040_))))
                              (_g3101231036_ _g3101331040_))))
                      (_g3101231036_ _g3101331040_)))))
          (_g3101131248_ _stx31009_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31254_)
        (let* ((___stx4608446085_ _$stx31254_)
               (_g3126031343_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4608446085_))))
          (let ((___kont4608746088_
                 (lambda (_L31673_)
                   (let ((__tmp50480 (gx#datum->syntax '#f 'let))
                         (__tmp50477
                          (let ((__tmp50478
                                 (let ((__tmp50479
                                        (lambda (_g3168931692_ _g3169031695_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3168931692_
                                                  _g3169031695_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50479 '() _L31673_))))
                            (declare (not safe))
                            (cons '() __tmp50478))))
                     (declare (not safe))
                     (cons __tmp50480 __tmp50477))))
                (___kont4609146092_
                 (lambda (_L31581_ _L31583_ _L31584_ _L31585_)
                   (let ((__tmp50481
                          (let ((__tmp50484
                                 (let ((__tmp50485
                                        (let ((__tmp50486
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31583_ '()))))
                                          (declare (not safe))
                                          (cons _L31584_ __tmp50486))))
                                   (declare (not safe))
                                   (cons __tmp50485 '())))
                                (__tmp50482
                                 (let ((__tmp50483
                                        (lambda (_g3160731610_ _g3160831613_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3160731610_
                                                  _g3160831613_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50483 '() _L31581_))))
                            (declare (not safe))
                            (cons __tmp50484 __tmp50482))))
                     (declare (not safe))
                     (cons _L31585_ __tmp50481))))
                (___kont4609546096_
                 (lambda (_L31454_ _L31456_ _L31457_)
                   (let ((__tmp50496 (gx#datum->syntax '#f 'match*))
                         (__tmp50487
                          (let ((__tmp50494
                                 (let ((__tmp50495
                                        (lambda (_g3147931486_ _g3148031489_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3147931486_
                                                  _g3148031489_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50495 '() _L31456_)))
                                (__tmp50488
                                 (let ((__tmp50489
                                        (let ((__tmp50492
                                               (let ((__tmp50493
                                                      (lambda (_g3148131492_
                                                               _g3148231495_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3148131492_
                                                                _g3148231495_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50493
                                                         '()
                                                         _L31457_)))
                                              (__tmp50490
                                               (let ((__tmp50491
                                                      (lambda (_g3148331498_
                                                               _g3148431501_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3148331498_
                                                                _g3148431501_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50491
                                                         '()
                                                         _L31454_))))
                                          (declare (not safe))
                                          (cons __tmp50492 __tmp50490))))
                                   (declare (not safe))
                                   (cons __tmp50489 '()))))
                            (declare (not safe))
                            (cons __tmp50494 __tmp50488))))
                     (declare (not safe))
                     (cons __tmp50496 __tmp50487)))))
            (let* ((___match4617746178_
                    (lambda (_e3130631350_
                             _hd3130731354_
                             _tl3130831357_
                             _e3130931360_
                             _hd3131031364_
                             _tl3131131367_
                             ___splice4609746098_
                             _target3131231370_
                             _tl3131431373_)
                      (letrec ((_loop3131531376_
                                (lambda (_hd3131331380_
                                         _expr3131931383_
                                         _hd3132031385_)
                                  (if (gx#stx-pair? _hd3131331380_)
                                      (let ((_e3131631388_
                                             (gx#syntax-e _hd3131331380_)))
                                        (let ((_lp-tl3131831395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3131631388_)))
                                              (_lp-hd3131731392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3131631388_))))
                                          (if (gx#stx-pair? _lp-hd3131731392_)
                                              (let ((_e3132331398_
                                                     (gx#syntax-e
                                                      _lp-hd3131731392_)))
                                                (let ((_tl3132531405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3132331398_)))
                                                      (_hd3132431402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3132331398_))))
                                                  (if (gx#stx-pair?
                                                       _tl3132531405_)
                                                      (let ((_e3132631408_
                                                             (gx#syntax-e
                                                              _tl3132531405_)))
                                                        (let ((_tl3132831415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3132631408_)))
                      (_hd3132731412_
                       (let () (declare (not safe)) (##car _e3132631408_))))
                  (if (gx#stx-null? _tl3132831415_)
                      (_loop3131531376_
                       _lp-tl3131831395_
                       (let ()
                         (declare (not safe))
                         (cons _hd3132731412_ _expr3131931383_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3132431402_ _hd3132031385_)))
                      (let () (declare (not safe)) (_g3126031343_)))))
              (let () (declare (not safe)) (_g3126031343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3126031343_)))))
                                      (let ((_hd3132231421_
                                             (reverse _hd3132031385_))
                                            (_expr3132131418_
                                             (reverse _expr3131931383_)))
                                        (if (gx#stx-pair/null? _tl3131131367_)
                                            (let ((___splice4609946100_
                                                   (gx#syntax-split-splice
                                                    _tl3131131367_
                                                    '0)))
                                              (let ((_tl3133131427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4609946100_
                                                        '1)))
                                                    (_target3132931424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4609946100_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3133131427_)
                                                    (letrec ((_loop3133231430_
                                                              (lambda (_hd3133031434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3133631437_)
                        (if (gx#stx-pair? _hd3133031434_)
                            (let ((_e3133331440_ (gx#syntax-e _hd3133031434_)))
                              (let ((_lp-tl3133531447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3133331440_)))
                                    (_lp-hd3133431444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3133331440_))))
                                (_loop3133231430_
                                 _lp-tl3133531447_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3133431444_
                                         _body3133631437_)))))
                            (let ((_body3133731450_
                                   (reverse _body3133631437_)))
                              (___kont4609546096_
                               _body3133731450_
                               _expr3132131418_
                               _hd3132231421_))))))
              (_loop3133231430_ _target3132931424_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3126031343_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3126031343_))))))))
                        (_loop3131531376_ _target3131231370_ '() '()))))
                   (___match4616946170_
                    (lambda (_e3130631350_
                             _hd3130731354_
                             _tl3130831357_
                             _e3130931360_
                             _hd3131031364_
                             _tl3131131367_)
                      (if (gx#stx-pair/null? _hd3131031364_)
                          (let ((___splice4609746098_
                                 (gx#syntax-split-splice _hd3131031364_ '0)))
                            (let ((_tl3131431373_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4609746098_ '1)))
                                  (_target3131231370_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4609746098_ '0))))
                              (if (gx#stx-null? _tl3131431373_)
                                  (___match4617746178_
                                   _e3130631350_
                                   _hd3130731354_
                                   _tl3130831357_
                                   _e3130931360_
                                   _hd3131031364_
                                   _tl3131131367_
                                   ___splice4609746098_
                                   _target3131231370_
                                   _tl3131431373_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3126031343_)))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                   (___match4615746158_
                    (lambda (_e3128231511_
                             _hd3128331515_
                             _tl3128431518_
                             _e3128531521_
                             _hd3128631525_
                             _tl3128731528_
                             _e3128831531_
                             _hd3128931535_
                             _tl3129031538_
                             _e3129131541_
                             _hd3129231545_
                             _tl3129331548_
                             ___splice4609346094_
                             _target3129431551_
                             _tl3129631554_)
                      (letrec ((_loop3129731557_
                                (lambda (_hd3129531561_ _body3130131564_)
                                  (if (gx#stx-pair? _hd3129531561_)
                                      (let ((_e3129831567_
                                             (gx#syntax-e _hd3129531561_)))
                                        (let ((_lp-tl3130031574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3129831567_)))
                                              (_lp-hd3129931571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3129831567_))))
                                          (_loop3129731557_
                                           _lp-tl3130031574_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3129931571_
                                                   _body3130131564_)))))
                                      (let ((_body3130231577_
                                             (reverse _body3130131564_)))
                                        (let ((_L31581_ _body3130231577_)
                                              (_L31583_ _hd3129231545_)
                                              (_L31584_ _hd3128931535_)
                                              (_L31585_ _hd3128331515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31584_))
                                              (___kont4609146092_
                                               _L31581_
                                               _L31583_
                                               _L31584_
                                               _L31585_)
                                              (___match4616946170_
                                               _e3128231511_
                                               _hd3128331515_
                                               _tl3128431518_
                                               _e3128531521_
                                               _hd3128631525_
                                               _tl3128731528_))))))))
                        (_loop3129731557_ _target3129431551_ '()))))
                   (___match4612346124_
                    (lambda (_e3126331623_
                             _hd3126431627_
                             _tl3126531630_
                             _e3126631633_
                             _hd3126731637_
                             _tl3126831640_
                             ___splice4608946090_
                             _target3126931643_
                             _tl3127131646_)
                      (letrec ((_loop3127231649_
                                (lambda (_hd3127031653_ _body3127631656_)
                                  (if (gx#stx-pair? _hd3127031653_)
                                      (let ((_e3127331659_
                                             (gx#syntax-e _hd3127031653_)))
                                        (let ((_lp-tl3127531666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3127331659_)))
                                              (_lp-hd3127431663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3127331659_))))
                                          (_loop3127231649_
                                           _lp-tl3127531666_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3127431663_
                                                   _body3127631656_)))))
                                      (let ((_body3127731669_
                                             (reverse _body3127631656_)))
                                        (___kont4608746088_
                                         _body3127731669_))))))
                        (_loop3127231649_ _target3126931643_ '())))))
              (if (gx#stx-pair? ___stx4608446085_)
                  (let ((_e3126331623_ (gx#syntax-e ___stx4608446085_)))
                    (let ((_tl3126531630_
                           (let () (declare (not safe)) (##cdr _e3126331623_)))
                          (_hd3126431627_
                           (let ()
                             (declare (not safe))
                             (##car _e3126331623_))))
                      (if (gx#stx-pair? _tl3126531630_)
                          (let ((_e3126631633_ (gx#syntax-e _tl3126531630_)))
                            (let ((_tl3126831640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3126631633_)))
                                  (_hd3126731637_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3126631633_))))
                              (if (gx#stx-null? _hd3126731637_)
                                  (if (gx#stx-pair/null? _tl3126831640_)
                                      (let ((___splice4608946090_
                                             (gx#syntax-split-splice
                                              _tl3126831640_
                                              '0)))
                                        (let ((_tl3127131646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4608946090_
                                                  '1)))
                                              (_target3126931643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4608946090_
                                                  '0))))
                                          (if (gx#stx-null? _tl3127131646_)
                                              (___match4612346124_
                                               _e3126331623_
                                               _hd3126431627_
                                               _tl3126531630_
                                               _e3126631633_
                                               _hd3126731637_
                                               _tl3126831640_
                                               ___splice4608946090_
                                               _target3126931643_
                                               _tl3127131646_)
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4609746098_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4609746098_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4609746098_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4617746178_
                                                           _e3126331623_
                                                           _hd3126431627_
                                                           _tl3126531630_
                                                           _e3126631633_
                                                           _hd3126731637_
                                                           _tl3126831640_
                                                           ___splice4609746098_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4609746098_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4609746098_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4609746098_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4617746178_
                                                   _e3126331623_
                                                   _hd3126431627_
                                                   _tl3126531630_
                                                   _e3126631633_
                                                   _hd3126731637_
                                                   _tl3126831640_
                                                   ___splice4609746098_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_))))
                                  (if (gx#stx-pair? _hd3126731637_)
                                      (let ((_e3128831531_
                                             (gx#syntax-e _hd3126731637_)))
                                        (let ((_tl3129031538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3128831531_)))
                                              (_hd3128931535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3128831531_))))
                                          (if (gx#stx-pair? _tl3129031538_)
                                              (let ((_e3129131541_
                                                     (gx#syntax-e
                                                      _tl3129031538_)))
                                                (let ((_tl3129331548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3129131541_)))
                                                      (_hd3129231545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3129131541_))))
                                                  (if (gx#stx-null?
                                                       _tl3129331548_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3126831640_)
                                                          (let ((___splice4609346094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3126831640_ '0)))
                    (let ((_tl3129631554_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4609346094_ '1)))
                          (_target3129431551_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4609346094_ '0))))
                      (if (gx#stx-null? _tl3129631554_)
                          (___match4615746158_
                           _e3126331623_
                           _hd3126431627_
                           _tl3126531630_
                           _e3126631633_
                           _hd3126731637_
                           _tl3126831640_
                           _e3128831531_
                           _hd3128931535_
                           _tl3129031538_
                           _e3129131541_
                           _hd3129231545_
                           _tl3129331548_
                           ___splice4609346094_
                           _target3129431551_
                           _tl3129631554_)
                          (if (gx#stx-pair/null? _hd3126731637_)
                              (let ((___splice4609746098_
                                     (gx#syntax-split-splice
                                      _hd3126731637_
                                      '0)))
                                (let ((_tl3131431373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4609746098_
                                          '1)))
                                      (_target3131231370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4609746098_
                                          '0))))
                                  (if (gx#stx-null? _tl3131431373_)
                                      (___match4617746178_
                                       _e3126331623_
                                       _hd3126431627_
                                       _tl3126531630_
                                       _e3126631633_
                                       _hd3126731637_
                                       _tl3126831640_
                                       ___splice4609746098_
                                       _target3131231370_
                                       _tl3131431373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3126031343_)))))
                              (let () (declare (not safe)) (_g3126031343_))))))
                  (if (gx#stx-pair/null? _hd3126731637_)
                      (let ((___splice4609746098_
                             (gx#syntax-split-splice _hd3126731637_ '0)))
                        (let ((_tl3131431373_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4609746098_ '1)))
                              (_target3131231370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4609746098_ '0))))
                          (if (gx#stx-null? _tl3131431373_)
                              (___match4617746178_
                               _e3126331623_
                               _hd3126431627_
                               _tl3126531630_
                               _e3126631633_
                               _hd3126731637_
                               _tl3126831640_
                               ___splice4609746098_
                               _target3131231370_
                               _tl3131431373_)
                              (let () (declare (not safe)) (_g3126031343_)))))
                      (let () (declare (not safe)) (_g3126031343_))))
              (if (gx#stx-pair/null? _hd3126731637_)
                  (let ((___splice4609746098_
                         (gx#syntax-split-splice _hd3126731637_ '0)))
                    (let ((_tl3131431373_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4609746098_ '1)))
                          (_target3131231370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4609746098_ '0))))
                      (if (gx#stx-null? _tl3131431373_)
                          (___match4617746178_
                           _e3126331623_
                           _hd3126431627_
                           _tl3126531630_
                           _e3126631633_
                           _hd3126731637_
                           _tl3126831640_
                           ___splice4609746098_
                           _target3131231370_
                           _tl3131431373_)
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4609746098_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4609746098_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4609746098_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4617746178_
                                                           _e3126331623_
                                                           _hd3126431627_
                                                           _tl3126531630_
                                                           _e3126631633_
                                                           _hd3126731637_
                                                           _tl3126831640_
                                                           ___splice4609746098_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4609746098_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4609746098_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4609746098_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4617746178_
                                                   _e3126331623_
                                                   _hd3126431627_
                                                   _tl3126531630_
                                                   _e3126631633_
                                                   _hd3126731637_
                                                   _tl3126831640_
                                                   ___splice4609746098_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_)))))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31706_)
        (let* ((___stx4618046181_ _$stx31706_)
               (_g3171131763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4618046181_))))
          (let ((___kont4618346184_
                 (lambda (_L31933_ _L31935_ _L31936_ _L31937_ _L31938_)
                   (let ((__tmp50506 (gx#datum->syntax '#f 'with))
                         (__tmp50497
                          (let ((__tmp50503
                                 (let ((__tmp50504
                                        (let ((__tmp50505
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31936_ '()))))
                                          (declare (not safe))
                                          (cons _L31937_ __tmp50505))))
                                   (declare (not safe))
                                   (cons __tmp50504 '())))
                                (__tmp50498
                                 (let ((__tmp50499
                                        (let ((__tmp50500
                                               (let ((__tmp50501
                                                      (let ((__tmp50502
                                                             (lambda (_g3196331966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3196431969_)
                       (let ()
                         (declare (not safe))
                         (cons _g3196331966_ _g3196431969_)))))
                (declare (not safe))
                (foldr1 __tmp50502 '() _L31933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31935_ __tmp50501))))
                                          (declare (not safe))
                                          (cons _L31938_ __tmp50500))))
                                   (declare (not safe))
                                   (cons __tmp50499 '()))))
                            (declare (not safe))
                            (cons __tmp50503 __tmp50498))))
                     (declare (not safe))
                     (cons __tmp50506 __tmp50497))))
                (___kont4618746188_
                 (lambda (_L31820_)
                   (let ((__tmp50510 (gx#datum->syntax '#f 'let))
                         (__tmp50507
                          (let ((__tmp50508
                                 (let ((__tmp50509
                                        (lambda (_g3183731840_ _g3183831843_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3183731840_
                                                  _g3183831843_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50509 '() _L31820_))))
                            (declare (not safe))
                            (cons '() __tmp50508))))
                     (declare (not safe))
                     (cons __tmp50510 __tmp50507)))))
            (let* ((___match4625346254_
                    (lambda (_e3174331770_
                             _hd3174431774_
                             _tl3174531777_
                             _e3174631780_
                             _hd3174731784_
                             _tl3174831787_
                             ___splice4618946190_
                             _target3174931790_
                             _tl3175131793_)
                      (letrec ((_loop3175231796_
                                (lambda (_hd3175031800_ _body3175631803_)
                                  (if (gx#stx-pair? _hd3175031800_)
                                      (let ((_e3175331806_
                                             (gx#syntax-e _hd3175031800_)))
                                        (let ((_lp-tl3175531813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3175331806_)))
                                              (_lp-hd3175431810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3175331806_))))
                                          (_loop3175231796_
                                           _lp-tl3175531813_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3175431810_
                                                   _body3175631803_)))))
                                      (let ((_body3175731816_
                                             (reverse _body3175631803_)))
                                        (___kont4618746188_
                                         _body3175731816_))))))
                        (_loop3175231796_ _target3174931790_ '()))))
                   (___match4623146232_
                    (lambda (_e3171831853_
                             _hd3171931857_
                             _tl3172031860_
                             _e3172131863_
                             _hd3172231867_
                             _tl3172331870_
                             _e3172431873_
                             _hd3172531877_
                             _tl3172631880_
                             _e3172731883_
                             _hd3172831887_
                             _tl3172931890_
                             _e3173031893_
                             _hd3173131897_
                             _tl3173231900_
                             ___splice4618546186_
                             _target3173331903_
                             _tl3173531906_)
                      (letrec ((_loop3173631909_
                                (lambda (_hd3173431913_ _body3174031916_)
                                  (if (gx#stx-pair? _hd3173431913_)
                                      (let ((_e3173731919_
                                             (gx#syntax-e _hd3173431913_)))
                                        (let ((_lp-tl3173931926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3173731919_)))
                                              (_lp-hd3173831923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3173731919_))))
                                          (_loop3173631909_
                                           _lp-tl3173931926_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3173831923_
                                                   _body3174031916_)))))
                                      (let ((_body3174131929_
                                             (reverse _body3174031916_)))
                                        (___kont4618346184_
                                         _body3174131929_
                                         _tl3172631880_
                                         _hd3173131897_
                                         _hd3172831887_
                                         _hd3171931857_))))))
                        (_loop3173631909_ _target3173331903_ '())))))
              (if (gx#stx-pair? ___stx4618046181_)
                  (let ((_e3171831853_ (gx#syntax-e ___stx4618046181_)))
                    (let ((_tl3172031860_
                           (let () (declare (not safe)) (##cdr _e3171831853_)))
                          (_hd3171931857_
                           (let ()
                             (declare (not safe))
                             (##car _e3171831853_))))
                      (if (gx#stx-pair? _tl3172031860_)
                          (let ((_e3172131863_ (gx#syntax-e _tl3172031860_)))
                            (let ((_tl3172331870_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3172131863_)))
                                  (_hd3172231867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3172131863_))))
                              (if (gx#stx-pair? _hd3172231867_)
                                  (let ((_e3172431873_
                                         (gx#syntax-e _hd3172231867_)))
                                    (let ((_tl3172631880_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3172431873_)))
                                          (_hd3172531877_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3172431873_))))
                                      (if (gx#stx-pair? _hd3172531877_)
                                          (let ((_e3172731883_
                                                 (gx#syntax-e _hd3172531877_)))
                                            (let ((_tl3172931890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3172731883_)))
                                                  (_hd3172831887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3172731883_))))
                                              (if (gx#stx-pair? _tl3172931890_)
                                                  (let ((_e3173031893_
                                                         (gx#syntax-e
                                                          _tl3172931890_)))
                                                    (let ((_tl3173231900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3173031893_)))
                                                          (_hd3173131897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3173031893_))))
                                                      (if (gx#stx-null?
                                                           _tl3173231900_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3172331870_)
                                                              (let ((___splice4618546186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3172331870_ '0)))
                        (let ((_tl3173531906_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4618546186_ '1)))
                              (_target3173331903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4618546186_ '0))))
                          (if (gx#stx-null? _tl3173531906_)
                              (___match4623146232_
                               _e3171831853_
                               _hd3171931857_
                               _tl3172031860_
                               _e3172131863_
                               _hd3172231867_
                               _tl3172331870_
                               _e3172431873_
                               _hd3172531877_
                               _tl3172631880_
                               _e3172731883_
                               _hd3172831887_
                               _tl3172931890_
                               _e3173031893_
                               _hd3173131897_
                               _tl3173231900_
                               ___splice4618546186_
                               _target3173331903_
                               _tl3173531906_)
                              (let () (declare (not safe)) (_g3171131763_)))))
                      (let () (declare (not safe)) (_g3171131763_)))
                  (let () (declare (not safe)) (_g3171131763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))))
                                  (if (gx#stx-null? _hd3172231867_)
                                      (if (gx#stx-pair/null? _tl3172331870_)
                                          (let ((___splice4618946190_
                                                 (gx#syntax-split-splice
                                                  _tl3172331870_
                                                  '0)))
                                            (let ((_tl3175131793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4618946190_
                                                      '1)))
                                                  (_target3174931790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4618946190_
                                                      '0))))
                                              (if (gx#stx-null? _tl3175131793_)
                                                  (___match4625346254_
                                                   _e3171831853_
                                                   _hd3171931857_
                                                   _tl3172031860_
                                                   _e3172131863_
                                                   _hd3172231867_
                                                   _tl3172331870_
                                                   ___splice4618946190_
                                                   _target3174931790_
                                                   _tl3175131793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3171131763_))))))
                          (let () (declare (not safe)) (_g3171131763_)))))
                  (let () (declare (not safe)) (_g3171131763_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31978_)
        (let* ((___stx4625646257_ _$stx31978_)
               (_g3198932135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4625646257_))))
          (let ((___kont4625946260_
                 (lambda (_L32739_ _L32741_ _L32742_)
                   (let ((__tmp50516 (gx#datum->syntax '#f 'and))
                         (__tmp50511
                          (let ((__tmp50512
                                 (lambda (_g3276332766_ _g3276432769_)
                                   (let ((__tmp50513
                                          (let ((__tmp50514
                                                 (let ((__tmp50515
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32739_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3276332766_
                                                         __tmp50515))))
                                            (declare (not safe))
                                            (cons _L32742_ __tmp50514))))
                                     (declare (not safe))
                                     (cons __tmp50513 _g3276432769_)))))
                            (declare (not safe))
                            (foldr1 __tmp50512 '() _L32741_))))
                     (declare (not safe))
                     (cons __tmp50516 __tmp50511))))
                (___kont4626346264_
                 (lambda (_L32629_ _L32631_ _L32632_)
                   (let ((__tmp50522 (gx#datum->syntax '#f 'or))
                         (__tmp50517
                          (let ((__tmp50518
                                 (lambda (_g3265332656_ _g3265432659_)
                                   (let ((__tmp50519
                                          (let ((__tmp50520
                                                 (let ((__tmp50521
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32629_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3265332656_
                                                         __tmp50521))))
                                            (declare (not safe))
                                            (cons _L32632_ __tmp50520))))
                                     (declare (not safe))
                                     (cons __tmp50519 _g3265432659_)))))
                            (declare (not safe))
                            (foldr1 __tmp50518 '() _L32631_))))
                     (declare (not safe))
                     (cons __tmp50522 __tmp50517))))
                (___kont4626746268_
                 (lambda (_L32529_ _L32531_ _L32532_)
                   (let ((__tmp50527 (gx#datum->syntax '#f 'not))
                         (__tmp50523
                          (let ((__tmp50524
                                 (let ((__tmp50525
                                        (let ((__tmp50526
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32529_ '()))))
                                          (declare (not safe))
                                          (cons _L32531_ __tmp50526))))
                                   (declare (not safe))
                                   (cons _L32532_ __tmp50525))))
                            (declare (not safe))
                            (cons __tmp50524 '()))))
                     (declare (not safe))
                     (cons __tmp50527 __tmp50523))))
                (___kont4626946270_
                 (lambda (_L32455_ _L32457_)
                   (let ((__tmp50528
                          (let () (declare (not safe)) (cons _L32455_ '()))))
                     (declare (not safe))
                     (cons _L32457_ __tmp50528))))
                (___kont4627146272_
                 (lambda (_L32403_ _L32405_)
                   (let ((__tmp50537 (gx#datum->syntax '#f 'lambda))
                         (__tmp50529
                          (let ((__tmp50535
                                 (let ((__tmp50536
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50536 '())))
                                (__tmp50530
                                 (let ((__tmp50531
                                        (let ((__tmp50532
                                               (let ((__tmp50533
                                                      (let ((__tmp50534
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50534
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32403_ __tmp50533))))
                                          (declare (not safe))
                                          (cons _L32405_ __tmp50532))))
                                   (declare (not safe))
                                   (cons __tmp50531 '()))))
                            (declare (not safe))
                            (cons __tmp50535 __tmp50530))))
                     (declare (not safe))
                     (cons __tmp50537 __tmp50529))))
                (___kont4627346274_
                 (lambda (_L32355_ _L32357_ _L32358_)
                   (let ((__tmp50556 (gx#datum->syntax '#f 'lambda))
                         (__tmp50538
                          (let ((__tmp50554
                                 (let ((__tmp50555
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50555 '())))
                                (__tmp50539
                                 (let ((__tmp50540
                                        (let ((__tmp50553
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50541
                                               (let ((__tmp50546
                                                      (let ((__tmp50552
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50547
                                                             (let ((__tmp50548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50549
                                   (let ((__tmp50550
                                          (let ((__tmp50551
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50551 '()))))
                                     (declare (not safe))
                                     (cons _L32357_ __tmp50550))))
                              (declare (not safe))
                              (cons _L32358_ __tmp50549))))
                       (declare (not safe))
                       (cons __tmp50548 '()))))
                (declare (not safe))
                (cons __tmp50552 __tmp50547)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50542
                                                      (let ((__tmp50543
                                                             (let ((__tmp50544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50545 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50545 '()))))
                       (declare (not safe))
                       (cons _L32355_ __tmp50544))))
                (declare (not safe))
                (cons __tmp50543 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50546
                                                       __tmp50542))))
                                          (declare (not safe))
                                          (cons __tmp50553 __tmp50541))))
                                   (declare (not safe))
                                   (cons __tmp50540 '()))))
                            (declare (not safe))
                            (cons __tmp50554 __tmp50539))))
                     (declare (not safe))
                     (cons __tmp50556 __tmp50538))))
                (___kont4627546276_
                 (lambda (_L32286_ _L32288_ _L32289_)
                   (let ((__tmp50572 (gx#datum->syntax '#f 'lambda))
                         (__tmp50557
                          (let ((__tmp50570
                                 (let ((__tmp50571
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50571 '())))
                                (__tmp50558
                                 (let ((__tmp50559
                                        (let ((__tmp50569
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50560
                                               (let ((__tmp50565
                                                      (let ((__tmp50566
                                                             (let ((__tmp50567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50568 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50568 '()))))
                       (declare (not safe))
                       (cons _L32288_ __tmp50567))))
                (declare (not safe))
                (cons _L32289_ __tmp50566)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50561
                                                      (let ((__tmp50562
                                                             (let ((__tmp50563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50564 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50564 '()))))
                       (declare (not safe))
                       (cons _L32286_ __tmp50563))))
                (declare (not safe))
                (cons __tmp50562 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50565
                                                       __tmp50561))))
                                          (declare (not safe))
                                          (cons __tmp50569 __tmp50560))))
                                   (declare (not safe))
                                   (cons __tmp50559 '()))))
                            (declare (not safe))
                            (cons __tmp50570 __tmp50558))))
                     (declare (not safe))
                     (cons __tmp50572 __tmp50557))))
                (___kont4627746278_
                 (lambda (_L32206_ _L32208_ _L32209_ _L32210_)
                   (let ((__tmp50590 (gx#datum->syntax '#f 'lambda))
                         (__tmp50573
                          (let ((__tmp50588
                                 (let ((__tmp50589
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50589 '())))
                                (__tmp50574
                                 (let ((__tmp50575
                                        (let ((__tmp50587
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50576
                                               (let ((__tmp50583
                                                      (let ((__tmp50584
                                                             (let ((__tmp50585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50586 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50586 '()))))
                       (declare (not safe))
                       (cons _L32209_ __tmp50585))))
                (declare (not safe))
                (cons _L32210_ __tmp50584)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50577
                                                      (let ((__tmp50578
                                                             (let ((__tmp50579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50580
                                   (let ((__tmp50581
                                          (let ((__tmp50582
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50582 '()))))
                                     (declare (not safe))
                                     (cons _L32208_ __tmp50581))))
                              (declare (not safe))
                              (cons __tmp50580 '()))))
                       (declare (not safe))
                       (cons _L32206_ __tmp50579))))
                (declare (not safe))
                (cons __tmp50578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50583
                                                       __tmp50577))))
                                          (declare (not safe))
                                          (cons __tmp50587 __tmp50576))))
                                   (declare (not safe))
                                   (cons __tmp50575 '()))))
                            (declare (not safe))
                            (cons __tmp50588 __tmp50574))))
                     (declare (not safe))
                     (cons __tmp50590 __tmp50573)))))
            (let* ((___match4642946430_
                    (lambda (_e3207932315_
                             _hd3208032319_
                             _tl3208132322_
                             _e3208232325_
                             _hd3208332329_
                             _tl3208432332_
                             _e3208532335_
                             _hd3208632339_
                             _tl3208732342_)
                      (if (gx#identifier? _hd3208632339_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50591_|
                               _hd3208632339_)
                              (if (gx#stx-pair? _tl3208732342_)
                                  (let ((_e3208832345_
                                         (gx#syntax-e _tl3208732342_)))
                                    (let ((_tl3209032352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3208832345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3208832345_))))
                                      (if (gx#stx-null? _tl3209032352_)
                                          (___kont4627346274_
                                           _hd3208932349_
                                           _hd3208332329_
                                           _hd3208032319_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3208632339_)
                              (let ((_e3210332272_ (gx#stx-e _hd3208632339_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3208732342_)
                                        (let ((_e3210432276_
                                               (gx#syntax-e _tl3208732342_)))
                                          (let ((_tl3210632283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210432276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210432276_))))
                                            (if (gx#stx-null? _tl3210632283_)
                                                (___kont4627546276_
                                                 _hd3210532280_
                                                 _hd3208332329_
                                                 _hd3208032319_)
                                                (if (gx#stx-pair?
                                                     _tl3210632283_)
                                                    (let ((_e3212432186_
                                                           (gx#syntax-e
                                                            _tl3210632283_)))
                                                      (let ((_tl3212632193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212432186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212432186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50592_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212632193_)
                            (let ((_e3212732196_ (gx#syntax-e _tl3212632193_)))
                              (let ((_tl3212932203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212732196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212732196_))))
                                (if (gx#stx-null? _tl3212932203_)
                                    (___kont4627746278_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3208332329_
                                     _hd3208032319_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4640946410_
                    (lambda (_e3207032383_
                             _hd3207132387_
                             _tl3207232390_
                             _e3207332393_
                             _hd3207432397_
                             _tl3207532400_)
                      (if (gx#stx-null? _tl3207532400_)
                          (___kont4627146272_ _hd3207432397_ _hd3207132387_)
                          (if (gx#stx-pair? _tl3207532400_)
                              (let ((_e3208532335_
                                     (gx#syntax-e _tl3207532400_)))
                                (let ((_tl3208732342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3208532335_)))
                                      (_hd3208632339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3208532335_))))
                                  (if (gx#identifier? _hd3208632339_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50591_|
                                           _hd3208632339_)
                                          (if (gx#stx-pair? _tl3208732342_)
                                              (let ((_e3208832345_
                                                     (gx#syntax-e
                                                      _tl3208732342_)))
                                                (let ((_tl3209032352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3208832345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3208832345_))))
                                                  (if (gx#stx-null?
                                                       _tl3209032352_)
                                                      (___kont4627346274_
                                                       _hd3208932349_
                                                       _hd3207432397_
                                                       _hd3207132387_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3208632339_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3208632339_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3208732342_)
                                                    (let ((_e3210432276_
                                                           (gx#syntax-e
                                                            _tl3208732342_)))
                                                      (let ((_tl3210632283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210432276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210432276_))))
                (if (gx#stx-null? _tl3210632283_)
                    (___kont4627546276_
                     _hd3210532280_
                     _hd3207432397_
                     _hd3207132387_)
                    (if (gx#stx-pair? _tl3210632283_)
                        (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                          (let ((_tl3212632193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212432186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212432186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50592_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212632193_)
                                        (let ((_e3212732196_
                                               (gx#syntax-e _tl3212632193_)))
                                          (let ((_tl3212932203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212732196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212732196_))))
                                            (if (gx#stx-null? _tl3212932203_)
                                                (___kont4627746278_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3207432397_
                                                 _hd3207132387_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_))))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4633946340_
                    (lambda (_e3201832559_
                             _hd3201932563_
                             _tl3202032566_
                             _e3202132569_
                             _hd3202232573_
                             _tl3202332576_
                             _e3202432579_
                             _hd3202532583_
                             _tl3202632586_
                             ___splice4626546266_
                             _target3202732589_
                             _tl3202932592_)
                      (letrec ((_loop3203032595_
                                (lambda (_hd3202832599_ _pred3203432602_)
                                  (if (gx#stx-pair? _hd3202832599_)
                                      (let ((_e3203132605_
                                             (gx#syntax-e _hd3202832599_)))
                                        (let ((_lp-tl3203332612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3203132605_)))
                                              (_lp-hd3203232609_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3203132605_))))
                                          (_loop3203032595_
                                           _lp-tl3203332612_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3203232609_
                                                   _pred3203432602_)))))
                                      (let ((_pred3203532615_
                                             (reverse _pred3203432602_)))
                                        (if (gx#stx-pair? _tl3202332576_)
                                            (let ((_e3203632619_
                                                   (gx#syntax-e
                                                    _tl3202332576_)))
                                              (let ((_tl3203832626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3203632619_)))
                                                    (_hd3203732623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3203632619_))))
                                                (if (gx#stx-null?
                                                     _tl3203832626_)
                                                    (___kont4626346264_
                                                     _hd3203732623_
                                                     _pred3203532615_
                                                     _hd3201932563_)
                                                    (___match4642946430_
                                                     _e3201832559_
                                                     _hd3201932563_
                                                     _tl3202032566_
                                                     _e3202132569_
                                                     _hd3202232573_
                                                     _tl3202332576_
                                                     _e3203632619_
                                                     _hd3203732623_
                                                     _tl3203832626_))))
                                            (___match4640946410_
                                             _e3201832559_
                                             _hd3201932563_
                                             _tl3202032566_
                                             _e3202132569_
                                             _hd3202232573_
                                             _tl3202332576_)))))))
                        (_loop3203032595_ _target3202732589_ '()))))
                   (___match4630946310_
                    (lambda (_e3199432669_
                             _hd3199532673_
                             _tl3199632676_
                             _e3199732679_
                             _hd3199832683_
                             _tl3199932686_
                             _e3200032689_
                             _hd3200132693_
                             _tl3200232696_
                             ___splice4626146262_
                             _target3200332699_
                             _tl3200532702_)
                      (letrec ((_loop3200632705_
                                (lambda (_hd3200432709_ _pred3201032712_)
                                  (if (gx#stx-pair? _hd3200432709_)
                                      (let ((_e3200732715_
                                             (gx#syntax-e _hd3200432709_)))
                                        (let ((_lp-tl3200932722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3200732715_)))
                                              (_lp-hd3200832719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3200732715_))))
                                          (_loop3200632705_
                                           _lp-tl3200932722_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3200832719_
                                                   _pred3201032712_)))))
                                      (let ((_pred3201132725_
                                             (reverse _pred3201032712_)))
                                        (if (gx#stx-pair? _tl3199932686_)
                                            (let ((_e3201232729_
                                                   (gx#syntax-e
                                                    _tl3199932686_)))
                                              (let ((_tl3201432736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3201232729_)))
                                                    (_hd3201332733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3201232729_))))
                                                (if (gx#stx-null?
                                                     _tl3201432736_)
                                                    (___kont4625946260_
                                                     _hd3201332733_
                                                     _pred3201132725_
                                                     _hd3199532673_)
                                                    (___match4642946430_
                                                     _e3199432669_
                                                     _hd3199532673_
                                                     _tl3199632676_
                                                     _e3199732679_
                                                     _hd3199832683_
                                                     _tl3199932686_
                                                     _e3201232729_
                                                     _hd3201332733_
                                                     _tl3201432736_))))
                                            (___match4640946410_
                                             _e3199432669_
                                             _hd3199532673_
                                             _tl3199632676_
                                             _e3199732679_
                                             _hd3199832683_
                                             _tl3199932686_)))))))
                        (_loop3200632705_ _target3200332699_ '())))))
              (if (gx#stx-pair? ___stx4625646257_)
                  (let ((_e3199432669_ (gx#syntax-e ___stx4625646257_)))
                    (let ((_tl3199632676_
                           (let () (declare (not safe)) (##cdr _e3199432669_)))
                          (_hd3199532673_
                           (let ()
                             (declare (not safe))
                             (##car _e3199432669_))))
                      (if (gx#stx-pair? _tl3199632676_)
                          (let ((_e3199732679_ (gx#syntax-e _tl3199632676_)))
                            (let ((_tl3199932686_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3199732679_)))
                                  (_hd3199832683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3199732679_))))
                              (if (gx#stx-pair? _hd3199832683_)
                                  (let ((_e3200032689_
                                         (gx#syntax-e _hd3199832683_)))
                                    (let ((_tl3200232696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3200032689_)))
                                          (_hd3200132693_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3200032689_))))
                                      (if (gx#identifier? _hd3200132693_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50593_|
                                               _hd3200132693_)
                                              (if (gx#stx-pair/null?
                                                   _tl3200232696_)
                                                  (let ((___splice4626146262_
                                                         (gx#syntax-split-splice
                                                          _tl3200232696_
                                                          '0)))
                                                    (let ((_tl3200532702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4626146262_
                                                              '1)))
                                                          (_target3200332699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4626146262_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3200532702_)
                                                          (___match4630946310_
                                                           _e3199432669_
                                                           _hd3199532673_
                                                           _tl3199632676_
                                                           _e3199732679_
                                                           _hd3199832683_
                                                           _tl3199932686_
                                                           _e3200032689_
                                                           _hd3200132693_
                                                           _tl3200232696_
                                                           ___splice4626146262_
                                                           _target3200332699_
                                                           _tl3200532702_)
                                                          (if (gx#stx-pair?
                                                               _tl3199932686_)
                                                              (let ((_e3206532445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3199932686_)))
                        (let ((_tl3206732452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206532445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206532445_))))
                          (if (gx#stx-null? _tl3206732452_)
                              (___kont4626946270_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50591_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206732452_)
                                          (let ((_e3208832345_
                                                 (gx#syntax-e _tl3206732452_)))
                                            (let ((_tl3209032352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3208832345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3208832345_))))
                                              (if (gx#stx-null? _tl3209032352_)
                                                  (___kont4627346274_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206732452_)
                                                (let ((_e3210432276_
                                                       (gx#syntax-e
                                                        _tl3206732452_)))
                                                  (let ((_tl3210632283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210432276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210432276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210632283_)
                                                        (___kont4627546276_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210632283_)
                                                            (let ((_e3212432186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210632283_)))
                      (let ((_tl3212632193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212432186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212432186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50592_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212632193_)
                                    (let ((_e3212732196_
                                           (gx#syntax-e _tl3212632193_)))
                                      (let ((_tl3212932203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212732196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212732196_))))
                                        (if (gx#stx-null? _tl3212932203_)
                                            (___kont4627746278_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199932686_)
                          (___kont4627146272_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3199932686_)
                                                      (let ((_e3206532445_
                                                             (gx#syntax-e
                                                              _tl3199932686_)))
                                                        (let ((_tl3206732452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3206532445_)))
                      (_hd3206632449_
                       (let () (declare (not safe)) (##car _e3206532445_))))
                  (if (gx#stx-null? _tl3206732452_)
                      (___kont4626946270_ _hd3206632449_ _hd3199832683_)
                      (if (gx#identifier? _hd3206632449_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50591_|
                               _hd3206632449_)
                              (if (gx#stx-pair? _tl3206732452_)
                                  (let ((_e3208832345_
                                         (gx#syntax-e _tl3206732452_)))
                                    (let ((_tl3209032352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3208832345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3208832345_))))
                                      (if (gx#stx-null? _tl3209032352_)
                                          (___kont4627346274_
                                           _hd3208932349_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3206632449_)
                              (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3206732452_)
                                        (let ((_e3210432276_
                                               (gx#syntax-e _tl3206732452_)))
                                          (let ((_tl3210632283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210432276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210432276_))))
                                            (if (gx#stx-null? _tl3210632283_)
                                                (___kont4627546276_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (if (gx#stx-pair?
                                                     _tl3210632283_)
                                                    (let ((_e3212432186_
                                                           (gx#syntax-e
                                                            _tl3210632283_)))
                                                      (let ((_tl3212632193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212432186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212432186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50592_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212632193_)
                            (let ((_e3212732196_ (gx#syntax-e _tl3212632193_)))
                              (let ((_tl3212932203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212732196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212732196_))))
                                (if (gx#stx-null? _tl3212932203_)
                                    (___kont4627746278_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3199832683_
                                     _hd3199532673_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-null? _tl3199932686_)
                  (___kont4627146272_ _hd3199832683_ _hd3199532673_)
                  (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50594_|
                                                   _hd3200132693_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3200232696_)
                                                      (let ((___splice4626546266_
                                                             (gx#syntax-split-splice
                                                              _tl3200232696_
                                                              '0)))
                                                        (let ((_tl3202932592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4626546266_ '1)))
                      (_target3202732589_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4626546266_ '0))))
                  (if (gx#stx-null? _tl3202932592_)
                      (___match4633946340_
                       _e3199432669_
                       _hd3199532673_
                       _tl3199632676_
                       _e3199732679_
                       _hd3199832683_
                       _tl3199932686_
                       _e3200032689_
                       _hd3200132693_
                       _tl3200232696_
                       ___splice4626546266_
                       _target3202732589_
                       _tl3202932592_)
                      (if (gx#stx-pair? _tl3199932686_)
                          (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                            (let ((_tl3206732452_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3206532445_)))
                                  (_hd3206632449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3206532445_))))
                              (if (gx#stx-null? _tl3206732452_)
                                  (___kont4626946270_
                                   _hd3206632449_
                                   _hd3199832683_)
                                  (if (gx#identifier? _hd3206632449_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50591_|
                                           _hd3206632449_)
                                          (if (gx#stx-pair? _tl3206732452_)
                                              (let ((_e3208832345_
                                                     (gx#syntax-e
                                                      _tl3206732452_)))
                                                (let ((_tl3209032352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3208832345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3208832345_))))
                                                  (if (gx#stx-null?
                                                       _tl3209032352_)
                                                      (___kont4627346274_
                                                       _hd3208932349_
                                                       _hd3199832683_
                                                       _hd3199532673_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3206632449_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3206632449_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3206732452_)
                                                    (let ((_e3210432276_
                                                           (gx#syntax-e
                                                            _tl3206732452_)))
                                                      (let ((_tl3210632283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210432276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210432276_))))
                (if (gx#stx-null? _tl3210632283_)
                    (___kont4627546276_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (if (gx#stx-pair? _tl3210632283_)
                        (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                          (let ((_tl3212632193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212432186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212432186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50592_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212632193_)
                                        (let ((_e3212732196_
                                               (gx#syntax-e _tl3212632193_)))
                                          (let ((_tl3212932203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212732196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212732196_))))
                                            (if (gx#stx-null? _tl3212932203_)
                                                (___kont4627746278_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (if (gx#stx-null? _tl3199932686_)
                              (___kont4627146272_
                               _hd3199832683_
                               _hd3199532673_)
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-pair? _tl3199932686_)
                  (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                    (let ((_tl3206732452_
                           (let () (declare (not safe)) (##cdr _e3206532445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206532445_))))
                      (if (gx#stx-null? _tl3206732452_)
                          (___kont4626946270_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50591_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206732452_)
                                      (let ((_e3208832345_
                                             (gx#syntax-e _tl3206732452_)))
                                        (let ((_tl3209032352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3208832345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3208832345_))))
                                          (if (gx#stx-null? _tl3209032352_)
                                              (___kont4627346274_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206732452_)
                                            (let ((_e3210432276_
                                                   (gx#syntax-e
                                                    _tl3206732452_)))
                                              (let ((_tl3210632283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210432276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210432276_))))
                                                (if (gx#stx-null?
                                                     _tl3210632283_)
                                                    (___kont4627546276_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210632283_)
                                                        (let ((_e3212432186_
                                                               (gx#syntax-e
                                                                _tl3210632283_)))
                                                          (let ((_tl3212632193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212432186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212432186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50592_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212632193_)
                                (let ((_e3212732196_
                                       (gx#syntax-e _tl3212632193_)))
                                  (let ((_tl3212932203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212732196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212732196_))))
                                    (if (gx#stx-null? _tl3212932203_)
                                        (___kont4627746278_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199932686_)
                      (___kont4627146272_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50595_|
                                                       _hd3200132693_)
                                                      (if (gx#stx-pair?
                                                           _tl3200232696_)
                                                          (let ((_e3205132509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3200232696_)))
                    (let ((_tl3205332516_
                           (let () (declare (not safe)) (##cdr _e3205132509_)))
                          (_hd3205232513_
                           (let ()
                             (declare (not safe))
                             (##car _e3205132509_))))
                      (if (gx#stx-null? _tl3205332516_)
                          (if (gx#stx-pair? _tl3199932686_)
                              (let ((_e3205432519_
                                     (gx#syntax-e _tl3199932686_)))
                                (let ((_tl3205632526_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3205432519_)))
                                      (_hd3205532523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3205432519_))))
                                  (if (gx#stx-null? _tl3205632526_)
                                      (___kont4626746268_
                                       _hd3205532523_
                                       _hd3205232513_
                                       _hd3199532673_)
                                      (if (gx#identifier? _hd3205532523_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50591_|
                                               _hd3205532523_)
                                              (if (gx#stx-pair? _tl3205632526_)
                                                  (let ((_e3208832345_
                                                         (gx#syntax-e
                                                          _tl3205632526_)))
                                                    (let ((_tl3209032352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3208832345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3208832345_))))
                                                      (if (gx#stx-null?
                                                           _tl3209032352_)
                                                          (___kont4627346274_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3205532523_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3205532523_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3205632526_)
                                                        (let ((_e3210432276_
                                                               (gx#syntax-e
                                                                _tl3205632526_)))
                                                          (let ((_tl3210632283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210432276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210432276_))))
                    (if (gx#stx-null? _tl3210632283_)
                        (___kont4627546276_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210632283_)
                            (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                              (let ((_tl3212632193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212432186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212432186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50592_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212632193_)
                                            (let ((_e3212732196_
                                                   (gx#syntax-e
                                                    _tl3212632193_)))
                                              (let ((_tl3212932203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212732196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212732196_))))
                                                (if (gx#stx-null?
                                                     _tl3212932203_)
                                                    (___kont4627746278_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199932686_)
                                  (___kont4627146272_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_))))
                          (if (gx#stx-pair? _tl3199932686_)
                              (let ((_e3206532445_
                                     (gx#syntax-e _tl3199932686_)))
                                (let ((_tl3206732452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3206532445_)))
                                      (_hd3206632449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3206532445_))))
                                  (if (gx#stx-null? _tl3206732452_)
                                      (___kont4626946270_
                                       _hd3206632449_
                                       _hd3199832683_)
                                      (if (gx#identifier? _hd3206632449_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50591_|
                                               _hd3206632449_)
                                              (if (gx#stx-pair? _tl3206732452_)
                                                  (let ((_e3208832345_
                                                         (gx#syntax-e
                                                          _tl3206732452_)))
                                                    (let ((_tl3209032352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3208832345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3208832345_))))
                                                      (if (gx#stx-null?
                                                           _tl3209032352_)
                                                          (___kont4627346274_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3206632449_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3206632449_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3206732452_)
                                                        (let ((_e3210432276_
                                                               (gx#syntax-e
                                                                _tl3206732452_)))
                                                          (let ((_tl3210632283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210432276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210432276_))))
                    (if (gx#stx-null? _tl3210632283_)
                        (___kont4627546276_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210632283_)
                            (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                              (let ((_tl3212632193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212432186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212432186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50592_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212632193_)
                                            (let ((_e3212732196_
                                                   (gx#syntax-e
                                                    _tl3212632193_)))
                                              (let ((_tl3212932203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212732196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212732196_))))
                                                (if (gx#stx-null?
                                                     _tl3212932203_)
                                                    (___kont4627746278_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199932686_)
                                  (___kont4627146272_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-pair? _tl3199932686_)
                      (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                        (let ((_tl3206732452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206532445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206532445_))))
                          (if (gx#stx-null? _tl3206732452_)
                              (___kont4626946270_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50591_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206732452_)
                                          (let ((_e3208832345_
                                                 (gx#syntax-e _tl3206732452_)))
                                            (let ((_tl3209032352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3208832345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3208832345_))))
                                              (if (gx#stx-null? _tl3209032352_)
                                                  (___kont4627346274_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206732452_)
                                                (let ((_e3210432276_
                                                       (gx#syntax-e
                                                        _tl3206732452_)))
                                                  (let ((_tl3210632283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210432276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210432276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210632283_)
                                                        (___kont4627546276_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210632283_)
                                                            (let ((_e3212432186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210632283_)))
                      (let ((_tl3212632193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212432186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212432186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50592_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212632193_)
                                    (let ((_e3212732196_
                                           (gx#syntax-e _tl3212632193_)))
                                      (let ((_tl3212932203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212732196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212732196_))))
                                        (if (gx#stx-null? _tl3212932203_)
                                            (___kont4627746278_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199932686_)
                          (___kont4627146272_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
              (if (gx#stx-pair? _tl3199932686_)
                  (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                    (let ((_tl3206732452_
                           (let () (declare (not safe)) (##cdr _e3206532445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206532445_))))
                      (if (gx#stx-null? _tl3206732452_)
                          (___kont4626946270_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50591_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206732452_)
                                      (let ((_e3208832345_
                                             (gx#syntax-e _tl3206732452_)))
                                        (let ((_tl3209032352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3208832345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3208832345_))))
                                          (if (gx#stx-null? _tl3209032352_)
                                              (___kont4627346274_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206732452_)
                                            (let ((_e3210432276_
                                                   (gx#syntax-e
                                                    _tl3206732452_)))
                                              (let ((_tl3210632283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210432276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210432276_))))
                                                (if (gx#stx-null?
                                                     _tl3210632283_)
                                                    (___kont4627546276_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210632283_)
                                                        (let ((_e3212432186_
                                                               (gx#syntax-e
                                                                _tl3210632283_)))
                                                          (let ((_tl3212632193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212432186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212432186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50592_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212632193_)
                                (let ((_e3212732196_
                                       (gx#syntax-e _tl3212632193_)))
                                  (let ((_tl3212932203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212732196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212732196_))))
                                    (if (gx#stx-null? _tl3212932203_)
                                        (___kont4627746278_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199932686_)
                      (___kont4627146272_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3199932686_)
                                              (let ((_e3206532445_
                                                     (gx#syntax-e
                                                      _tl3199932686_)))
                                                (let ((_tl3206732452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3206532445_)))
                                                      (_hd3206632449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3206532445_))))
                                                  (if (gx#stx-null?
                                                       _tl3206732452_)
                                                      (___kont4626946270_
                                                       _hd3206632449_
                                                       _hd3199832683_)
                                                      (if (gx#identifier?
                                                           _hd3206632449_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50591_|
                                                               _hd3206632449_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3206732452_)
                          (let ((_e3208832345_ (gx#syntax-e _tl3206732452_)))
                            (let ((_tl3209032352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3208832345_)))
                                  (_hd3208932349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3208832345_))))
                              (if (gx#stx-null? _tl3209032352_)
                                  (___kont4627346274_
                                   _hd3208932349_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))
                          (let () (declare (not safe)) (_g3198932135_)))
                      (let () (declare (not safe)) (_g3198932135_)))
                  (if (gx#stx-datum? _hd3206632449_)
                      (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3210332272_ '::))
                            (if (gx#stx-pair? _tl3206732452_)
                                (let ((_e3210432276_
                                       (gx#syntax-e _tl3206732452_)))
                                  (let ((_tl3210632283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3210432276_)))
                                        (_hd3210532280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3210432276_))))
                                    (if (gx#stx-null? _tl3210632283_)
                                        (___kont4627546276_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (if (gx#stx-pair? _tl3210632283_)
                                            (let ((_e3212432186_
                                                   (gx#syntax-e
                                                    _tl3210632283_)))
                                              (let ((_tl3212632193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212432186_)))
                                                    (_hd3212532190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212432186_))))
                                                (if (gx#identifier?
                                                     _hd3212532190_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50592_|
                                                         _hd3212532190_)
                                                        (if (gx#stx-pair?
                                                             _tl3212632193_)
                                                            (let ((_e3212732196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3212632193_)))
                      (let ((_tl3212932203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212732196_)))
                            (_hd3212832200_
                             (let ()
                               (declare (not safe))
                               (##car _e3212732196_))))
                        (if (gx#stx-null? _tl3212932203_)
                            (___kont4627746278_
                             _hd3212832200_
                             _hd3210532280_
                             _hd3199832683_
                             _hd3199532673_)
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_)))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_))))
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3199932686_)
                                                  (___kont4627146272_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))))
                                  (if (gx#stx-pair? _tl3199932686_)
                                      (let ((_e3206532445_
                                             (gx#syntax-e _tl3199932686_)))
                                        (let ((_tl3206732452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3206532445_)))
                                              (_hd3206632449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3206532445_))))
                                          (if (gx#stx-null? _tl3206732452_)
                                              (___kont4626946270_
                                               _hd3206632449_
                                               _hd3199832683_)
                                              (if (gx#identifier?
                                                   _hd3206632449_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50591_|
                                                       _hd3206632449_)
                                                      (if (gx#stx-pair?
                                                           _tl3206732452_)
                                                          (let ((_e3208832345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3206732452_)))
                    (let ((_tl3209032352_
                           (let () (declare (not safe)) (##cdr _e3208832345_)))
                          (_hd3208932349_
                           (let ()
                             (declare (not safe))
                             (##car _e3208832345_))))
                      (if (gx#stx-null? _tl3209032352_)
                          (___kont4627346274_
                           _hd3208932349_
                           _hd3199832683_
                           _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_)))
              (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3206632449_)
                                                      (let ((_e3210332272_
                                                             (gx#stx-e
                                                              _hd3206632449_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3210332272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3206732452_)
                        (let ((_e3210432276_ (gx#syntax-e _tl3206732452_)))
                          (let ((_tl3210632283_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3210432276_)))
                                (_hd3210532280_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3210432276_))))
                            (if (gx#stx-null? _tl3210632283_)
                                (___kont4627546276_
                                 _hd3210532280_
                                 _hd3199832683_
                                 _hd3199532673_)
                                (if (gx#stx-pair? _tl3210632283_)
                                    (let ((_e3212432186_
                                           (gx#syntax-e _tl3210632283_)))
                                      (let ((_tl3212632193_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212432186_)))
                                            (_hd3212532190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212432186_))))
                                        (if (gx#identifier? _hd3212532190_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50592_|
                                                 _hd3212532190_)
                                                (if (gx#stx-pair?
                                                     _tl3212632193_)
                                                    (let ((_e3212732196_
                                                           (gx#syntax-e
                                                            _tl3212632193_)))
                                                      (let ((_tl3212932203_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212732196_)))
                    (_hd3212832200_
                     (let () (declare (not safe)) (##car _e3212732196_))))
                (if (gx#stx-null? _tl3212932203_)
                    (___kont4627746278_
                     _hd3212832200_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_))))
              (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3199932686_)
                                          (___kont4627146272_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32778_)
        (let* ((___stx4652446525_ _$stx32778_)
               (_g3278332817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4652446525_))))
          (let ((___kont4652746528_
                 (lambda (_L32921_ _L32923_ _L32924_)
                   (let ((__tmp50657 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50596
                          (let ((__tmp50597
                                 (let ((__tmp50598
                                        (let ((__tmp50656
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50599
                                               (let ((__tmp50600
                                                      (let ((__tmp50601
                                                             (let ((__tmp50655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50602
                            (let ((__tmp50647
                                   (let ((__tmp50652
                                          (let ((__tmp50654
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50653
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32923_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50654 __tmp50653)))
                                         (__tmp50648
                                          (let ((__tmp50649
                                                 (let ((__tmp50651
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50650
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32921_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50651
                                                         __tmp50650))))
                                            (declare (not safe))
                                            (cons __tmp50649 '()))))
                                     (declare (not safe))
                                     (cons __tmp50652 __tmp50648)))
                                  (__tmp50603
                                   (let ((__tmp50604
                                          (let ((__tmp50646
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50605
                                                 (let ((__tmp50644
                                                        (let ((__tmp50645
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50645
                                                                '())))
                                                       (__tmp50606
                                                        (let ((__tmp50607
                                                               (let ((__tmp50643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50608
                              (let ((__tmp50642 (gx#datum->syntax '#f '$stx))
                                    (__tmp50609
                                     (let ((__tmp50610
                                            (let ((__tmp50621
                                                   (let ((__tmp50640
                                                          (let ((__tmp50641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50641)))
                 (__tmp50622
                  (let ((__tmp50623
                         (let ((__tmp50639
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50624
                                (let ((__tmp50638
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50625
                                       (let ((__tmp50626
                                              (let ((__tmp50637
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50627
                                                     (let ((__tmp50633
                                                            (let ((__tmp50636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50634
                           (let ((__tmp50635 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50635 '()))))
                      (declare (not safe))
                      (cons __tmp50636 __tmp50634)))
                   (__tmp50628
                    (let ((__tmp50629
                           (let ((__tmp50632
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50630
                                  (let ((__tmp50631
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50631 '()))))
                             (declare (not safe))
                             (cons __tmp50632 __tmp50630))))
                      (declare (not safe))
                      (cons __tmp50629 '()))))
               (declare (not safe))
               (cons __tmp50633 __tmp50628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50637 __tmp50627))))
                                         (declare (not safe))
                                         (cons __tmp50626 '()))))
                                  (declare (not safe))
                                  (cons __tmp50638 __tmp50625))))
                           (declare (not safe))
                           (cons __tmp50639 __tmp50624))))
                    (declare (not safe))
                    (cons __tmp50623 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50640
                                                           __tmp50622)))
                                                  (__tmp50611
                                                   (let ((__tmp50612
                                                          (let ((__tmp50620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50613
                         (let ((__tmp50614
                                (let ((__tmp50619
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50615
                                       (let ((__tmp50618
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50616
                                              (let ((__tmp50617
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50617 '()))))
                                         (declare (not safe))
                                         (cons __tmp50618 __tmp50616))))
                                  (declare (not safe))
                                  (cons __tmp50619 __tmp50615))))
                           (declare (not safe))
                           (cons __tmp50614 '()))))
                    (declare (not safe))
                    (cons __tmp50620 __tmp50613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50612 '()))))
                                              (declare (not safe))
                                              (cons __tmp50621 __tmp50611))))
                                       (declare (not safe))
                                       (cons '() __tmp50610))))
                                (declare (not safe))
                                (cons __tmp50642 __tmp50609))))
                         (declare (not safe))
                         (cons __tmp50643 __tmp50608))))
                  (declare (not safe))
                  (cons __tmp50607 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50644
                                                         __tmp50606))))
                                            (declare (not safe))
                                            (cons __tmp50646 __tmp50605))))
                                     (declare (not safe))
                                     (cons __tmp50604 '()))))
                              (declare (not safe))
                              (cons __tmp50647 __tmp50603))))
                       (declare (not safe))
                       (cons __tmp50655 __tmp50602))))
                (declare (not safe))
                (cons __tmp50601 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50600))))
                                          (declare (not safe))
                                          (cons __tmp50656 __tmp50599))))
                                   (declare (not safe))
                                   (cons __tmp50598 '()))))
                            (declare (not safe))
                            (cons _L32924_ __tmp50597))))
                     (declare (not safe))
                     (cons __tmp50657 __tmp50596))))
                (___kont4652946530_
                 (lambda (_L32854_ _L32856_ _L32857_)
                   (let ((__tmp50658
                          (let ((__tmp50659
                                 (let ((__tmp50660
                                        (let ((__tmp50661
                                               (let ((__tmp50672
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50662
                                                      (let ((__tmp50670
                                                             (let ((__tmp50671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50671 '())))
                    (__tmp50663
                     (let ((__tmp50664
                            (let ((__tmp50669
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50665
                                   (let ((__tmp50666
                                          (let ((__tmp50667
                                                 (let ((__tmp50668
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50668 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50667))))
                                     (declare (not safe))
                                     (cons '#f __tmp50666))))
                              (declare (not safe))
                              (cons __tmp50669 __tmp50665))))
                       (declare (not safe))
                       (cons __tmp50664 '()))))
                (declare (not safe))
                (cons __tmp50670 __tmp50663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50672
                                                       __tmp50662))))
                                          (declare (not safe))
                                          (cons __tmp50661 '()))))
                                   (declare (not safe))
                                   (cons _L32854_ __tmp50660))))
                            (declare (not safe))
                            (cons _L32856_ __tmp50659))))
                     (declare (not safe))
                     (cons _L32857_ __tmp50658)))))
            (let ((___match4655746558_
                   (lambda (_e3278832881_
                            _hd3278932885_
                            _tl3279032888_
                            _e3279132891_
                            _hd3279232895_
                            _tl3279332898_
                            _e3279432901_
                            _hd3279532905_
                            _tl3279632908_
                            _e3279732911_
                            _hd3279832915_
                            _tl3279932918_)
                     (let ((_L32921_ _hd3279832915_)
                           (_L32923_ _hd3279532905_)
                           (_L32924_ _hd3279232895_))
                       (if (gx#identifier? _L32924_)
                           (___kont4652746528_ _L32921_ _L32923_ _L32924_)
                           (let () (declare (not safe)) (_g3278332817_)))))))
              (if (gx#stx-pair? ___stx4652446525_)
                  (let ((_e3278832881_ (gx#syntax-e ___stx4652446525_)))
                    (let ((_tl3279032888_
                           (let () (declare (not safe)) (##cdr _e3278832881_)))
                          (_hd3278932885_
                           (let ()
                             (declare (not safe))
                             (##car _e3278832881_))))
                      (if (gx#stx-pair? _tl3279032888_)
                          (let ((_e3279132891_ (gx#syntax-e _tl3279032888_)))
                            (let ((_tl3279332898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3279132891_)))
                                  (_hd3279232895_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3279132891_))))
                              (if (gx#stx-pair? _tl3279332898_)
                                  (let ((_e3279432901_
                                         (gx#syntax-e _tl3279332898_)))
                                    (let ((_tl3279632908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3279432901_)))
                                          (_hd3279532905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3279432901_))))
                                      (if (gx#stx-pair? _tl3279632908_)
                                          (let ((_e3279732911_
                                                 (gx#syntax-e _tl3279632908_)))
                                            (let ((_tl3279932918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3279732911_)))
                                                  (_hd3279832915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3279732911_))))
                                              (if (gx#stx-null? _tl3279932918_)
                                                  (___match4655746558_
                                                   _e3278832881_
                                                   _hd3278932885_
                                                   _tl3279032888_
                                                   _e3279132891_
                                                   _hd3279232895_
                                                   _tl3279332898_
                                                   _e3279432901_
                                                   _hd3279532905_
                                                   _tl3279632908_
                                                   _e3279732911_
                                                   _hd3279832915_
                                                   _tl3279932918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3278332817_)))))
                                          (if (gx#stx-null? _tl3279632908_)
                                              (___kont4652946530_
                                               _hd3279532905_
                                               _hd3279232895_
                                               _hd3278932885_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3278332817_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3278332817_)))))
                          (let () (declare (not safe)) (_g3278332817_)))))
                  (let () (declare (not safe)) (_g3278332817_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32946_)
        (let* ((_g3295032965_
                (lambda (_g3295132961_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3295132961_)))
               (_g3294933008_
                (lambda (_g3295132969_)
                  (if (gx#stx-pair? _g3295132969_)
                      (let ((_e3295432972_ (gx#syntax-e _g3295132969_)))
                        (let ((_hd3295532976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3295432972_)))
                              (_tl3295632979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3295432972_))))
                          (if (gx#stx-pair? _tl3295632979_)
                              (let ((_e3295732982_
                                     (gx#syntax-e _tl3295632979_)))
                                (let ((_hd3295832986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3295732982_)))
                                      (_tl3295932989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3295732982_))))
                                  ((lambda (_L32992_ _L32994_)
                                     (let ((__tmp50677
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50673
                                            (let ((__tmp50674
                                                   (let ((__tmp50675
                                                          (let ((__tmp50676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50676 _L32992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50675 '()))))
                                              (declare (not safe))
                                              (cons _L32994_ __tmp50674))))
                                       (declare (not safe))
                                       (cons __tmp50677 __tmp50673)))
                                   _tl3295932989_
                                   _hd3295832986_)))
                              (_g3295032965_ _g3295132969_))))
                      (_g3295032965_ _g3295132969_)))))
          (_g3294933008_ _$stx32946_))))))
