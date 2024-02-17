(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g47588_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g47589_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g47590_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48420_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48423_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48424_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48497_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48498_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48500_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48501_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48546_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48547_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48548_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48549_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48561_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48562_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4661_)
        (letrec ((_simple-lambda?4664_
                  (lambda (_hd8061_) (gx#stx-andmap gx#identifier? _hd8061_)))
                 (_opt-lambda?4666_
                  (lambda (_hd7913_)
                    (let _lp7916_ ((_rest7919_ _hd7913_) (_opt?7921_ '#f))
                      (let* ((___stx4226442265_ _rest7919_)
                             (_g79247936_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4226442265_))))
                        (let ((___kont4226742268_
                               (lambda (_L7968_ _L7970_)
                                 (let* ((___stx4224042241_ _L7970_)
                                        (_g79868000_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4224042241_))))
                                   (let ((___kont4224342244_
                                          (lambda (_L8038_)
                                            (_lp7916_ _L7968_ '#t)))
                                         (___kont4224542246_
                                          (lambda ()
                                            (if (gx#identifier? _L7970_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?7921_))
                                                    (_lp7916_ _L7968_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match4226142262_
                                            (lambda (_e79898018_
                                                     _hd79908022_
                                                     _tl79918025_
                                                     _e79928028_
                                                     _hd79938032_
                                                     _tl79948035_)
                                              (let ((_L8038_ _hd79908022_))
                                                (if (gx#identifier? _L8038_)
                                                    (___kont4224342244_
                                                     _L8038_)
                                                    (___kont4224542246_))))))
                                       (if (gx#stx-pair? ___stx4224042241_)
                                           (let ((_e79898018_
                                                  (gx#syntax-e
                                                   ___stx4224042241_)))
                                             (let ((_tl79918025_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e79898018_)))
                                                   (_hd79908022_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e79898018_))))
                                               (if (gx#stx-pair? _tl79918025_)
                                                   (let ((_e79928028_
                                                          (gx#syntax-e
                                                           _tl79918025_)))
                                                     (let ((_tl79948035_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e79928028_)))
                                                           (_hd79938032_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e79928028_))))
                                                       (if (gx#stx-null?
                                                            _tl79948035_)
                                                           (___match4226142262_
                                                            _e79898018_
                                                            _hd79908022_
                                                            _tl79918025_
                                                            _e79928028_
                                                            _hd79938032_
                                                            _tl79948035_)
                                                           (___kont4224542246_))))
                                                   (___kont4224542246_))))
                                           (___kont4224542246_)))))))
                              (___kont4226942270_
                               (lambda ()
                                 (if _opt?7921_
                                     (let ((_$e7947_
                                            (gx#stx-null? _rest7919_)))
                                       (if _$e7947_
                                           _$e7947_
                                           (gx#identifier? _rest7919_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx4226442265_)
                              (let ((_e79287958_
                                     (gx#syntax-e ___stx4226442265_)))
                                (let ((_tl79307965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e79287958_)))
                                      (_hd79297962_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e79287958_))))
                                  (___kont4226742268_
                                   _tl79307965_
                                   _hd79297962_)))
                              (___kont4226942270_)))))))
                 (_opt-lambda-split4667_
                  (lambda (_hd7765_)
                    (let _lp7768_ ((_rest7771_ _hd7765_)
                                   (_pre7773_ '())
                                   (_opt7774_ '()))
                      (let* ((___stx4230442305_ _rest7771_)
                             (_g77777789_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4230442305_))))
                        (let ((___kont4230742308_
                               (lambda (_L7817_ _L7819_)
                                 (let* ((___stx4228042281_ _L7819_)
                                        (_g78357850_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4228042281_))))
                                   (let ((___kont4228342284_
                                          (lambda (_L7888_ _L7890_)
                                            (_lp7768_
                                             _L7817_
                                             _pre7773_
                                             (let ((__tmp47364
                                                    (let ((__tmp47365
                                                           (_generate-bind4670_
                                                            _L7890_)))
                                                      (declare (not safe))
                                                      (cons __tmp47365
                                                            _L7888_))))
                                               (declare (not safe))
                                               (cons __tmp47364 _opt7774_)))))
                                         (___kont4228542286_
                                          (lambda ()
                                            (_lp7768_
                                             _L7817_
                                             (let ((__tmp47366
                                                    (_generate-bind4670_
                                                     _L7819_)))
                                               (declare (not safe))
                                               (cons __tmp47366 _pre7773_))
                                             _opt7774_))))
                                     (if (gx#stx-pair? ___stx4228042281_)
                                         (let ((_e78397868_
                                                (gx#syntax-e
                                                 ___stx4228042281_)))
                                           (let ((_tl78417875_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e78397868_)))
                                                 (_hd78407872_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e78397868_))))
                                             (if (gx#stx-pair? _tl78417875_)
                                                 (let ((_e78427878_
                                                        (gx#syntax-e
                                                         _tl78417875_)))
                                                   (let ((_tl78447885_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e78427878_)))
                                                         (_hd78437882_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e78427878_))))
                                                     (if (gx#stx-null?
                                                          _tl78447885_)
                                                         (___kont4228342284_
                                                          _hd78437882_
                                                          _hd78407872_)
                                                         (___kont4228542286_))))
                                                 (___kont4228542286_))))
                                         (___kont4228542286_))))))
                              (___kont4230942310_
                               (lambda ()
                                 (values (reverse _pre7773_)
                                         (reverse _opt7774_)
                                         (if (gx#identifier? _rest7771_)
                                             (_generate-bind4670_ _rest7771_)
                                             _rest7771_)))))
                          (if (gx#stx-pair? ___stx4230442305_)
                              (let ((_e77817807_
                                     (gx#syntax-e ___stx4230442305_)))
                                (let ((_tl77837814_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e77817807_)))
                                      (_hd77827811_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e77817807_))))
                                  (___kont4230742308_
                                   _tl77837814_
                                   _hd77827811_)))
                              (___kont4230942310_)))))))
                 (_kw-lambda?4668_
                  (lambda (_hd7433_)
                    (let _lp7436_ ((_rest7439_ _hd7433_)
                                   (_opt?7441_ '#f)
                                   (_key?7442_ '#f))
                      (let* ((___stx4236842369_ _rest7439_)
                             (_g74477477_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4236842369_))))
                        (let ((___kont4237142372_
                               (lambda (_L7672_ _L7674_ _L7675_)
                                 (let* ((___stx4234442345_ _L7674_)
                                        (_g76907704_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4234442345_))))
                                   (let ((___kont4234742348_
                                          (lambda (_L7742_)
                                            (if (gx#identifier? _L7742_)
                                                (_lp7436_
                                                 _L7672_
                                                 _opt?7441_
                                                 '#t)
                                                '#f)))
                                         (___kont4234942350_
                                          (lambda ()
                                            (if (gx#identifier? _L7674_)
                                                (_lp7436_
                                                 _L7672_
                                                 _opt?7441_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx4234442345_)
                                         (let ((_e76937722_
                                                (gx#syntax-e
                                                 ___stx4234442345_)))
                                           (let ((_tl76957729_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e76937722_)))
                                                 (_hd76947726_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e76937722_))))
                                             (if (gx#stx-pair? _tl76957729_)
                                                 (let ((_e76967732_
                                                        (gx#syntax-e
                                                         _tl76957729_)))
                                                   (let ((_tl76987739_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e76967732_)))
                                                         (_hd76977736_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e76967732_))))
                                                     (if (gx#stx-null?
                                                          _tl76987739_)
                                                         (___kont4234742348_
                                                          _hd76947726_)
                                                         (___kont4234942350_))))
                                                 (___kont4234942350_))))
                                         (___kont4234942350_))))))
                              (___kont4237342374_
                               (lambda (_L7629_ _L7631_)
                                 (if (gx#identifier? _L7631_)
                                     (_lp7436_ _L7629_ _opt?7441_ '#t)
                                     '#f)))
                              (___kont4237542376_
                               (lambda (_L7509_ _L7511_)
                                 (let* ((___stx4232042321_ _L7511_)
                                        (_g75277541_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4232042321_))))
                                   (let ((___kont4232342324_
                                          (lambda (_L7579_)
                                            (if (gx#identifier? _L7579_)
                                                (_lp7436_
                                                 _L7509_
                                                 '#t
                                                 _key?7442_)
                                                '#f)))
                                         (___kont4232542326_
                                          (lambda ()
                                            (if (gx#identifier? _L7511_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?7441_))
                                                    (_lp7436_
                                                     _L7509_
                                                     '#f
                                                     _key?7442_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx4232042321_)
                                         (let ((_e75307559_
                                                (gx#syntax-e
                                                 ___stx4232042321_)))
                                           (let ((_tl75327566_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e75307559_)))
                                                 (_hd75317563_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e75307559_))))
                                             (if (gx#stx-pair? _tl75327566_)
                                                 (let ((_e75337569_
                                                        (gx#syntax-e
                                                         _tl75327566_)))
                                                   (let ((_tl75357576_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e75337569_)))
                                                         (_hd75347573_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e75337569_))))
                                                     (if (gx#stx-null?
                                                          _tl75357576_)
                                                         (___kont4232342324_
                                                          _hd75317563_)
                                                         (___kont4232542326_))))
                                                 (___kont4232542326_))))
                                         (___kont4232542326_))))))
                              (___kont4237742378_
                               (lambda ()
                                 (if _key?7442_
                                     (let ((_$e7488_
                                            (gx#stx-null? _rest7439_)))
                                       (if _$e7488_
                                           _$e7488_
                                           (gx#identifier? _rest7439_)))
                                     '#f))))
                          (let ((___match4239142392_
                                 (lambda (_e74527652_
                                          _hd74537656_
                                          _tl74547659_
                                          _e74557662_
                                          _hd74567666_
                                          _tl74577669_)
                                   (let ((_L7672_ _tl74577669_)
                                         (_L7674_ _hd74567666_)
                                         (_L7675_ _hd74537656_))
                                     (if (gx#stx-keyword? _L7675_)
                                         (___kont4237142372_
                                          _L7672_
                                          _L7674_
                                          _L7675_)
                                         (if (gx#stx-datum? _hd74537656_)
                                             (let ((_e74637615_
                                                    (gx#stx-e _hd74537656_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e74637615_
                                                             '#!key))
                                                   (___kont4237342374_
                                                    _tl74577669_
                                                    _hd74567666_)
                                                   (___kont4237542376_
                                                    _tl74547659_
                                                    _hd74537656_)))
                                             (___kont4237542376_
                                              _tl74547659_
                                              _hd74537656_)))))))
                            (if (gx#stx-pair? ___stx4236842369_)
                                (let ((_e74527652_
                                       (gx#syntax-e ___stx4236842369_)))
                                  (let ((_tl74547659_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e74527652_)))
                                        (_hd74537656_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e74527652_))))
                                    (if (gx#stx-pair? _tl74547659_)
                                        (let ((_e74557662_
                                               (gx#syntax-e _tl74547659_)))
                                          (let ((_tl74577669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e74557662_)))
                                                (_hd74567666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e74557662_))))
                                            (___match4239142392_
                                             _e74527652_
                                             _hd74537656_
                                             _tl74547659_
                                             _e74557662_
                                             _hd74567666_
                                             _tl74577669_)))
                                        (if (gx#stx-datum? _hd74537656_)
                                            (let ((_e74637615_
                                                   (gx#stx-e _hd74537656_)))
                                              (___kont4237542376_
                                               _tl74547659_
                                               _hd74537656_))
                                            (___kont4237542376_
                                             _tl74547659_
                                             _hd74537656_)))))
                                (___kont4237742378_))))))))
                 (_kw-lambda-split4669_
                  (lambda (_hd7166_)
                    (let _lp7169_ ((_rest7172_ _hd7166_)
                                   (_kwvar7174_ '#f)
                                   (_kwargs7175_ '())
                                   (_args7176_ '()))
                      (let* ((___stx4244242443_ _rest7172_)
                             (_g71817211_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4244242443_))))
                        (let ((___kont4244542446_
                               (lambda (_L7330_ _L7332_ _L7333_)
                                 (let ((_key7347_ (gx#stx-e _L7333_)))
                                   (if (let ((__tmp47367
                                              (lambda (_kwarg7350_)
                                                (let ((__tmp47368
                                                       (car _kwarg7350_)))
                                                  (declare (not safe))
                                                  (eq? _key7347_
                                                       __tmp47368)))))
                                         (declare (not safe))
                                         (find __tmp47367 _kwargs7175_))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx4661_
                                        _hd7166_
                                        _key7347_)
                                       (let* ((___stx4241842419_ _L7332_)
                                              (_g73547369_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx4241842419_))))
                                         (let ((___kont4242142422_
                                                (lambda (_L7407_ _L7409_)
                                                  (_lp7169_
                                                   _L7330_
                                                   _kwvar7174_
                                                   (let ((__tmp47369
                                                          (list _key7347_
                                                                (_generate-bind4670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7409_)
                        _L7407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47369
                                                           _kwargs7175_))
                                                   _args7176_)))
                                               (___kont4242342424_
                                                (lambda ()
                                                  (_lp7169_
                                                   _L7330_
                                                   _kwvar7174_
                                                   (let ((__tmp47370
                                                          (list _key7347_
                                                                (_generate-bind4670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7332_)
                        (let ((__tmp47373 (gx#datum->syntax '#f 'error))
                              (__tmp47371
                               (let ((__tmp47372
                                      (let ()
                                        (declare (not safe))
                                        (cons _L7333_ '()))))
                                 (declare (not safe))
                                 (cons '"Missing required keyword argument"
                                       __tmp47372))))
                          (declare (not safe))
                          (cons __tmp47373 __tmp47371)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47370
                                                           _kwargs7175_))
                                                   _args7176_))))
                                           (if (gx#stx-pair? ___stx4241842419_)
                                               (let ((_e73587387_
                                                      (gx#syntax-e
                                                       ___stx4241842419_)))
                                                 (let ((_tl73607394_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e73587387_)))
                                                       (_hd73597391_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e73587387_))))
                                                   (if (gx#stx-pair?
                                                        _tl73607394_)
                                                       (let ((_e73617397_
                                                              (gx#syntax-e
                                                               _tl73607394_)))
                                                         (let ((_tl73637404_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e73617397_)))
                       (_hd73627401_
                        (let () (declare (not safe)) (##car _e73617397_))))
                   (if (gx#stx-null? _tl73637404_)
                       (___kont4242142422_ _hd73627401_ _hd73597391_)
                       (___kont4242342424_))))
               (___kont4242342424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4242342424_))))))))
                              (___kont4244742448_
                               (lambda (_L7287_ _L7289_)
                                 (if _kwvar7174_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _stx4661_
                                      _hd7166_
                                      _L7289_)
                                     (_lp7169_
                                      _L7287_
                                      (_generate-bind4670_ _L7289_)
                                      _kwargs7175_
                                      _args7176_))))
                              (___kont4244942450_
                               (lambda (_L7239_ _L7241_)
                                 (_lp7169_
                                  _L7239_
                                  _kwvar7174_
                                  _kwargs7175_
                                  (let ()
                                    (declare (not safe))
                                    (cons _L7241_ _args7176_)))))
                              (___kont4245142452_
                               (lambda ()
                                 (values _kwvar7174_
                                         (reverse _kwargs7175_)
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 cons
                                                   _rest7172_
                                                   _args7176_))))))
                          (let ((___match4246542466_
                                 (lambda (_e71867310_
                                          _hd71877314_
                                          _tl71887317_
                                          _e71897320_
                                          _hd71907324_
                                          _tl71917327_)
                                   (let ((_L7330_ _tl71917327_)
                                         (_L7332_ _hd71907324_)
                                         (_L7333_ _hd71877314_))
                                     (if (gx#stx-keyword? _L7333_)
                                         (___kont4244542446_
                                          _L7330_
                                          _L7332_
                                          _L7333_)
                                         (if (gx#stx-datum? _hd71877314_)
                                             (let ((_e71977273_
                                                    (gx#stx-e _hd71877314_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e71977273_
                                                             '#!key))
                                                   (___kont4244742448_
                                                    _tl71917327_
                                                    _hd71907324_)
                                                   (___kont4244942450_
                                                    _tl71887317_
                                                    _hd71877314_)))
                                             (___kont4244942450_
                                              _tl71887317_
                                              _hd71877314_)))))))
                            (if (gx#stx-pair? ___stx4244242443_)
                                (let ((_e71867310_
                                       (gx#syntax-e ___stx4244242443_)))
                                  (let ((_tl71887317_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e71867310_)))
                                        (_hd71877314_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e71867310_))))
                                    (if (gx#stx-pair? _tl71887317_)
                                        (let ((_e71897320_
                                               (gx#syntax-e _tl71887317_)))
                                          (let ((_tl71917327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e71897320_)))
                                                (_hd71907324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e71897320_))))
                                            (___match4246542466_
                                             _e71867310_
                                             _hd71877314_
                                             _tl71887317_
                                             _e71897320_
                                             _hd71907324_
                                             _tl71917327_)))
                                        (if (gx#stx-datum? _hd71877314_)
                                            (let ((_e71977273_
                                                   (gx#stx-e _hd71877314_)))
                                              (___kont4244942450_
                                               _tl71887317_
                                               _hd71877314_))
                                            (___kont4244942450_
                                             _tl71887317_
                                             _hd71877314_)))))
                                (___kont4245142452_))))))))
                 (_generate-bind4670_
                  (lambda (_e7163_)
                    (if (gx#underscore? _e7163_)
                        (gx#genident _e7163_)
                        _e7163_)))
                 (_check-duplicate-bindings4671_
                  (lambda (_hd6860_)
                    (letrec ((_cons-id6863_
                              (lambda (_id7159_ _ids7161_)
                                (if (gx#underscore? _id7159_)
                                    _ids7161_
                                    (let ()
                                      (declare (not safe))
                                      (cons _id7159_ _ids7161_))))))
                      (let _lp6866_ ((_rest6869_ _hd6860_) (_ids6871_ '()))
                        (let* ((___stx4251642517_ _rest6869_)
                               (_g68746886_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx4251642517_))))
                          (let ((___kont4251942520_
                                 (lambda (_L6914_ _L6916_)
                                   (if (gx#identifier? _L6916_)
                                       (_lp6866_
                                        _L6914_
                                        (_cons-id6863_ _L6916_ _ids6871_))
                                       (if (gx#stx-pair? _L6916_)
                                           (let* ((_g69326946_
                                                   (lambda (_g69336942_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g69336942_)))
                                                  (_g69316987_
                                                   (lambda (_g69336950_)
                                                     (if (gx#stx-pair?
                                                          _g69336950_)
                                                         (let ((_e69356953_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69336950_)))
                   (let ((_hd69366957_
                          (let () (declare (not safe)) (##car _e69356953_)))
                         (_tl69376960_
                          (let () (declare (not safe)) (##cdr _e69356953_))))
                     (if (gx#stx-pair? _tl69376960_)
                         (let ((_e69386963_ (gx#syntax-e _tl69376960_)))
                           (let ((_hd69396967_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e69386963_)))
                                 (_tl69406970_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e69386963_))))
                             (if (gx#stx-null? _tl69406970_)
                                 ((lambda (_L6973_)
                                    (_lp6866_
                                     _L6914_
                                     (_cons-id6863_ _L6973_ _ids6871_)))
                                  _hd69366957_)
                                 (_g69326946_ _g69336950_))))
                         (_g69326946_ _g69336950_))))
                 (_g69326946_ _g69336950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g69316987_ _L6916_))
                                           (if (gx#stx-keyword? _L6916_)
                                               (let* ((_g69917003_
                                                       (lambda (_g69926999_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g69926999_)))
                                                      (_g69907105_
                                                       (lambda (_g69927007_)
                                                         (if (gx#stx-pair?
                                                              _g69927007_)
                                                             (let ((_e69957010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g69927007_)))
                       (let ((_hd69967014_
                              (let ()
                                (declare (not safe))
                                (##car _e69957010_)))
                             (_tl69977017_
                              (let ()
                                (declare (not safe))
                                (##cdr _e69957010_))))
                         ((lambda (_L7020_ _L7022_)
                            (let* ((___stx4249242493_ _L7022_)
                                   (_g70347048_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx4249242493_))))
                              (let ((___kont4249542496_
                                     (lambda (_L7086_)
                                       (_lp6866_
                                        _L7020_
                                        (_cons-id6863_ _L7086_ _ids6871_))))
                                    (___kont4249742498_
                                     (lambda ()
                                       (_lp6866_
                                        _L7020_
                                        (_cons-id6863_ _L7022_ _ids6871_)))))
                                (if (gx#stx-pair? ___stx4249242493_)
                                    (let ((_e70377066_
                                           (gx#syntax-e ___stx4249242493_)))
                                      (let ((_tl70397073_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e70377066_)))
                                            (_hd70387070_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e70377066_))))
                                        (if (gx#stx-pair? _tl70397073_)
                                            (let ((_e70407076_
                                                   (gx#syntax-e _tl70397073_)))
                                              (let ((_tl70427083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e70407076_)))
                                                    (_hd70417080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e70407076_))))
                                                (if (gx#stx-null? _tl70427083_)
                                                    (___kont4249542496_
                                                     _hd70387070_)
                                                    (___kont4249742498_))))
                                            (___kont4249742498_))))
                                    (___kont4249742498_)))))
                          _tl69977017_
                          _hd69967014_)))
                     (_g69917003_ _g69927007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g69907105_ _L6914_))
                                               (if (let ((__tmp47374
                                                          (gx#stx-e _L6916_)))
                                                     (declare (not safe))
                                                     (eq? __tmp47374 '#!key))
                                                   (let* ((_g71097121_
                                                           (lambda (_g71107117_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g71107117_)))
                                                          (_g71087151_
                                                           (lambda (_g71107125_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g71107125_)
                         (let ((_e71137128_ (gx#syntax-e _g71107125_)))
                           (let ((_hd71147132_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e71137128_)))
                                 (_tl71157135_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e71137128_))))
                             ((lambda (_L7138_ _L7140_)
                                (_lp6866_
                                 _L7138_
                                 (_cons-id6863_ _L7140_ _ids6871_)))
                              _tl71157135_
                              _hd71147132_)))
                         (_g71097121_ _g71107125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71087151_ _L6914_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx4661_
                                                          _rest6869_)))))))
                                (___kont4252142522_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest6869_)
                                        _ids6871_
                                        (_cons-id6863_ _rest6869_ _ids6871_))
                                    _stx4661_))))
                            (if (gx#stx-pair? ___stx4251642517_)
                                (let ((_e68786904_
                                       (gx#syntax-e ___stx4251642517_)))
                                  (let ((_tl68806911_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e68786904_)))
                                        (_hd68796908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e68786904_))))
                                    (___kont4251942520_
                                     _tl68806911_
                                     _hd68796908_)))
                                (___kont4252142522_))))))))
                 (_generate-opt-primary4672_
                  (lambda (_pre6652_ _opt6654_ _tail6655_ _body6656_)
                    (let* ((_g66586699_
                            (lambda (_g66596695_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g66596695_)))
                           (_g66576856_
                            (lambda (_g66596703_)
                              (if (gx#stx-pair? _g66596703_)
                                  (let ((_e66646706_
                                         (gx#syntax-e _g66596703_)))
                                    (let ((_hd66656710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66646706_)))
                                          (_tl66666713_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66646706_))))
                                      (if (gx#stx-pair/null? _hd66656710_)
                                          (let ((_g47375_
                                                 (gx#syntax-split-splice
                                                  _hd66656710_
                                                  '0)))
                                            (begin
                                              (let ((_g47376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g47375_)
                                                           (##vector-length
                                                            _g47375_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g47376_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g47376_)))
                                              (let ((_target66676716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47375_
                                                        0)))
                                                    (_tl66696719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47375_
                                                        1))))
                                                (if (gx#stx-null? _tl66696719_)
                                                    (letrec ((_loop66706722_
                                                              (lambda (_hd66686726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre66746729_)
                        (if (gx#stx-pair? _hd66686726_)
                            (let ((_e66716732_ (gx#syntax-e _hd66686726_)))
                              (let ((_lp-hd66726736_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e66716732_)))
                                    (_lp-tl66736739_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e66716732_))))
                                (_loop66706722_
                                 _lp-tl66736739_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd66726736_ _pre66746729_)))))
                            (let ((_pre66756742_ (reverse _pre66746729_)))
                              (if (gx#stx-pair? _tl66666713_)
                                  (let ((_e66766746_
                                         (gx#syntax-e _tl66666713_)))
                                    (let ((_hd66776750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66766746_)))
                                          (_tl66786753_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66766746_))))
                                      (if (gx#stx-pair/null? _hd66776750_)
                                          (let ((_g47377_
                                                 (gx#syntax-split-splice
                                                  _hd66776750_
                                                  '0)))
                                            (begin
                                              (let ((_g47378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g47377_)
                                                           (##vector-length
                                                            _g47377_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g47378_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g47378_)))
                                              (let ((_target66796756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47377_
                                                        0)))
                                                    (_tl66816759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47377_
                                                        1))))
                                                (if (gx#stx-null? _tl66816759_)
                                                    (letrec ((_loop66826762_
                                                              (lambda (_hd66806766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt66866769_)
                        (if (gx#stx-pair? _hd66806766_)
                            (let ((_e66836772_ (gx#syntax-e _hd66806766_)))
                              (let ((_lp-hd66846776_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e66836772_)))
                                    (_lp-tl66856779_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e66836772_))))
                                (_loop66826762_
                                 _lp-tl66856779_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd66846776_ _opt66866769_)))))
                            (let ((_opt66876782_ (reverse _opt66866769_)))
                              (if (gx#stx-pair? _tl66786753_)
                                  (let ((_e66886786_
                                         (gx#syntax-e _tl66786753_)))
                                    (let ((_hd66896790_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66886786_)))
                                          (_tl66906793_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66886786_))))
                                      (if (gx#stx-pair? _tl66906793_)
                                          (let ((_e66916796_
                                                 (gx#syntax-e _tl66906793_)))
                                            (let ((_hd66926800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e66916796_)))
                                                  (_tl66936803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e66916796_))))
                                              (if (gx#stx-null? _tl66936803_)
                                                  ((lambda (_L6806_
                                                            _L6808_
                                                            _L6809_
                                                            _L6810_)
                                                     (let ()
                                                       (let ((__tmp47384
                                                              (gx#datum->syntax
                                                               '#f
                                                               'lambda%))
                                                             (__tmp47379
                                                              (let ((__tmp47380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47383
                                    (lambda (_g68396844_ _g68406847_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g68396844_ _g68406847_))))
                                   (__tmp47381
                                    (let ((__tmp47382
                                           (lambda (_g68416850_ _g68426853_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g68416850_
                                                     _g68426853_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp47382 _L6808_ _L6809_))))
                               (declare (not safe))
                               (foldr1 __tmp47383 __tmp47381 _L6810_))))
                        (declare (not safe))
                        (cons __tmp47380 _L6806_))))
                 (declare (not safe))
                 (cons __tmp47384 __tmp47379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd66926800_
                                                   _hd66896790_
                                                   _opt66876782_
                                                   _pre66756742_)
                                                  (_g66586699_ _g66596703_))))
                                          (_g66586699_ _g66596703_))))
                                  (_g66586699_ _g66596703_)))))))
              (_loop66826762_ _target66796756_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66586699_
                                                     _g66596703_)))))
                                          (_g66586699_ _g66596703_))))
                                  (_g66586699_ _g66596703_)))))))
              (_loop66706722_ _target66676716_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66586699_
                                                     _g66596703_)))))
                                          (_g66586699_ _g66596703_))))
                                  (_g66586699_ _g66596703_)))))
                      (_g66576856_
                       (list _pre6652_
                             (map car _opt6654_)
                             _tail6655_
                             _body6656_)))))
                 (_generate-opt-dispatch4673_
                  (lambda (_primary6646_ _pre6648_ _opt6649_ _tail6650_)
                    (let ((__tmp47386
                           (list _pre6648_
                                 (_generate-opt-clause4675_
                                  _primary6646_
                                  _pre6648_
                                  _opt6649_)))
                          (__tmp47385
                           (_generate-opt-dispatch*4674_
                            _primary6646_
                            _pre6648_
                            _opt6649_
                            _tail6650_)))
                      (declare (not safe))
                      (cons __tmp47386 __tmp47385))))
                 (_generate-opt-dispatch*4674_
                  (lambda (_primary6203_ _pre6205_ _opt6206_ _tail6207_)
                    (let _recur6209_ ((_opt-rest6212_ _opt6206_)
                                      (_right6214_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest6212_))
                          (let* ((_hd6216_ (caar _opt-rest6212_))
                                 (_rest6219_ (cdr _opt-rest6212_))
                                 (_right*6222_
                                  (let ()
                                    (declare (not safe))
                                    (cons _hd6216_ _right6214_)))
                                 (_g62256242_
                                  (lambda (_g62266238_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g62266238_)))
                                 (_g62246425_
                                  (lambda (_g62266246_)
                                    (if (gx#stx-pair/null? _g62266246_)
                                        (let ((_g47387_
                                               (gx#syntax-split-splice
                                                _g62266246_
                                                '0)))
                                          (begin
                                            (let ((_g47388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g47387_)
                                                         (##vector-length
                                                          _g47387_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g47388_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g47388_)))
                                            (let ((_target62286249_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g47387_
                                                      0)))
                                                  (_tl62306252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g47387_
                                                      1))))
                                              (if (gx#stx-null? _tl62306252_)
                                                  (letrec ((_loop62316255_
                                                            (lambda (_hd62296259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind62356262_)
                      (if (gx#stx-pair? _hd62296259_)
                          (let ((_e62326265_ (gx#syntax-e _hd62296259_)))
                            (let ((_lp-hd62336269_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e62326265_)))
                                  (_lp-tl62346272_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e62326265_))))
                              (_loop62316255_
                               _lp-tl62346272_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd62336269_ _pre-bind62356262_)))))
                          (let ((_pre-bind62366275_
                                 (reverse _pre-bind62356262_)))
                            ((lambda (_L6279_)
                               (let ()
                                 (let* ((_g63006317_
                                         (lambda (_g63016313_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g63016313_)))
                                        (_g62996421_
                                         (lambda (_g63016321_)
                                           (if (gx#stx-pair/null? _g63016321_)
                                               (let ((_g47389_
                                                      (gx#syntax-split-splice
                                                       _g63016321_
                                                       '0)))
                                                 (begin
                                                   (let ((_g47390_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g47389_)
                        (##vector-length _g47389_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g47390_ 2)))
                 (error "Context expects 2 values" _g47390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target63036324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g47389_
                                                             0)))
                                                         (_tl63056327_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g47389_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl63056327_)
                                                         (letrec ((_loop63066330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd63046334_ _opt-bind63106337_)
                             (if (gx#stx-pair? _hd63046334_)
                                 (let ((_e63076340_
                                        (gx#syntax-e _hd63046334_)))
                                   (let ((_lp-hd63086344_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e63076340_)))
                                         (_lp-tl63096347_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e63076340_))))
                                     (_loop63066330_
                                      _lp-tl63096347_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd63086344_
                                              _opt-bind63106337_)))))
                                 (let ((_opt-bind63116350_
                                        (reverse _opt-bind63106337_)))
                                   ((lambda (_L6354_)
                                      (let ()
                                        (let* ((_g63716379_
                                                (lambda (_g63726375_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g63726375_)))
                                               (_g63706417_
                                                (lambda (_g63726383_)
                                                  ((lambda (_L6386_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp47392
                                                                (list (let ((__tmp47396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (lambda (_g64006405_ _g64016408_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g64006405_ _g64016408_))))
                                    (__tmp47393
                                     (let ((__tmp47395
                                            (lambda (_g64026411_ _g64036414_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g64026411_
                                                      _g64036414_))))
                                           (__tmp47394
                                            (let ()
                                              (declare (not safe))
                                              (cons _L6386_ '()))))
                                       (declare (not safe))
                                       (foldr1 __tmp47395
                                               __tmp47394
                                               _L6354_))))
                                (declare (not safe))
                                (foldr1 __tmp47396 __tmp47393 _L6279_))
                              (_generate-opt-clause4675_
                               _primary6203_
                               (let ((__tmp47397 (reverse _right*6222_)))
                                 (declare (not safe))
                                 (foldr1 cons __tmp47397 _pre6205_))
                               _rest6219_)))
                       (__tmp47391 (_recur6209_ _rest6219_ _right*6222_)))
                   (declare (not safe))
                   (cons __tmp47392 __tmp47391)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g63726383_))))
                                          (_g63706417_ _hd6216_))))
                                    _opt-bind63116350_))))))
                   (_loop63066330_ _target63036324_ '()))
                 (_g63006317_ _g63016321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63006317_ _g63016321_)))))
                                   (_g62996421_ (reverse _right6214_)))))
                             _pre-bind62366275_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop62316255_
                                                     _target62286249_
                                                     '()))
                                                  (_g62256242_ _g62266246_)))))
                                        (_g62256242_ _g62266246_)))))
                            (_g62246425_ _pre6205_))
                          (if (gx#stx-null? _tail6207_)
                              '()
                              (let* ((_g64296470_
                                      (lambda (_g64306466_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g64306466_)))
                                     (_g64286642_
                                      (lambda (_g64306474_)
                                        (if (gx#stx-pair? _g64306474_)
                                            (let ((_e64356477_
                                                   (gx#syntax-e _g64306474_)))
                                              (let ((_hd64366481_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64356477_)))
                                                    (_tl64376484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64356477_))))
                                                (if (gx#stx-pair/null?
                                                     _hd64366481_)
                                                    (let ((_g47398_
                                                           (gx#syntax-split-splice
                                                            _hd64366481_
                                                            '0)))
                                                      (begin
                                                        (let ((_g47399_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g47398_)
                             (##vector-length _g47398_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g47399_ 2)))
                      (error "Context expects 2 values" _g47399_)))
                (let ((_target64386487_
                       (let () (declare (not safe)) (##vector-ref _g47398_ 0)))
                      (_tl64406490_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g47398_ 1))))
                  (if (gx#stx-null? _tl64406490_)
                      (letrec ((_loop64416493_
                                (lambda (_hd64396497_ _pre64456500_)
                                  (if (gx#stx-pair? _hd64396497_)
                                      (let ((_e64426503_
                                             (gx#syntax-e _hd64396497_)))
                                        (let ((_lp-hd64436507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e64426503_)))
                                              (_lp-tl64446510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e64426503_))))
                                          (_loop64416493_
                                           _lp-tl64446510_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd64436507_
                                                   _pre64456500_)))))
                                      (let ((_pre64466513_
                                             (reverse _pre64456500_)))
                                        (if (gx#stx-pair? _tl64376484_)
                                            (let ((_e64476517_
                                                   (gx#syntax-e _tl64376484_)))
                                              (let ((_hd64486521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64476517_)))
                                                    (_tl64496524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64476517_))))
                                                (if (gx#stx-pair/null?
                                                     _hd64486521_)
                                                    (let ((_g47400_
                                                           (gx#syntax-split-splice
                                                            _hd64486521_
                                                            '0)))
                                                      (begin
                                                        (let ((_g47401_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g47400_)
                             (##vector-length _g47400_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g47401_ 2)))
                      (error "Context expects 2 values" _g47401_)))
                (let ((_target64506527_
                       (let () (declare (not safe)) (##vector-ref _g47400_ 0)))
                      (_tl64526530_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g47400_ 1))))
                  (if (gx#stx-null? _tl64526530_)
                      (letrec ((_loop64536533_
                                (lambda (_hd64516537_ _opt64576540_)
                                  (if (gx#stx-pair? _hd64516537_)
                                      (let ((_e64546543_
                                             (gx#syntax-e _hd64516537_)))
                                        (let ((_lp-hd64556547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e64546543_)))
                                              (_lp-tl64566550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e64546543_))))
                                          (_loop64536533_
                                           _lp-tl64566550_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd64556547_
                                                   _opt64576540_)))))
                                      (let ((_opt64586553_
                                             (reverse _opt64576540_)))
                                        (if (gx#stx-pair? _tl64496524_)
                                            (let ((_e64596557_
                                                   (gx#syntax-e _tl64496524_)))
                                              (let ((_hd64606561_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64596557_)))
                                                    (_tl64616564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64596557_))))
                                                (if (gx#stx-pair? _tl64616564_)
                                                    (let ((_e64626567_
                                                           (gx#syntax-e
                                                            _tl64616564_)))
                                                      (let ((_hd64636571_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e64626567_)))
                    (_tl64646574_
                     (let () (declare (not safe)) (##cdr _e64626567_))))
                (if (gx#stx-null? _tl64646574_)
                    ((lambda (_L6577_ _L6579_ _L6580_ _L6581_)
                       (let ()
                         (list (list (let ((__tmp47404
                                            (lambda (_g66096614_ _g66106617_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g66096614_
                                                      _g66106617_))))
                                           (__tmp47402
                                            (let ((__tmp47403
                                                   (lambda (_g66116620_
                                                            _g66126623_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g66116620_
                                                             _g66126623_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp47403
                                                      _L6579_
                                                      _L6580_))))
                                       (declare (not safe))
                                       (foldr1 __tmp47404 __tmp47402 _L6581_))
                                     (gx#stx-wrap-source
                                      (let ((__tmp47411
                                             (gx#datum->syntax '#f 'apply))
                                            (__tmp47405
                                             (let ((__tmp47406
                                                    (let ((__tmp47410
                                                           (lambda (_g66256630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g66266633_)
                     (let ()
                       (declare (not safe))
                       (cons _g66256630_ _g66266633_))))
                  (__tmp47407
                   (let ((__tmp47409
                          (lambda (_g66276636_ _g66286639_)
                            (let ()
                              (declare (not safe))
                              (cons _g66276636_ _g66286639_))))
                         (__tmp47408
                          (let () (declare (not safe)) (cons _L6579_ '()))))
                     (declare (not safe))
                     (foldr1 __tmp47409 __tmp47408 _L6580_))))
              (declare (not safe))
              (foldr1 __tmp47410 __tmp47407 _L6581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L6577_ __tmp47406))))
                                        (declare (not safe))
                                        (cons __tmp47411 __tmp47405))
                                      (gx#stx-source _stx4661_))))))
                     _hd64636571_
                     _hd64606561_
                     _opt64586553_
                     _pre64466513_)
                    (_g64296470_ _g64306474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64296470_
                                                     _g64306474_))))
                                            (_g64296470_ _g64306474_)))))))
                        (_loop64536533_ _target64506527_ '()))
                      (_g64296470_ _g64306474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64296470_
                                                     _g64306474_))))
                                            (_g64296470_ _g64306474_)))))))
                        (_loop64416493_ _target64386487_ '()))
                      (_g64296470_ _g64306474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64296470_
                                                     _g64306474_))))
                                            (_g64296470_ _g64306474_)))))
                                (_g64286642_
                                 (list _pre6205_
                                       (reverse _right6214_)
                                       _tail6207_
                                       _primary6203_))))))))
                 (_generate-opt-clause4675_
                  (lambda (_primary5901_ _pre5903_ _opt5904_)
                    (let _recur5906_ ((_opt-rest5909_ _opt5904_)
                                      (_right5911_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest5909_))
                          (let* ((_hd5913_ (car _opt-rest5909_))
                                 (_rest5916_ (cdr _opt-rest5909_))
                                 (_g59195927_
                                  (lambda (_g59205923_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g59205923_)))
                                 (_g59186016_
                                  (lambda (_g59205931_)
                                    ((lambda (_L5934_)
                                       (let ()
                                         (let* ((_g59505958_
                                                 (lambda (_g59515954_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g59515954_)))
                                                (_g59496012_
                                                 (lambda (_g59515962_)
                                                   ((lambda (_L5965_)
                                                      (let ()
                                                        (let* ((_g59785986_
                                                                (lambda (_g59795982_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g59795982_)))
                       (_g59776008_
                        (lambda (_g59795990_)
                          ((lambda (_L5993_)
                             (let ()
                               (let ()
                                 (let ((__tmp47418
                                        (gx#datum->syntax '#f 'let-values))
                                       (__tmp47412
                                        (let ((__tmp47414
                                               (let ((__tmp47415
                                                      (let ((__tmp47417
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L5934_ '())))
                    (__tmp47416
                     (let () (declare (not safe)) (cons _L5965_ '()))))
                (declare (not safe))
                (cons __tmp47417 __tmp47416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47415 '())))
                                              (__tmp47413
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L5993_ '()))))
                                          (declare (not safe))
                                          (cons __tmp47414 __tmp47413))))
                                   (declare (not safe))
                                   (cons __tmp47418 __tmp47412)))))
                           _g59795990_))))
                  (_g59776008_
                   (_recur5906_
                    _rest5916_
                    (let ()
                      (declare (not safe))
                      (cons _L5934_ _right5911_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g59515962_))))
                                           (_g59496012_ (cdr _hd5913_)))))
                                     _g59205931_))))
                            (_g59186016_ (car _hd5913_)))
                          (let* ((_g60206057_
                                  (lambda (_g60216053_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g60216053_)))
                                 (_g60196199_
                                  (lambda (_g60216061_)
                                    (if (gx#stx-pair? _g60216061_)
                                        (let ((_e60256064_
                                               (gx#syntax-e _g60216061_)))
                                          (let ((_hd60266068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60256064_)))
                                                (_tl60276071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60256064_))))
                                            (if (gx#stx-pair/null?
                                                 _hd60266068_)
                                                (let ((_g47419_
                                                       (gx#syntax-split-splice
                                                        _hd60266068_
                                                        '0)))
                                                  (begin
                                                    (let ((_g47420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g47419_)
                         (##vector-length _g47419_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g47420_ 2)))
                  (error "Context expects 2 values" _g47420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target60286074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47419_
                                                              0)))
                                                          (_tl60306077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47419_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl60306077_)
                                                          (letrec ((_loop60316080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd60296084_ _pre60356087_)
                              (if (gx#stx-pair? _hd60296084_)
                                  (let ((_e60326090_
                                         (gx#syntax-e _hd60296084_)))
                                    (let ((_lp-hd60336094_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60326090_)))
                                          (_lp-tl60346097_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60326090_))))
                                      (_loop60316080_
                                       _lp-tl60346097_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd60336094_
                                               _pre60356087_)))))
                                  (let ((_pre60366100_
                                         (reverse _pre60356087_)))
                                    (if (gx#stx-pair? _tl60276071_)
                                        (let ((_e60376104_
                                               (gx#syntax-e _tl60276071_)))
                                          (let ((_hd60386108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60376104_)))
                                                (_tl60396111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60376104_))))
                                            (if (gx#stx-pair/null?
                                                 _hd60386108_)
                                                (let ((_g47421_
                                                       (gx#syntax-split-splice
                                                        _hd60386108_
                                                        '0)))
                                                  (begin
                                                    (let ((_g47422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g47421_)
                         (##vector-length _g47421_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g47422_ 2)))
                  (error "Context expects 2 values" _g47422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target60406114_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47421_
                                                              0)))
                                                          (_tl60426117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47421_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl60426117_)
                                                          (letrec ((_loop60436120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd60416124_ _opt60476127_)
                              (if (gx#stx-pair? _hd60416124_)
                                  (let ((_e60446130_
                                         (gx#syntax-e _hd60416124_)))
                                    (let ((_lp-hd60456134_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60446130_)))
                                          (_lp-tl60466137_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60446130_))))
                                      (_loop60436120_
                                       _lp-tl60466137_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd60456134_
                                               _opt60476127_)))))
                                  (let ((_opt60486140_
                                         (reverse _opt60476127_)))
                                    (if (gx#stx-pair? _tl60396111_)
                                        (let ((_e60496144_
                                               (gx#syntax-e _tl60396111_)))
                                          (let ((_hd60506148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60496144_)))
                                                (_tl60516151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60496144_))))
                                            (if (gx#stx-null? _tl60516151_)
                                                ((lambda (_L6154_
                                                          _L6156_
                                                          _L6157_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (let ((__tmp47423
                                                             (let ((__tmp47426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g61826187_ _g61836190_)
                              (let ()
                                (declare (not safe))
                                (cons _g61826187_ _g61836190_))))
                           (__tmp47424
                            (let ((__tmp47425
                                   (lambda (_g61846193_ _g61856196_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g61846193_ _g61856196_)))))
                              (declare (not safe))
                              (foldr1 __tmp47425 '() _L6156_))))
                       (declare (not safe))
                       (foldr1 __tmp47426 __tmp47424 _L6157_))))
                (declare (not safe))
                (cons _L6154_ __tmp47423))
              (gx#stx-source _stx4661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd60506148_
                                                 _opt60486140_
                                                 _pre60366100_)
                                                (_g60206057_ _g60216061_))))
                                        (_g60206057_ _g60216061_)))))))
                    (_loop60436120_ _target60406114_ '()))
                  (_g60206057_ _g60216061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g60206057_ _g60216061_))))
                                        (_g60206057_ _g60216061_)))))))
                    (_loop60316080_ _target60286074_ '()))
                  (_g60206057_ _g60216061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g60206057_ _g60216061_))))
                                        (_g60206057_ _g60216061_)))))
                            (_g60196199_
                             (list _pre5903_
                                   (reverse _right5911_)
                                   _primary5901_)))))))
                 (_generate-kw-primary4676_
                  (lambda (_key5277_ _kwargs5279_ _args5280_ _body5281_)
                    (letrec ((_make-body5283_
                              (lambda (_kwargs5770_ _kwvals5772_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _kwargs5770_))
                                    (let* ((_kwarg5774_ (car _kwargs5770_))
                                           (_var5777_ (cadr _kwarg5774_))
                                           (_default5780_ (caddr _kwarg5774_))
                                           (_kwval5783_ (car _kwvals5772_))
                                           (_rest-kwargs5786_
                                            (cdr _kwargs5770_))
                                           (_rest-kwvals5789_
                                            (cdr _kwvals5772_)))
                                      (let* ((_g57945817_
                                              (lambda (_g57955813_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g57955813_)))
                                             (_g57935897_
                                              (lambda (_g57955821_)
                                                (if (gx#stx-pair? _g57955821_)
                                                    (let ((_e58005824_
                                                           (gx#syntax-e
                                                            _g57955821_)))
                                                      (let ((_hd58015828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e58005824_)))
                    (_tl58025831_
                     (let () (declare (not safe)) (##cdr _e58005824_))))
                (if (gx#stx-pair? _tl58025831_)
                    (let ((_e58035834_ (gx#syntax-e _tl58025831_)))
                      (let ((_hd58045838_
                             (let () (declare (not safe)) (##car _e58035834_)))
                            (_tl58055841_
                             (let ()
                               (declare (not safe))
                               (##cdr _e58035834_))))
                        (if (gx#stx-pair? _tl58055841_)
                            (let ((_e58065844_ (gx#syntax-e _tl58055841_)))
                              (let ((_hd58075848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e58065844_)))
                                    (_tl58085851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e58065844_))))
                                (if (gx#stx-pair? _tl58085851_)
                                    (let ((_e58095854_
                                           (gx#syntax-e _tl58085851_)))
                                      (let ((_hd58105858_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e58095854_)))
                                            (_tl58115861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e58095854_))))
                                        (if (gx#stx-null? _tl58115861_)
                                            ((lambda (_L5864_
                                                      _L5866_
                                                      _L5867_
                                                      _L5868_)
                                               (let ()
                                                 (let ((__tmp47443
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp47427
                                                        (let ((__tmp47429
                                                               (let ((__tmp47430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47442
                                     (let ()
                                       (declare (not safe))
                                       (cons _L5868_ '())))
                                    (__tmp47431
                                     (let ((__tmp47432
                                            (let ((__tmp47441
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp47433
                                                   (let ((__tmp47436
                                                          (let ((__tmp47440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp47437
                         (let ((__tmp47438
                                (let ((__tmp47439
                                       (gx#datum->syntax '#f 'absent-value)))
                                  (declare (not safe))
                                  (cons __tmp47439 '()))))
                           (declare (not safe))
                           (cons _L5867_ __tmp47438))))
                    (declare (not safe))
                    (cons __tmp47440 __tmp47437)))
                 (__tmp47434
                  (let ((__tmp47435
                         (let () (declare (not safe)) (cons _L5867_ '()))))
                    (declare (not safe))
                    (cons _L5866_ __tmp47435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47436
                                                           __tmp47434))))
                                              (declare (not safe))
                                              (cons __tmp47441 __tmp47433))))
                                       (declare (not safe))
                                       (cons __tmp47432 '()))))
                                (declare (not safe))
                                (cons __tmp47442 __tmp47431))))
                         (declare (not safe))
                         (cons __tmp47430 '())))
                      (__tmp47428
                       (let () (declare (not safe)) (cons _L5864_ '()))))
                  (declare (not safe))
                  (cons __tmp47429 __tmp47428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47443
                                                         __tmp47427))))
                                             _hd58105858_
                                             _hd58075848_
                                             _hd58045838_
                                             _hd58015828_)
                                            (_g57945817_ _g57955821_))))
                                    (_g57945817_ _g57955821_))))
                            (_g57945817_ _g57955821_))))
                    (_g57945817_ _g57955821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57945817_
                                                     _g57955821_)))))
                                        (_g57935897_
                                         (list _var5777_
                                               _kwval5783_
                                               _default5780_
                                               (_make-body5283_
                                                _rest-kwargs5786_
                                                _rest-kwvals5789_)))))
                                    (let ()
                                      (declare (not safe))
                                      (cons 'begin _body5281_)))))
                             (_make-main5285_
                              (lambda ()
                                (let* ((_g55785586_
                                        (lambda (_g55795582_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g55795582_)))
                                       (_g55775762_
                                        (lambda (_g55795590_)
                                          ((lambda (_L5593_)
                                             (let ()
                                               (let* ((_g56055622_
                                                       (lambda (_g56065618_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g56065618_)))
                                                      (_g56045758_
                                                       (lambda (_g56065626_)
                                                         (if (gx#stx-pair/null?
                                                              _g56065626_)
                                                             (let ((_g47444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g56065626_ '0)))
                       (begin
                         (let ((_g47445_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g47444_)
                                      (##vector-length _g47444_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g47445_ 2)))
                               (error "Context expects 2 values" _g47445_)))
                         (let ((_target56085629_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47444_ 0)))
                               (_tl56105632_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47444_ 1))))
                           (if (gx#stx-null? _tl56105632_)
                               (letrec ((_loop56115635_
                                         (lambda (_hd56095639_ _kwval56155642_)
                                           (if (gx#stx-pair? _hd56095639_)
                                               (let ((_e56125645_
                                                      (gx#syntax-e
                                                       _hd56095639_)))
                                                 (let ((_lp-hd56135649_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e56125645_)))
                                                       (_lp-tl56145652_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e56125645_))))
                                                   (_loop56115635_
                                                    _lp-tl56145652_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd56135649_
                                                            _kwval56155642_)))))
                                               (let ((_kwval56165655_
                                                      (reverse _kwval56155642_)))
                                                 ((lambda (_L5659_)
                                                    (let ()
                                                      (let* ((_g56765684_
                                                              (lambda (_g56775680_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g56775680_)))
                     (_g56755754_
                      (lambda (_g56775688_)
                        ((lambda (_L5691_)
                           (let ()
                             (let* ((_g57045712_
                                     (lambda (_g57055708_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g57055708_)))
                                    (_g57035742_
                                     (lambda (_g57055716_)
                                       ((lambda (_L5719_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (let ((__tmp47451
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp47446
                                                      (let ((__tmp47448
                                                             (let ((__tmp47449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47450
                                   (lambda (_g57335736_ _g57345739_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g57335736_ _g57345739_)))))
                              (declare (not safe))
                              (foldr1 __tmp47450 _L5691_ _L5659_))))
                       (declare (not safe))
                       (cons _L5593_ __tmp47449)))
                    (__tmp47447
                     (let () (declare (not safe)) (cons _L5719_ '()))))
                (declare (not safe))
                (cons __tmp47448 __tmp47447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47451 __tmp47446))
                                               (gx#stx-source _stx4661_)))))
                                        _g57055716_))))
                               (_g57035742_
                                (_make-body5283_
                                 _kwargs5279_
                                 (let ((__tmp47452
                                        (lambda (_g57455748_ _g57465751_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g57455748_ _g57465751_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47452 '() _L5659_)))))))
                         _g56775688_))))
                (_g56755754_ _args5280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval56165655_))))))
                                 (_loop56115635_ _target56085629_ '()))
                               (_g56055622_ _g56065626_)))))
                     (_g56055622_ _g56065626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g56045758_
                                                  (gx#gentemps
                                                   (map cadr _kwargs5279_))))))
                                           _g55795590_))))
                                  (_g55775762_
                                   (let ((_$e5766_ _key5277_))
                                     (if _$e5766_ _$e5766_ '_))))))
                             (_make-dispatch5286_
                              (lambda (_main5386_)
                                (let* ((_g53895397_
                                        (lambda (_g53905393_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g53905393_)))
                                       (_g53885568_
                                        (lambda (_g53905401_)
                                          ((lambda (_L5404_)
                                             (let ()
                                               (let* ((_g54165433_
                                                       (lambda (_g54175429_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g54175429_)))
                                                      (_g54155529_
                                                       (lambda (_g54175437_)
                                                         (if (gx#stx-pair/null?
                                                              _g54175437_)
                                                             (let ((_g47453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g54175437_ '0)))
                       (begin
                         (let ((_g47454_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g47453_)
                                      (##vector-length _g47453_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g47454_ 2)))
                               (error "Context expects 2 values" _g47454_)))
                         (let ((_target54195440_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47453_ 0)))
                               (_tl54215443_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47453_ 1))))
                           (if (gx#stx-null? _tl54215443_)
                               (letrec ((_loop54225446_
                                         (lambda (_hd54205450_
                                                  _get-kw54265453_)
                                           (if (gx#stx-pair? _hd54205450_)
                                               (let ((_e54235456_
                                                      (gx#syntax-e
                                                       _hd54205450_)))
                                                 (let ((_lp-hd54245460_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e54235456_)))
                                                       (_lp-tl54255463_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e54235456_))))
                                                   (_loop54225446_
                                                    _lp-tl54255463_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd54245460_
                                                            _get-kw54265453_)))))
                                               (let ((_get-kw54275466_
                                                      (reverse _get-kw54265453_)))
                                                 ((lambda (_L5470_)
                                                    (let ()
                                                      (let* ((_g54875495_
                                                              (lambda (_g54885491_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g54885491_)))
                     (_g54865525_
                      (lambda (_g54885499_)
                        ((lambda (_L5502_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (let ((__tmp47467
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp47455
                                       (let ((__tmp47465
                                              (let ((__tmp47466
                                                     (gx#datum->syntax
                                                      '#f
                                                      'args)))
                                                (declare (not safe))
                                                (cons _L5404_ __tmp47466)))
                                             (__tmp47456
                                              (let ((__tmp47457
                                                     (let ((__tmp47464
                                                            (gx#datum->syntax
                                                             '#f
                                                             'apply))
                                                           (__tmp47458
                                                            (let ((__tmp47459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp47460
                                  (let ((__tmp47463
                                         (lambda (_g55165519_ _g55175522_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g55165519_ _g55175522_))))
                                        (__tmp47461
                                         (let ((__tmp47462
                                                (gx#datum->syntax '#f 'args)))
                                           (declare (not safe))
                                           (cons __tmp47462 '()))))
                                    (declare (not safe))
                                    (foldr1 __tmp47463 __tmp47461 _L5470_))))
                             (declare (not safe))
                             (cons _L5404_ __tmp47460))))
                      (declare (not safe))
                      (cons _L5502_ __tmp47459))))
               (declare (not safe))
               (cons __tmp47464 __tmp47458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp47457 '()))))
                                         (declare (not safe))
                                         (cons __tmp47465 __tmp47456))))
                                  (declare (not safe))
                                  (cons __tmp47467 __tmp47455))
                                (gx#stx-source _stx4661_)))))
                         _g54885499_))))
                (_g54865525_ _main5386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw54275466_))))))
                                 (_loop54225446_ _target54195440_ '()))
                               (_g54165433_ _g54175437_)))))
                     (_g54165433_ _g54175437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g54155529_
                                                  (map (lambda (_kwarg5533_)
                                                         (let* ((_g55365544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g55375540_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g55375540_)))
                        (_g55355564_
                         (lambda (_g55375548_)
                           ((lambda (_L5551_)
                              (let ()
                                (let ((__tmp47475
                                       (gx#datum->syntax
                                        '#f
                                        'symbolic-table-ref))
                                      (__tmp47468
                                       (let ((__tmp47469
                                              (let ((__tmp47472
                                                     (let ((__tmp47474
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp47473
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L5551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp47474 __tmp47473)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp47470
                                                     (let ((__tmp47471
                                                            (gx#datum->syntax
                                                             '#f
                                                             'absent-value)))
                                                       (declare (not safe))
                                                       (cons __tmp47471 '()))))
                                                (declare (not safe))
                                                (cons __tmp47472 __tmp47470))))
                                         (declare (not safe))
                                         (cons _L5404_ __tmp47469))))
                                  (declare (not safe))
                                  (cons __tmp47475 __tmp47468))))
                            _g55375548_))))
                   (_g55355564_ (car _kwarg5533_))))
               _kwargs5279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g53905401_))))
                                  (_g53885568_
                                   (let ((_$e5572_ _key5277_))
                                     (if _$e5572_
                                         _$e5572_
                                         (gx#genident 'keys))))))))
                      (let* ((_g52885296_
                              (lambda (_g52895292_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g52895292_)))
                             (_g52875382_
                              (lambda (_g52895300_)
                                ((lambda (_L5303_)
                                   (let ()
                                     (let* ((_g53165324_
                                             (lambda (_g53175320_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g53175320_)))
                                            (_g53155378_
                                             (lambda (_g53175328_)
                                               ((lambda (_L5331_)
                                                  (let ()
                                                    (let* ((_g53445352_
                                                            (lambda (_g53455348_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g53455348_)))
                                                           (_g53435374_
                                                            (lambda (_g53455356_)
                                                              ((lambda (_L5359_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (let ((__tmp47482
                                    (gx#datum->syntax '#f 'let-values))
                                   (__tmp47476
                                    (let ((__tmp47478
                                           (let ((__tmp47479
                                                  (let ((__tmp47481
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L5303_ '())))
                                                        (__tmp47480
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L5359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47481
                                                          __tmp47480))))
                                             (declare (not safe))
                                             (cons __tmp47479 '())))
                                          (__tmp47477
                                           (let ()
                                             (declare (not safe))
                                             (cons _L5331_ '()))))
                                      (declare (not safe))
                                      (cons __tmp47478 __tmp47477))))
                               (declare (not safe))
                               (cons __tmp47482 __tmp47476)))))
                       _g53455356_))))
              (_g53435374_ (_make-main5285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g53175328_))))
                                       (_g53155378_
                                        (_make-dispatch5286_ _L5303_)))))
                                 _g52895300_))))
                        (_g52875382_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch4677_
                  (lambda (_primary5190_ _kwargs5192_ _strict?5193_)
                    (let* ((_g51955214_
                            (lambda (_g51965210_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g51965210_)))
                           (_g51945273_
                            (lambda (_g51965218_)
                              (if (gx#stx-pair? _g51965218_)
                                  (let ((_e52005221_
                                         (gx#syntax-e _g51965218_)))
                                    (let ((_hd52015225_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e52005221_)))
                                          (_tl52025228_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e52005221_))))
                                      (if (gx#stx-pair? _tl52025228_)
                                          (let ((_e52035231_
                                                 (gx#syntax-e _tl52025228_)))
                                            (let ((_hd52045235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e52035231_)))
                                                  (_tl52055238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e52035231_))))
                                              (if (gx#stx-pair? _tl52055238_)
                                                  (let ((_e52065241_
                                                         (gx#syntax-e
                                                          _tl52055238_)))
                                                    (let ((_hd52075245_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e52065241_)))
                                                          (_tl52085248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e52065241_))))
                                                      (if (gx#stx-null?
                                                           _tl52085248_)
                                                          ((lambda (_L5251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5253_
                            _L5254_)
                     (let ()
                       (let ((__tmp47495 (gx#datum->syntax '#f 'lambda%))
                             (__tmp47483
                              (let ((__tmp47484
                                     (let ((__tmp47485
                                            (let ((__tmp47494
                                                   (gx#datum->syntax
                                                    '#f
                                                    'apply))
                                                  (__tmp47486
                                                   (let ((__tmp47493
                                                          (gx#datum->syntax
                                                           '#f
                                                           'keyword-dispatch))
                                                         (__tmp47487
                                                          (let ((__tmp47490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp47492 (gx#datum->syntax '#f 'quote))
                               (__tmp47491
                                (let ()
                                  (declare (not safe))
                                  (cons _L5254_ '()))))
                           (declare (not safe))
                           (cons __tmp47492 __tmp47491)))
                        (__tmp47488
                         (let ((__tmp47489
                                (let ()
                                  (declare (not safe))
                                  (cons _L5251_ '()))))
                           (declare (not safe))
                           (cons _L5253_ __tmp47489))))
                    (declare (not safe))
                    (cons __tmp47490 __tmp47488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47493
                                                           __tmp47487))))
                                              (declare (not safe))
                                              (cons __tmp47494 __tmp47486))))
                                       (declare (not safe))
                                       (cons __tmp47485 '()))))
                                (declare (not safe))
                                (cons _L5251_ __tmp47484))))
                         (declare (not safe))
                         (cons __tmp47495 __tmp47483))))
                   _hd52075245_
                   _hd52045235_
                   _hd52015225_)
                  (_g51955214_ _g51965218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g51955214_ _g51965218_))))
                                          (_g51955214_ _g51965218_))))
                                  (_g51955214_ _g51965218_)))))
                      (_g51945273_
                       (list (if _strict?5193_
                                 (_generate-kw-table4678_
                                  (map car _kwargs5192_))
                                 '#f)
                             _primary5190_
                             (gx#genident 'args))))))
                 (_generate-kw-table4678_
                  (lambda (_kws5164_)
                    (let _rehash5167_ ((_pht5170_
                                        (make-vector (length _kws5164_) '#f)))
                      (let _lp5173_ ((_rest5176_ _kws5164_))
                        (if (let () (declare (not safe)) (pair? _rest5176_))
                            (let* ((_key5179_ (car _rest5176_))
                                   (_rest5182_ (cdr _rest5176_))
                                   (_pos5185_
                                    (fxmodulo
                                     (keyword-hash _key5179_)
                                     (vector-length _pht5170_))))
                              (if (vector-ref _pht5170_ _pos5185_)
                                  (if (fx< (vector-length _pht5170_) '8192)
                                      (_rehash5167_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5170_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5164_))
                                  (begin
                                    (vector-set! _pht5170_ _pos5185_ _key5179_)
                                    (_lp5173_ _rest5182_))))
                            _pht5170_))))))
          (let* ((___stx4253242533_ _stx4661_)
                 (_g46824713_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4253242533_))))
            (let ((___kont4253542536_
                   (lambda (_L5145_ _L5147_)
                     (let ((__tmp47497 (gx#datum->syntax '#f 'lambda%))
                           (__tmp47496
                            (let ()
                              (declare (not safe))
                              (cons _L5147_ _L5145_))))
                       (declare (not safe))
                       (cons __tmp47497 __tmp47496))))
                  (___kont4253742538_
                   (lambda (_L4917_ _L4919_)
                     (let ((_g47498_ (_opt-lambda-split4667_ _L4919_)))
                       (begin
                         (let ((_g47499_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g47498_)
                                      (##vector-length _g47498_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g47499_ 3)))
                               (error "Context expects 3 values" _g47499_)))
                         (let ((_pre4932_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47498_ 0)))
                               (_opt4934_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47498_ 1)))
                               (_tail4935_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47498_ 2))))
                           (let* ((_g49374945_
                                   (lambda (_g49384941_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g49384941_)))
                                  (_g49365114_
                                   (lambda (_g49384949_)
                                     ((lambda (_L4952_)
                                        (let ()
                                          (let* ((_g49654973_
                                                  (lambda (_g49664969_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g49664969_)))
                                                 (_g49645110_
                                                  (lambda (_g49664977_)
                                                    ((lambda (_L4980_)
                                                       (let ()
                                                         (let* ((_g49935010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g49945006_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g49945006_)))
                        (_g49925106_
                         (lambda (_g49945014_)
                           (if (gx#stx-pair/null? _g49945014_)
                               (let ((_g47500_
                                      (gx#syntax-split-splice _g49945014_ '0)))
                                 (begin
                                   (let ((_g47501_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g47500_)
                                                (##vector-length _g47500_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g47501_ 2)))
                                         (error "Context expects 2 values"
                                                _g47501_)))
                                   (let ((_target49965017_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g47500_ 0)))
                                         (_tl49985020_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g47500_ 1))))
                                     (if (gx#stx-null? _tl49985020_)
                                         (letrec ((_loop49995023_
                                                   (lambda (_hd49975027_
                                                            _clause50035030_)
                                                     (if (gx#stx-pair?
                                                          _hd49975027_)
                                                         (let ((_e50005033_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd49975027_)))
                   (let ((_lp-hd50015037_
                          (let () (declare (not safe)) (##car _e50005033_)))
                         (_lp-tl50025040_
                          (let () (declare (not safe)) (##cdr _e50005033_))))
                     (_loop49995023_
                      _lp-tl50025040_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd50015037_ _clause50035030_)))))
                 (let ((_clause50045043_ (reverse _clause50035030_)))
                   ((lambda (_L5047_)
                      (let ()
                        (let* ((_g50645072_
                                (lambda (_g50655068_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g50655068_)))
                               (_g50635094_
                                (lambda (_g50655076_)
                                  ((lambda (_L5079_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp47508
                                                (gx#datum->syntax
                                                 '#f
                                                 'let-values))
                                               (__tmp47502
                                                (let ((__tmp47504
                                                       (let ((__tmp47505
                                                              (let ((__tmp47507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons _L4952_ '())))
                            (__tmp47506
                             (let () (declare (not safe)) (cons _L4980_ '()))))
                        (declare (not safe))
                        (cons __tmp47507 __tmp47506))))
                 (declare (not safe))
                 (cons __tmp47505 '())))
              (__tmp47503 (let () (declare (not safe)) (cons _L5079_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47504
                                                        __tmp47503))))
                                           (declare (not safe))
                                           (cons __tmp47508 __tmp47502)))))
                                   _g50655076_))))
                          (_g50635094_
                           (gx#stx-wrap-source
                            (let ((__tmp47511
                                   (gx#datum->syntax '#f 'case-lambda))
                                  (__tmp47509
                                   (let ((__tmp47510
                                          (lambda (_g50975100_ _g50985103_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g50975100_
                                                    _g50985103_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47510 '() _L5047_))))
                              (declare (not safe))
                              (cons __tmp47511 __tmp47509))
                            (gx#stx-source _stx4661_))))))
                    _clause50045043_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop49995023_
                                            _target49965017_
                                            '()))
                                         (_g49935010_ _g49945014_)))))
                               (_g49935010_ _g49945014_)))))
                   (_g49925106_
                    (_generate-opt-dispatch4673_
                     _L4952_
                     _pre4932_
                     _opt4934_
                     _tail4935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g49664977_))))
                                            (_g49645110_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary4672_
                                               _pre4932_
                                               _opt4934_
                                               _tail4935_
                                               _L4917_)
                                              (gx#stx-source _stx4661_))))))
                                      _g49384949_))))
                             (_g49365114_ (gx#genident 'opt-lambda))))))))
                  (___kont4253942540_
                   (lambda (_L4740_ _L4742_)
                     (let* ((_g47584765_
                             (lambda (_g47594761_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g47594761_)))
                            (_g47574886_
                             (lambda (_g47594769_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g47512_
                                           (_kw-lambda-split4669_ _L4742_)))
                                      (begin
                                        (let ((_g47513_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g47512_)
                                                     (##vector-length _g47512_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g47513_ 3)))
                                              (error "Context expects 3 values"
                                                     _g47513_)))
                                        (let ((_key4778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47512_ 0)))
                                              (_kwargs4780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47512_ 1)))
                                              (_args4781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47512_ 2))))
                                          (let* ((_g47834791_
                                                  (lambda (_g47844787_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g47844787_)))
                                                 (_g47824882_
                                                  (lambda (_g47844795_)
                                                    ((lambda (_L4798_)
                                                       (let ()
                                                         (let* ((_g48164824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g48174820_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g48174820_)))
                        (_g48154878_
                         (lambda (_g48174828_)
                           ((lambda (_L4831_)
                              (let ()
                                (let* ((_g48444852_
                                        (lambda (_g48454848_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g48454848_)))
                                       (_g48434874_
                                        (lambda (_g48454856_)
                                          ((lambda (_L4859_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp47520
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp47514
                                                        (let ((__tmp47516
                                                               (let ((__tmp47517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47519
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4798_ '())))
                                    (__tmp47518
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4831_ '()))))
                                (declare (not safe))
                                (cons __tmp47519 __tmp47518))))
                         (declare (not safe))
                         (cons __tmp47517 '())))
                      (__tmp47515
                       (let () (declare (not safe)) (cons _L4859_ '()))))
                  (declare (not safe))
                  (cons __tmp47516 __tmp47515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47520
                                                         __tmp47514)))))
                                           _g48454856_))))
                                  (_g48434874_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch4677_
                                     _L4798_
                                     _kwargs4780_
                                     (let ()
                                       (declare (not safe))
                                       (not _key4778_)))
                                    (gx#stx-source _stx4661_))))))
                            _g48174828_))))
                   (_g48154878_
                    (gx#stx-wrap-source
                     (_generate-kw-primary4676_
                      _key4778_
                      _kwargs4780_
                      _args4781_
                      _L4740_)
                     (gx#stx-source _stx4661_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g47844795_))))
                                            (_g47824882_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g47574886_
                        (_check-duplicate-bindings4671_ _L4742_))))))
              (let* ((___match4257742578_
                      (lambda (_e47024720_
                               _hd47034724_
                               _tl47044727_
                               _e47054730_
                               _hd47064734_
                               _tl47074737_)
                        (let ((_L4740_ _tl47074737_) (_L4742_ _hd47064734_))
                          (if (_kw-lambda?4668_ _L4742_)
                              (___kont4253942540_ _L4740_ _L4742_)
                              (let () (declare (not safe)) (_g46824713_))))))
                     (___match4256542566_
                      (lambda (_e46944897_
                               _hd46954901_
                               _tl46964904_
                               _e46974907_
                               _hd46984911_
                               _tl46994914_)
                        (let ((_L4917_ _tl46994914_) (_L4919_ _hd46984911_))
                          (if (_opt-lambda?4666_ _L4919_)
                              (___kont4253742538_ _L4917_ _L4919_)
                              (___match4257742578_
                               _e46944897_
                               _hd46954901_
                               _tl46964904_
                               _e46974907_
                               _hd46984911_
                               _tl46994914_)))))
                     (___match4255342554_
                      (lambda (_e46865125_
                               _hd46875129_
                               _tl46885132_
                               _e46895135_
                               _hd46905139_
                               _tl46915142_)
                        (let ((_L5145_ _tl46915142_) (_L5147_ _hd46905139_))
                          (if (_simple-lambda?4664_ _L5147_)
                              (___kont4253542536_ _L5145_ _L5147_)
                              (___match4256542566_
                               _e46865125_
                               _hd46875129_
                               _tl46885132_
                               _e46895135_
                               _hd46905139_
                               _tl46915142_))))))
                (if (gx#stx-pair? ___stx4253242533_)
                    (let ((_e46865125_ (gx#syntax-e ___stx4253242533_)))
                      (let ((_tl46885132_
                             (let () (declare (not safe)) (##cdr _e46865125_)))
                            (_hd46875129_
                             (let ()
                               (declare (not safe))
                               (##car _e46865125_))))
                        (if (gx#stx-pair? _tl46885132_)
                            (let ((_e46895135_ (gx#syntax-e _tl46885132_)))
                              (let ((_tl46915142_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46895135_)))
                                    (_hd46905139_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46895135_))))
                                (___match4255342554_
                                 _e46865125_
                                 _hd46875129_
                                 _tl46885132_
                                 _e46895135_
                                 _hd46905139_
                                 _tl46915142_)))
                            (let () (declare (not safe)) (_g46824713_)))))
                    (let () (declare (not safe)) (_g46824713_)))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8077_)
        (let* ((___stx4258042581_ _$stx8077_)
               (_g80838147_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4258042581_))))
          (let ((___kont4258342584_
                 (lambda (_L8377_ _L8379_ _L8380_ _L8381_)
                   (let ((__tmp47529 (gx#datum->syntax '#f 'def))
                         (__tmp47521
                          (let ((__tmp47528
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8381_ _L8380_)))
                                (__tmp47522
                                 (let ((__tmp47523
                                        (let ((__tmp47527
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp47524
                                               (let ((__tmp47525
                                                      (let ((__tmp47526
                                                             (lambda (_g84038406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g84048409_)
                       (let ()
                         (declare (not safe))
                         (cons _g84038406_ _g84048409_)))))
                (declare (not safe))
                (foldr1 __tmp47526 '() _L8377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L8379_ __tmp47525))))
                                          (declare (not safe))
                                          (cons __tmp47527 __tmp47524))))
                                   (declare (not safe))
                                   (cons __tmp47523 '()))))
                            (declare (not safe))
                            (cons __tmp47528 __tmp47522))))
                     (declare (not safe))
                     (cons __tmp47529 __tmp47521))))
                (___kont4258742588_
                 (lambda (_L8269_ _L8271_ _L8272_)
                   (let ((__tmp47538 (gx#datum->syntax '#f 'define-values))
                         (__tmp47530
                          (let ((__tmp47537
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8272_ '())))
                                (__tmp47531
                                 (let ((__tmp47532
                                        (let ((__tmp47536
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp47533
                                               (let ((__tmp47534
                                                      (let ((__tmp47535
                                                             (lambda (_g82918294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g82928297_)
                       (let ()
                         (declare (not safe))
                         (cons _g82918294_ _g82928297_)))))
                (declare (not safe))
                (foldr1 __tmp47535 '() _L8269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L8271_ __tmp47534))))
                                          (declare (not safe))
                                          (cons __tmp47536 __tmp47533))))
                                   (declare (not safe))
                                   (cons __tmp47532 '()))))
                            (declare (not safe))
                            (cons __tmp47537 __tmp47531))))
                     (declare (not safe))
                     (cons __tmp47538 __tmp47530))))
                (___kont4259142592_
                 (lambda (_L8184_ _L8186_)
                   (let ((__tmp47542 (gx#datum->syntax '#f 'define-values))
                         (__tmp47539
                          (let ((__tmp47541
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8186_ '())))
                                (__tmp47540
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8184_ '()))))
                            (declare (not safe))
                            (cons __tmp47541 __tmp47540))))
                     (declare (not safe))
                     (cons __tmp47542 __tmp47539)))))
            (let* ((___match4267142672_
                    (lambda (_e81338154_
                             _hd81348158_
                             _tl81358161_
                             _e81368164_
                             _hd81378168_
                             _tl81388171_
                             _e81398174_
                             _hd81408178_
                             _tl81418181_)
                      (let ((_L8184_ _hd81408178_) (_L8186_ _hd81378168_))
                        (if (gx#identifier? _L8186_)
                            (___kont4259142592_ _L8184_ _L8186_)
                            (let () (declare (not safe)) (_g80838147_))))))
                   (___match4266342664_
                    (lambda (_e81338154_
                             _hd81348158_
                             _tl81358161_
                             _e81368164_
                             _hd81378168_
                             _tl81388171_)
                      (if (gx#stx-pair? _tl81388171_)
                          (let ((_e81398174_ (gx#syntax-e _tl81388171_)))
                            (let ((_tl81418181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e81398174_)))
                                  (_hd81408178_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e81398174_))))
                              (if (gx#stx-null? _tl81418181_)
                                  (___match4267142672_
                                   _e81338154_
                                   _hd81348158_
                                   _tl81358161_
                                   _e81368164_
                                   _hd81378168_
                                   _tl81388171_
                                   _e81398174_
                                   _hd81408178_
                                   _tl81418181_)
                                  (let ()
                                    (declare (not safe))
                                    (_g80838147_)))))
                          (let () (declare (not safe)) (_g80838147_)))))
                   (___match4265142652_
                    (lambda (_e81138209_
                             _hd81148213_
                             _tl81158216_
                             _e81168219_
                             _hd81178223_
                             _tl81188226_
                             _e81198229_
                             _hd81208233_
                             _tl81218236_
                             ___splice4258942590_
                             _target81228239_
                             _tl81248242_)
                      (letrec ((_loop81258245_
                                (lambda (_hd81238249_ _body81298252_)
                                  (if (gx#stx-pair? _hd81238249_)
                                      (let ((_e81268255_
                                             (gx#syntax-e _hd81238249_)))
                                        (let ((_lp-tl81288262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e81268255_)))
                                              (_lp-hd81278259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e81268255_))))
                                          (_loop81258245_
                                           _lp-tl81288262_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd81278259_
                                                   _body81298252_)))))
                                      (let ((_body81308265_
                                             (reverse _body81298252_)))
                                        (let ((_L8269_ _body81308265_)
                                              (_L8271_ _tl81218236_)
                                              (_L8272_ _hd81208233_))
                                          (if (gx#identifier? _L8272_)
                                              (___kont4258742588_
                                               _L8269_
                                               _L8271_
                                               _L8272_)
                                              (___match4266342664_
                                               _e81138209_
                                               _hd81148213_
                                               _tl81158216_
                                               _e81168219_
                                               _hd81178223_
                                               _tl81188226_))))))))
                        (_loop81258245_ _target81228239_ '()))))
                   (___match4262542626_
                    (lambda (_e80898307_
                             _hd80908311_
                             _tl80918314_
                             _e80928317_
                             _hd80938321_
                             _tl80948324_
                             _e80958327_
                             _hd80968331_
                             _tl80978334_
                             _e80988337_
                             _hd80998341_
                             _tl81008344_
                             ___splice4258542586_
                             _target81018347_
                             _tl81038350_)
                      (letrec ((_loop81048353_
                                (lambda (_hd81028357_ _body81088360_)
                                  (if (gx#stx-pair? _hd81028357_)
                                      (let ((_e81058363_
                                             (gx#syntax-e _hd81028357_)))
                                        (let ((_lp-tl81078370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e81058363_)))
                                              (_lp-hd81068367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e81058363_))))
                                          (_loop81048353_
                                           _lp-tl81078370_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd81068367_
                                                   _body81088360_)))))
                                      (let ((_body81098373_
                                             (reverse _body81088360_)))
                                        (___kont4258342584_
                                         _body81098373_
                                         _tl80978334_
                                         _tl81008344_
                                         _hd80998341_))))))
                        (_loop81048353_ _target81018347_ '())))))
              (if (gx#stx-pair? ___stx4258042581_)
                  (let ((_e80898307_ (gx#syntax-e ___stx4258042581_)))
                    (let ((_tl80918314_
                           (let () (declare (not safe)) (##cdr _e80898307_)))
                          (_hd80908311_
                           (let () (declare (not safe)) (##car _e80898307_))))
                      (if (gx#stx-pair? _tl80918314_)
                          (let ((_e80928317_ (gx#syntax-e _tl80918314_)))
                            (let ((_tl80948324_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e80928317_)))
                                  (_hd80938321_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e80928317_))))
                              (if (gx#stx-pair? _hd80938321_)
                                  (let ((_e80958327_
                                         (gx#syntax-e _hd80938321_)))
                                    (let ((_tl80978334_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80958327_)))
                                          (_hd80968331_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80958327_))))
                                      (if (gx#stx-pair? _hd80968331_)
                                          (let ((_e80988337_
                                                 (gx#syntax-e _hd80968331_)))
                                            (let ((_tl81008344_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e80988337_)))
                                                  (_hd80998341_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e80988337_))))
                                              (if (gx#stx-pair/null?
                                                   _tl80948324_)
                                                  (let ((___splice4258542586_
                                                         (gx#syntax-split-splice
                                                          _tl80948324_
                                                          '0)))
                                                    (let ((_tl81038350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4258542586_
                                                              '1)))
                                                          (_target81018347_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4258542586_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl81038350_)
                                                          (___match4262542626_
                                                           _e80898307_
                                                           _hd80908311_
                                                           _tl80918314_
                                                           _e80928317_
                                                           _hd80938321_
                                                           _tl80948324_
                                                           _e80958327_
                                                           _hd80968331_
                                                           _tl80978334_
                                                           _e80988337_
                                                           _hd80998341_
                                                           _tl81008344_
                                                           ___splice4258542586_
                                                           _target81018347_
                                                           _tl81038350_)
                                                          (if (gx#stx-pair?
                                                               _tl80948324_)
                                                              (let ((_e81398174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl80948324_)))
                        (let ((_tl81418181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e81398174_)))
                              (_hd81408178_
                               (let ()
                                 (declare (not safe))
                                 (##car _e81398174_))))
                          (if (gx#stx-null? _tl81418181_)
                              (___match4267142672_
                               _e80898307_
                               _hd80908311_
                               _tl80918314_
                               _e80928317_
                               _hd80938321_
                               _tl80948324_
                               _e81398174_
                               _hd81408178_
                               _tl81418181_)
                              (let () (declare (not safe)) (_g80838147_)))))
                      (let () (declare (not safe)) (_g80838147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl80948324_)
                                                      (let ((_e81398174_
                                                             (gx#syntax-e
                                                              _tl80948324_)))
                                                        (let ((_tl81418181_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e81398174_)))
                      (_hd81408178_
                       (let () (declare (not safe)) (##car _e81398174_))))
                  (if (gx#stx-null? _tl81418181_)
                      (___match4267142672_
                       _e80898307_
                       _hd80908311_
                       _tl80918314_
                       _e80928317_
                       _hd80938321_
                       _tl80948324_
                       _e81398174_
                       _hd81408178_
                       _tl81418181_)
                      (let () (declare (not safe)) (_g80838147_)))))
              (let () (declare (not safe)) (_g80838147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null? _tl80948324_)
                                              (let ((___splice4258942590_
                                                     (gx#syntax-split-splice
                                                      _tl80948324_
                                                      '0)))
                                                (let ((_tl81248242_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4258942590_
                                                          '1)))
                                                      (_target81228239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4258942590_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl81248242_)
                                                      (___match4265142652_
                                                       _e80898307_
                                                       _hd80908311_
                                                       _tl80918314_
                                                       _e80928317_
                                                       _hd80938321_
                                                       _tl80948324_
                                                       _e80958327_
                                                       _hd80968331_
                                                       _tl80978334_
                                                       ___splice4258942590_
                                                       _target81228239_
                                                       _tl81248242_)
                                                      (if (gx#stx-pair?
                                                           _tl80948324_)
                                                          (let ((_e81398174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80948324_)))
                    (let ((_tl81418181_
                           (let () (declare (not safe)) (##cdr _e81398174_)))
                          (_hd81408178_
                           (let () (declare (not safe)) (##car _e81398174_))))
                      (if (gx#stx-null? _tl81418181_)
                          (___match4267142672_
                           _e80898307_
                           _hd80908311_
                           _tl80918314_
                           _e80928317_
                           _hd80938321_
                           _tl80948324_
                           _e81398174_
                           _hd81408178_
                           _tl81418181_)
                          (let () (declare (not safe)) (_g80838147_)))))
                  (let () (declare (not safe)) (_g80838147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl80948324_)
                                                  (let ((_e81398174_
                                                         (gx#syntax-e
                                                          _tl80948324_)))
                                                    (let ((_tl81418181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e81398174_)))
                                                          (_hd81408178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e81398174_))))
                                                      (if (gx#stx-null?
                                                           _tl81418181_)
                                                          (___match4267142672_
                                                           _e80898307_
                                                           _hd80908311_
                                                           _tl80918314_
                                                           _e80928317_
                                                           _hd80938321_
                                                           _tl80948324_
                                                           _e81398174_
                                                           _hd81408178_
                                                           _tl81418181_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g80838147_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g80838147_)))))))
                                  (if (gx#stx-pair? _tl80948324_)
                                      (let ((_e81398174_
                                             (gx#syntax-e _tl80948324_)))
                                        (let ((_tl81418181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e81398174_)))
                                              (_hd81408178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e81398174_))))
                                          (if (gx#stx-null? _tl81418181_)
                                              (___match4267142672_
                                               _e80898307_
                                               _hd80908311_
                                               _tl80918314_
                                               _e80928317_
                                               _hd80938321_
                                               _tl80948324_
                                               _e81398174_
                                               _hd81408178_
                                               _tl81418181_)
                                              (let ()
                                                (declare (not safe))
                                                (_g80838147_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g80838147_))))))
                          (let () (declare (not safe)) (_g80838147_)))))
                  (let () (declare (not safe)) (_g80838147_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8418_)
        (let* ((_g84228446_
                (lambda (_g84238442_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g84238442_)))
               (_g84218531_
                (lambda (_g84238450_)
                  (if (gx#stx-pair? _g84238450_)
                      (let ((_e84268453_ (gx#syntax-e _g84238450_)))
                        (let ((_hd84278457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e84268453_)))
                              (_tl84288460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e84268453_))))
                          (if (gx#stx-pair? _tl84288460_)
                              (let ((_e84298463_ (gx#syntax-e _tl84288460_)))
                                (let ((_hd84308467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e84298463_)))
                                      (_tl84318470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e84298463_))))
                                  (if (gx#stx-pair/null? _tl84318470_)
                                      (let ((_g47543_
                                             (gx#syntax-split-splice
                                              _tl84318470_
                                              '0)))
                                        (begin
                                          (let ((_g47544_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47543_)
                                                       (##vector-length
                                                        _g47543_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47544_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47544_)))
                                          (let ((_target84328473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47543_ 0)))
                                                (_tl84348476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47543_ 1))))
                                            (if (gx#stx-null? _tl84348476_)
                                                (letrec ((_loop84358479_
                                                          (lambda (_hd84338483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses84398486_)
                    (if (gx#stx-pair? _hd84338483_)
                        (let ((_e84368489_ (gx#syntax-e _hd84338483_)))
                          (let ((_lp-hd84378493_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e84368489_)))
                                (_lp-tl84388496_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e84368489_))))
                            (_loop84358479_
                             _lp-tl84388496_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd84378493_ _clauses84398486_)))))
                        (let ((_clauses84408499_ (reverse _clauses84398486_)))
                          ((lambda (_L8503_ _L8505_)
                             (if (gx#identifier? _L8505_)
                                 (let ((__tmp47552
                                        (gx#datum->syntax '#f 'define-values))
                                       (__tmp47545
                                        (let ((__tmp47551
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L8505_ '())))
                                              (__tmp47546
                                               (let ((__tmp47547
                                                      (let ((__tmp47550
                                                             (gx#datum->syntax
                                                              '#f
                                                              'case-lambda))
                                                            (__tmp47548
                                                             (let ((__tmp47549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g85228525_ _g85238528_)
                              (let ()
                                (declare (not safe))
                                (cons _g85228525_ _g85238528_)))))
                       (declare (not safe))
                       (foldr1 __tmp47549 '() _L8503_))))
                (declare (not safe))
                (cons __tmp47550 __tmp47548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47547 '()))))
                                          (declare (not safe))
                                          (cons __tmp47551 __tmp47546))))
                                   (declare (not safe))
                                   (cons __tmp47552 __tmp47545))
                                 (_g84228446_ _g84238450_)))
                           _clauses84408499_
                           _hd84308467_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop84358479_
                                                   _target84328473_
                                                   '()))
                                                (_g84228446_ _g84238450_)))))
                                      (_g84228446_ _g84238450_))))
                              (_g84228446_ _g84238450_))))
                      (_g84228446_ _g84238450_)))))
          (_g84218531_ _$stx8418_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8536_)
        (let* ((_g85408558_
                (lambda (_g85418554_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g85418554_)))
               (_g85398613_
                (lambda (_g85418562_)
                  (if (gx#stx-pair? _g85418562_)
                      (let ((_e85448565_ (gx#syntax-e _g85418562_)))
                        (let ((_hd85458569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85448565_)))
                              (_tl85468572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85448565_))))
                          (if (gx#stx-pair? _tl85468572_)
                              (let ((_e85478575_ (gx#syntax-e _tl85468572_)))
                                (let ((_hd85488579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85478575_)))
                                      (_tl85498582_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85478575_))))
                                  (if (gx#stx-pair? _tl85498582_)
                                      (let ((_e85508585_
                                             (gx#syntax-e _tl85498582_)))
                                        (let ((_hd85518589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e85508585_)))
                                              (_tl85528592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e85508585_))))
                                          (if (gx#stx-null? _tl85528592_)
                                              ((lambda (_L8595_ _L8597_)
                                                 (if (gx#identifier-list?
                                                      _L8597_)
                                                     (let ((__tmp47555
                                                            (gx#datum->syntax
                                                             '#f
                                                             'define-values))
                                                           (__tmp47553
                                                            (let ((__tmp47554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L8595_ '()))))
                      (declare (not safe))
                      (cons _L8597_ __tmp47554))))
               (declare (not safe))
               (cons __tmp47555 __tmp47553))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85408558_
                                                      _g85418562_)))
                                               _hd85518589_
                                               _hd85488579_)
                                              (_g85408558_ _g85418562_))))
                                      (_g85408558_ _g85418562_))))
                              (_g85408558_ _g85418562_))))
                      (_g85408558_ _g85418562_)))))
          (_g85398613_ _$stx8536_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8617_)
        (let* ((_g86218645_
                (lambda (_g86228641_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g86228641_)))
               (_g86208730_
                (lambda (_g86228649_)
                  (if (gx#stx-pair? _g86228649_)
                      (let ((_e86258652_ (gx#syntax-e _g86228649_)))
                        (let ((_hd86268656_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86258652_)))
                              (_tl86278659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86258652_))))
                          (if (gx#stx-pair? _tl86278659_)
                              (let ((_e86288662_ (gx#syntax-e _tl86278659_)))
                                (let ((_hd86298666_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86288662_)))
                                      (_tl86308669_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86288662_))))
                                  (if (gx#stx-pair/null? _tl86308669_)
                                      (let ((_g47556_
                                             (gx#syntax-split-splice
                                              _tl86308669_
                                              '0)))
                                        (begin
                                          (let ((_g47557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47556_)
                                                       (##vector-length
                                                        _g47556_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47557_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47557_)))
                                          (let ((_target86318672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47556_ 0)))
                                                (_tl86338675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47556_ 1))))
                                            (if (gx#stx-null? _tl86338675_)
                                                (letrec ((_loop86348678_
                                                          (lambda (_hd86328682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause86388685_)
                    (if (gx#stx-pair? _hd86328682_)
                        (let ((_e86358688_ (gx#syntax-e _hd86328682_)))
                          (let ((_lp-hd86368692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e86358688_)))
                                (_lp-tl86378695_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e86358688_))))
                            (_loop86348678_
                             _lp-tl86378695_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd86368692_ _clause86388685_)))))
                        (let ((_clause86398698_ (reverse _clause86388685_)))
                          ((lambda (_L8702_ _L8704_)
                             (let ((__tmp47569 (gx#datum->syntax '#f 'let))
                                   (__tmp47558
                                    (let ((__tmp47566
                                           (let ((__tmp47568
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp47567
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L8704_ '()))))
                                             (declare (not safe))
                                             (cons __tmp47568 __tmp47567)))
                                          (__tmp47559
                                           (let ((__tmp47560
                                                  (let ((__tmp47565
                                                         (gx#datum->syntax
                                                          '#f
                                                          '~case))
                                                        (__tmp47561
                                                         (let ((__tmp47564
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp47562
                        (let ((__tmp47563
                               (lambda (_g87218724_ _g87228727_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g87218724_ _g87228727_)))))
                          (declare (not safe))
                          (foldr1 __tmp47563 '() _L8702_))))
                   (declare (not safe))
                   (cons __tmp47564 __tmp47562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47565
                                                          __tmp47561))))
                                             (declare (not safe))
                                             (cons __tmp47560 '()))))
                                      (declare (not safe))
                                      (cons __tmp47566 __tmp47559))))
                               (declare (not safe))
                               (cons __tmp47569 __tmp47558)))
                           _clause86398698_
                           _hd86298666_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop86348678_
                                                   _target86318672_
                                                   '()))
                                                (_g86218645_ _g86228649_)))))
                                      (_g86218645_ _g86228649_))))
                              (_g86218645_ _g86228649_))))
                      (_g86218645_ _g86228649_)))))
          (_g86208730_ _$stx8617_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8735_)
        (letrec ((_parse-clauses8738_
                  (lambda (_e11201_ _clauses11203_)
                    (let _lp11205_ ((_rest11208_ _clauses11203_)
                                    (_datums11210_ '())
                                    (_dispatch11211_ '())
                                    (_default11212_ '#f))
                      (let* ((___stx4277042771_ _rest11208_)
                             (_g1121511227_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4277042771_))))
                        (let ((___kont4277342774_
                               (lambda (_L11259_ _L11261_)
                                 (let* ((___stx4267442675_ _L11261_)
                                        (_g1127911352_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4267442675_))))
                                   (let ((___kont4267742678_
                                          (lambda (_L11717_)
                                            (if (gx#stx-null? _L11259_)
                                                (let* ((_g1173211740_
                                                        (lambda (_g1173311736_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1173311736_)))
                                                       (_g1173111759_
                                                        (lambda (_g1173311744_)
                                                          ((lambda (_L11747_)
                                                             (let ()
                                                               (_lp11205_
                                                                '()
                                                                _datums11210_
                                                                _dispatch11211_
                                                                (let ((__tmp47570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L11747_ '()))))
                          (declare (not safe))
                          (cons _L11717_ __tmp47570)))))
                   _g1173311744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1173111759_ _e11201_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8735_
                                                 _L11261_))))
                                         (___kont4267942680_
                                          (lambda (_L11657_)
                                            (if (gx#stx-null? _L11259_)
                                                (_lp11205_
                                                 '()
                                                 _datums11210_
                                                 _dispatch11211_
                                                 (let ((__tmp47573
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp47571
                                                        (let ((__tmp47572
                                                               (lambda (_g1167111674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1167211677_)
                         (let ()
                           (declare (not safe))
                           (cons _g1167111674_ _g1167211677_)))))
                  (declare (not safe))
                  (foldr1 __tmp47572 '() _L11657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47573
                                                         __tmp47571)))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8735_
                                                 _L11261_))))
                                         (___kont4268342684_
                                          (lambda (_L11542_ _L11544_)
                                            (if (let ((__tmp47574
                                                       (let ((__tmp47575
                                                              (lambda (_g1156211565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1156311568_)
                        (let ()
                          (declare (not safe))
                          (cons _g1156211565_ _g1156311568_)))))
                 (declare (not safe))
                 (foldr1 __tmp47575 '() _L11544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp47574))
                                                (_lp11205_
                                                 _L11259_
                                                 _datums11210_
                                                 _dispatch11211_
                                                 _default11212_)
                                                (let* ((_g1157111579_
                                                        (lambda (_g1157211575_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1157211575_)))
                                                       (_g1157011606_
                                                        (lambda (_g1157211583_)
                                                          ((lambda (_L11586_)
                                                             (let ()
                                                               (_lp11205_
                                                                _L11259_
                                                                (let ((__tmp47576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map gx#stx-e
                                    (let ((__tmp47577
                                           (lambda (_g1159711600_
                                                    _g1159811603_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1159711600_
                                                     _g1159811603_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp47577 '() _L11544_)))))
                          (declare (not safe))
                          (cons __tmp47576 _datums11210_))
                        (let ((__tmp47578
                               (let ((__tmp47579
                                      (let ()
                                        (declare (not safe))
                                        (cons _L11586_ '()))))
                                 (declare (not safe))
                                 (cons _L11542_ __tmp47579))))
                          (declare (not safe))
                          (cons __tmp47578 _dispatch11211_))
                        _default11212_)))
                   _g1157211583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1157011606_ _e11201_)))))
                                         (___kont4268742688_
                                          (lambda (_L11429_ _L11431_)
                                            (if (let ((__tmp47580
                                                       (let ((__tmp47581
                                                              (lambda (_g1145011453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1145111456_)
                        (let ()
                          (declare (not safe))
                          (cons _g1145011453_ _g1145111456_)))))
                 (declare (not safe))
                 (foldr1 __tmp47581 '() _L11431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp47580))
                                                (_lp11205_
                                                 _L11259_
                                                 _datums11210_
                                                 _dispatch11211_
                                                 _default11212_)
                                                (_lp11205_
                                                 _L11259_
                                                 (let ((__tmp47582
                                                        (map gx#stx-e
                                                             (let ((__tmp47583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1145811461_ _g1145911464_)
                              (let ()
                                (declare (not safe))
                                (cons _g1145811461_ _g1145911464_)))))
                       (declare (not safe))
                       (foldr1 __tmp47583 '() _L11431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47582
                                                         _datums11210_))
                                                 (let ((__tmp47584
                                                        (let ((__tmp47587
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp47585
                                                               (let ((__tmp47586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1146611469_ _g1146711472_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1146611469_ _g1146711472_)))))
                         (declare (not safe))
                         (foldr1 __tmp47586 '() _L11429_))))
                  (declare (not safe))
                  (cons __tmp47587 __tmp47585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47584
                                                         _dispatch11211_))
                                                 _default11212_)))))
                                     (let* ((___match4276742768_
                                             (lambda (_e1132611359_
                                                      _hd1132711363_
                                                      _tl1132811366_
                                                      ___splice4268942690_
                                                      _target1132911369_
                                                      _tl1133111372_)
                                               (letrec ((_loop1133211375_
                                                         (lambda (_hd1133011379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1133611382_)
                   (if (gx#stx-pair? _hd1133011379_)
                       (let ((_e1133311385_ (gx#syntax-e _hd1133011379_)))
                         (let ((_lp-tl1133511392_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1133311385_)))
                               (_lp-hd1133411389_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1133311385_))))
                           (_loop1133211375_
                            _lp-tl1133511392_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1133411389_ _datum1133611382_)))))
                       (let ((_datum1133711395_ (reverse _datum1133611382_)))
                         (if (gx#stx-pair/null? _tl1132811366_)
                             (let ((___splice4269142692_
                                    (gx#syntax-split-splice
                                     _tl1132811366_
                                     '0)))
                               (let ((_tl1134011402_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice4269142692_
                                         '1)))
                                     (_target1133811399_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice4269142692_
                                         '0))))
                                 (if (gx#stx-null? _tl1134011402_)
                                     (letrec ((_loop1134111405_
                                               (lambda (_hd1133911409_
                                                        _body1134511412_)
                                                 (if (gx#stx-pair?
                                                      _hd1133911409_)
                                                     (let ((_e1134211415_
                                                            (gx#syntax-e
                                                             _hd1133911409_)))
                                                       (let ((_lp-tl1134411422_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1134211415_)))
                     (_lp-hd1134311419_
                      (let () (declare (not safe)) (##car _e1134211415_))))
                 (_loop1134111405_
                  _lp-tl1134411422_
                  (let ()
                    (declare (not safe))
                    (cons _lp-hd1134311419_ _body1134511412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1134611425_
                                                            (reverse _body1134511412_)))
                                                       (___kont4268742688_
                                                        _body1134611425_
                                                        _datum1133711395_))))))
                                       (_loop1134111405_
                                        _target1133811399_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1127911352_)))))
                             (let ()
                               (declare (not safe))
                               (_g1127911352_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1133211375_
                                                  _target1132911369_
                                                  '()))))
                                            (___match4275342754_
                                             (lambda (_e1130611482_
                                                      _hd1130711486_
                                                      _tl1130811489_
                                                      ___splice4268542686_
                                                      _target1130911492_
                                                      _tl1131111495_)
                                               (letrec ((_loop1131211498_
                                                         (lambda (_hd1131011502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1131611505_)
                   (if (gx#stx-pair? _hd1131011502_)
                       (let ((_e1131311508_ (gx#syntax-e _hd1131011502_)))
                         (let ((_lp-tl1131511515_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1131311508_)))
                               (_lp-hd1131411512_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1131311508_))))
                           (_loop1131211498_
                            _lp-tl1131511515_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1131411512_ _datum1131611505_)))))
                       (let ((_datum1131711518_ (reverse _datum1131611505_)))
                         (if (gx#stx-pair? _tl1130811489_)
                             (let ((_e1131811522_
                                    (gx#syntax-e _tl1130811489_)))
                               (let ((_tl1132011529_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1131811522_)))
                                     (_hd1131911526_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1131811522_))))
                                 (if (gx#identifier? _hd1131911526_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g47588_|
                                          _hd1131911526_)
                                         (if (gx#stx-pair? _tl1132011529_)
                                             (let ((_e1132111532_
                                                    (gx#syntax-e
                                                     _tl1132011529_)))
                                               (let ((_tl1132311539_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1132111532_)))
                                                     (_hd1132211536_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1132111532_))))
                                                 (if (gx#stx-null?
                                                      _tl1132311539_)
                                                     (___kont4268342684_
                                                      _hd1132211536_
                                                      _datum1131711518_)
                                                     (___match4276742768_
                                                      _e1130611482_
                                                      _hd1130711486_
                                                      _tl1130811489_
                                                      ___splice4268542686_
                                                      _target1130911492_
                                                      _tl1131111495_))))
                                             (___match4276742768_
                                              _e1130611482_
                                              _hd1130711486_
                                              _tl1130811489_
                                              ___splice4268542686_
                                              _target1130911492_
                                              _tl1131111495_))
                                         (___match4276742768_
                                          _e1130611482_
                                          _hd1130711486_
                                          _tl1130811489_
                                          ___splice4268542686_
                                          _target1130911492_
                                          _tl1131111495_))
                                     (___match4276742768_
                                      _e1130611482_
                                      _hd1130711486_
                                      _tl1130811489_
                                      ___splice4268542686_
                                      _target1130911492_
                                      _tl1131111495_))))
                             (___match4276742768_
                              _e1130611482_
                              _hd1130711486_
                              _tl1130811489_
                              ___splice4268542686_
                              _target1130911492_
                              _tl1131111495_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1131211498_
                                                  _target1130911492_
                                                  '()))))
                                            (___match4273942740_
                                             (lambda (_e1129211617_
                                                      _hd1129311621_
                                                      _tl1129411624_
                                                      ___splice4268142682_
                                                      _target1129511627_
                                                      _tl1129711630_)
                                               (letrec ((_loop1129811633_
                                                         (lambda (_hd1129611637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1130211640_)
                   (if (gx#stx-pair? _hd1129611637_)
                       (let ((_e1129911643_ (gx#syntax-e _hd1129611637_)))
                         (let ((_lp-tl1130111650_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1129911643_)))
                               (_lp-hd1130011647_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1129911643_))))
                           (_loop1129811633_
                            _lp-tl1130111650_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1130011647_ _body1130211640_)))))
                       (let ((_body1130311653_ (reverse _body1130211640_)))
                         (___kont4267942680_ _body1130311653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1129811633_
                                                  _target1129511627_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx4267442675_)
                                           (let ((_e1128211687_
                                                  (gx#syntax-e
                                                   ___stx4267442675_)))
                                             (let ((_tl1128411694_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1128211687_)))
                                                   (_hd1128311691_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1128211687_))))
                                               (if (gx#identifier?
                                                    _hd1128311691_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g47589_|
                                                        _hd1128311691_)
                                                       (if (gx#stx-pair?
                                                            _tl1128411694_)
                                                           (let ((_e1128511697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1128411694_)))
                     (let ((_tl1128711704_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1128511697_)))
                           (_hd1128611701_
                            (let ()
                              (declare (not safe))
                              (##car _e1128511697_))))
                       (if (gx#identifier? _hd1128611701_)
                           (if (gx#free-identifier=?
                                |gerbil/core$<sugar>$<sugar:2>[1]#_g47590_|
                                _hd1128611701_)
                               (if (gx#stx-pair? _tl1128711704_)
                                   (let ((_e1128811707_
                                          (gx#syntax-e _tl1128711704_)))
                                     (let ((_tl1129011714_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1128811707_)))
                                           (_hd1128911711_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1128811707_))))
                                       (if (gx#stx-null? _tl1129011714_)
                                           (___kont4267742678_ _hd1128911711_)
                                           (if (gx#stx-pair/null?
                                                _tl1128411694_)
                                               (let ((___splice4268142682_
                                                      (gx#syntax-split-splice
                                                       _tl1128411694_
                                                       '0)))
                                                 (let ((_tl1129711630_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4268142682_
                                                           '1)))
                                                       (_target1129511627_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4268142682_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1129711630_)
                                                       (___match4273942740_
                                                        _e1128211687_
                                                        _hd1128311691_
                                                        _tl1128411694_
                                                        ___splice4268142682_
                                                        _target1129511627_
                                                        _tl1129711630_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1128311691_)
                                                           (let ((___splice4268542686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1128311691_ '0)))
                     (let ((_tl1131111495_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4268542686_ '1)))
                           (_target1130911492_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4268542686_ '0))))
                       (if (gx#stx-null? _tl1131111495_)
                           (___match4275342754_
                            _e1128211687_
                            _hd1128311691_
                            _tl1128411694_
                            ___splice4268542686_
                            _target1130911492_
                            _tl1131111495_)
                           (let () (declare (not safe)) (_g1127911352_)))))
                   (let () (declare (not safe)) (_g1127911352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1128311691_)
                                                   (let ((___splice4268542686_
                                                          (gx#syntax-split-splice
                                                           _hd1128311691_
                                                           '0)))
                                                     (let ((_tl1131111495_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4268542686_
                                                               '1)))
                                                           (_target1130911492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4268542686_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1131111495_)
                                                           (___match4275342754_
                                                            _e1128211687_
                                                            _hd1128311691_
                                                            _tl1128411694_
                                                            ___splice4268542686_
                                                            _target1130911492_
                                                            _tl1131111495_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1127911352_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127911352_)))))))
                                   (if (gx#stx-pair/null? _tl1128411694_)
                                       (let ((___splice4268142682_
                                              (gx#syntax-split-splice
                                               _tl1128411694_
                                               '0)))
                                         (let ((_tl1129711630_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4268142682_
                                                   '1)))
                                               (_target1129511627_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4268142682_
                                                   '0))))
                                           (if (gx#stx-null? _tl1129711630_)
                                               (___match4273942740_
                                                _e1128211687_
                                                _hd1128311691_
                                                _tl1128411694_
                                                ___splice4268142682_
                                                _target1129511627_
                                                _tl1129711630_)
                                               (if (gx#stx-pair/null?
                                                    _hd1128311691_)
                                                   (let ((___splice4268542686_
                                                          (gx#syntax-split-splice
                                                           _hd1128311691_
                                                           '0)))
                                                     (let ((_tl1131111495_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4268542686_
                                                               '1)))
                                                           (_target1130911492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4268542686_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1131111495_)
                                                           (___match4275342754_
                                                            _e1128211687_
                                                            _hd1128311691_
                                                            _tl1128411694_
                                                            ___splice4268542686_
                                                            _target1130911492_
                                                            _tl1131111495_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1127911352_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127911352_))))))
                                       (if (gx#stx-pair/null? _hd1128311691_)
                                           (let ((___splice4268542686_
                                                  (gx#syntax-split-splice
                                                   _hd1128311691_
                                                   '0)))
                                             (let ((_tl1131111495_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4268542686_
                                                       '1)))
                                                   (_target1130911492_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4268542686_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1131111495_)
                                                   (___match4275342754_
                                                    _e1128211687_
                                                    _hd1128311691_
                                                    _tl1128411694_
                                                    ___splice4268542686_
                                                    _target1130911492_
                                                    _tl1131111495_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127911352_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_)))))
                               (if (gx#stx-pair/null? _tl1128411694_)
                                   (let ((___splice4268142682_
                                          (gx#syntax-split-splice
                                           _tl1128411694_
                                           '0)))
                                     (let ((_tl1129711630_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4268142682_
                                               '1)))
                                           (_target1129511627_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4268142682_
                                               '0))))
                                       (if (gx#stx-null? _tl1129711630_)
                                           (___match4273942740_
                                            _e1128211687_
                                            _hd1128311691_
                                            _tl1128411694_
                                            ___splice4268142682_
                                            _target1129511627_
                                            _tl1129711630_)
                                           (if (gx#stx-pair/null?
                                                _hd1128311691_)
                                               (let ((___splice4268542686_
                                                      (gx#syntax-split-splice
                                                       _hd1128311691_
                                                       '0)))
                                                 (let ((_tl1131111495_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4268542686_
                                                           '1)))
                                                       (_target1130911492_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4268542686_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1131111495_)
                                                       (___match4275342754_
                                                        _e1128211687_
                                                        _hd1128311691_
                                                        _tl1128411694_
                                                        ___splice4268542686_
                                                        _target1130911492_
                                                        _tl1131111495_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1127911352_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1127911352_))))))
                                   (if (gx#stx-pair/null? _hd1128311691_)
                                       (let ((___splice4268542686_
                                              (gx#syntax-split-splice
                                               _hd1128311691_
                                               '0)))
                                         (let ((_tl1131111495_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4268542686_
                                                   '1)))
                                               (_target1130911492_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4268542686_
                                                   '0))))
                                           (if (gx#stx-null? _tl1131111495_)
                                               (___match4275342754_
                                                _e1128211687_
                                                _hd1128311691_
                                                _tl1128411694_
                                                ___splice4268542686_
                                                _target1130911492_
                                                _tl1131111495_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1127911352_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1127911352_)))))
                           (if (gx#stx-pair/null? _tl1128411694_)
                               (let ((___splice4268142682_
                                      (gx#syntax-split-splice
                                       _tl1128411694_
                                       '0)))
                                 (let ((_tl1129711630_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4268142682_
                                           '1)))
                                       (_target1129511627_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4268142682_
                                           '0))))
                                   (if (gx#stx-null? _tl1129711630_)
                                       (___match4273942740_
                                        _e1128211687_
                                        _hd1128311691_
                                        _tl1128411694_
                                        ___splice4268142682_
                                        _target1129511627_
                                        _tl1129711630_)
                                       (if (gx#stx-pair/null? _hd1128311691_)
                                           (let ((___splice4268542686_
                                                  (gx#syntax-split-splice
                                                   _hd1128311691_
                                                   '0)))
                                             (let ((_tl1131111495_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4268542686_
                                                       '1)))
                                                   (_target1130911492_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4268542686_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1131111495_)
                                                   (___match4275342754_
                                                    _e1128211687_
                                                    _hd1128311691_
                                                    _tl1128411694_
                                                    ___splice4268542686_
                                                    _target1130911492_
                                                    _tl1131111495_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127911352_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_))))))
                               (if (gx#stx-pair/null? _hd1128311691_)
                                   (let ((___splice4268542686_
                                          (gx#syntax-split-splice
                                           _hd1128311691_
                                           '0)))
                                     (let ((_tl1131111495_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4268542686_
                                               '1)))
                                           (_target1130911492_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4268542686_
                                               '0))))
                                       (if (gx#stx-null? _tl1131111495_)
                                           (___match4275342754_
                                            _e1128211687_
                                            _hd1128311691_
                                            _tl1128411694_
                                            ___splice4268542686_
                                            _target1130911492_
                                            _tl1131111495_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1127911352_)))))))
                   (if (gx#stx-pair/null? _tl1128411694_)
                       (let ((___splice4268142682_
                              (gx#syntax-split-splice _tl1128411694_ '0)))
                         (let ((_tl1129711630_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice4268142682_ '1)))
                               (_target1129511627_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice4268142682_ '0))))
                           (if (gx#stx-null? _tl1129711630_)
                               (___match4273942740_
                                _e1128211687_
                                _hd1128311691_
                                _tl1128411694_
                                ___splice4268142682_
                                _target1129511627_
                                _tl1129711630_)
                               (if (gx#stx-pair/null? _hd1128311691_)
                                   (let ((___splice4268542686_
                                          (gx#syntax-split-splice
                                           _hd1128311691_
                                           '0)))
                                     (let ((_tl1131111495_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4268542686_
                                               '1)))
                                           (_target1130911492_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4268542686_
                                               '0))))
                                       (if (gx#stx-null? _tl1131111495_)
                                           (___match4275342754_
                                            _e1128211687_
                                            _hd1128311691_
                                            _tl1128411694_
                                            ___splice4268542686_
                                            _target1130911492_
                                            _tl1131111495_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1127911352_))))))
                       (if (gx#stx-pair/null? _hd1128311691_)
                           (let ((___splice4268542686_
                                  (gx#syntax-split-splice _hd1128311691_ '0)))
                             (let ((_tl1131111495_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice4268542686_ '1)))
                                   (_target1130911492_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice4268542686_ '0))))
                               (if (gx#stx-null? _tl1131111495_)
                                   (___match4275342754_
                                    _e1128211687_
                                    _hd1128311691_
                                    _tl1128411694_
                                    ___splice4268542686_
                                    _target1130911492_
                                    _tl1131111495_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1127911352_)))))
                           (let () (declare (not safe)) (_g1127911352_)))))
               (if (gx#stx-pair/null? _hd1128311691_)
                   (let ((___splice4268542686_
                          (gx#syntax-split-splice _hd1128311691_ '0)))
                     (let ((_tl1131111495_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4268542686_ '1)))
                           (_target1130911492_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4268542686_ '0))))
                       (if (gx#stx-null? _tl1131111495_)
                           (___match4275342754_
                            _e1128211687_
                            _hd1128311691_
                            _tl1128411694_
                            ___splice4268542686_
                            _target1130911492_
                            _tl1131111495_)
                           (let () (declare (not safe)) (_g1127911352_)))))
                   (let () (declare (not safe)) (_g1127911352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1128311691_)
                                                       (let ((___splice4268542686_
                                                              (gx#syntax-split-splice
                                                               _hd1128311691_
                                                               '0)))
                                                         (let ((_tl1131111495_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice4268542686_ '1)))
                       (_target1130911492_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice4268542686_ '0))))
                   (if (gx#stx-null? _tl1131111495_)
                       (___match4275342754_
                        _e1128211687_
                        _hd1128311691_
                        _tl1128411694_
                        ___splice4268542686_
                        _target1130911492_
                        _tl1131111495_)
                       (let () (declare (not safe)) (_g1127911352_)))))
               (let () (declare (not safe)) (_g1127911352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_))))))))
                              (___kont4277542776_
                               (lambda ()
                                 (_check-duplicate-datums8740_ _datums11210_)
                                 (values (reverse _datums11210_)
                                         (reverse _dispatch11211_)
                                         (let ((_$e11238_ _default11212_))
                                           (if _$e11238_
                                               _$e11238_
                                               '#!void))))))
                          (let ((_g1121411242_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx4277042771_)
                                       (___kont4277542776_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1121511227_))))))
                            (if (gx#stx-pair? ___stx4277042771_)
                                (let ((_e1121911249_
                                       (gx#syntax-e ___stx4277042771_)))
                                  (let ((_tl1122111256_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1121911249_)))
                                        (_hd1122011253_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1121911249_))))
                                    (___kont4277342774_
                                     _tl1122111256_
                                     _hd1122011253_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1121411242_)))))))))
                 (_check-duplicate-datums8740_
                  (lambda (_datums11189_)
                    (let ((_ht11192_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11195_)
                         (for-each
                          (lambda (_datum11198_)
                            (if (hash-get _ht11192_ _datum11198_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8735_
                                 _datum11198_)
                                (hash-put! _ht11192_ _datum11198_ '#t)))
                          _lst11195_))
                       _datums11189_))))
                 (_count-datums8741_
                  (lambda (_datums11182_)
                    (let ((__tmp47591
                           (lambda (_lst11185_ _r11187_)
                             (+ (length _lst11185_) _r11187_))))
                      (declare (not safe))
                      (foldl1 __tmp47591 '0 _datums11182_))))
                 (_symbolic-datums?8742_
                  (lambda (_datums11176_)
                    (let ((__tmp47592
                           (lambda (_lst11179_)
                             (let ()
                               (declare (not safe))
                               (andmap1 symbol? _lst11179_)))))
                      (declare (not safe))
                      (andmap1 __tmp47592 _datums11176_))))
                 (_char-datums?8743_
                  (lambda (_datums11170_)
                    (let ((__tmp47593
                           (lambda (_lst11173_)
                             (let ()
                               (declare (not safe))
                               (andmap1 char? _lst11173_)))))
                      (declare (not safe))
                      (andmap1 __tmp47593 _datums11170_))))
                 (_fixnum-datums?8744_
                  (lambda (_datums11164_)
                    (let ((__tmp47594
                           (lambda (_lst11167_)
                             (let ()
                               (declare (not safe))
                               (andmap1 fixnum? _lst11167_)))))
                      (declare (not safe))
                      (andmap1 __tmp47594 _datums11164_))))
                 (_eq-datums?8745_
                  (lambda (_datums11147_)
                    (let ((__tmp47595
                           (lambda (_lst11150_)
                             (let ((__tmp47596
                                    (lambda (_x11153_)
                                      (let ((_$e11156_
                                             (let ()
                                               (declare (not safe))
                                               (symbol? _x11153_))))
                                        (if _$e11156_
                                            _$e11156_
                                            (let ((_$e11160_
                                                   (keyword? _x11153_)))
                                              (if _$e11160_
                                                  _$e11160_
                                                  (let ()
                                                    (declare (not safe))
                                                    (immediate?
                                                     _x11153_)))))))))
                               (declare (not safe))
                               (andmap1 __tmp47596 _lst11150_)))))
                      (declare (not safe))
                      (andmap1 __tmp47595 _datums11147_))))
                 (_generate-simple-case8746_
                  (lambda (_e10911_
                           _datums10913_
                           _dispatch10914_
                           _default10915_)
                    (let* ((_g1091710925_
                            (lambda (_g1091810921_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1091810921_)))
                           (_g1091611143_
                            (lambda (_g1091810929_)
                              ((lambda (_L10932_)
                                 (let ()
                                   (let _recur10944_ ((_datums10947_
                                                       _datums10913_)
                                                      (_dispatch10949_
                                                       _dispatch10914_))
                                     (let* ((___stx4278842789_ _datums10947_)
                                            (_g1095210973_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx4278842789_))))
                                       (let ((___kont4279142792_
                                              (lambda (_L11031_ _L11033_)
                                                (let* ((_g1105311065_
                                                        (lambda (_g1105411061_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1105411061_)))
                                                       (_g1105211135_
                                                        (lambda (_g1105411069_)
                                                          (if (gx#stx-pair?
                                                               _g1105411069_)
                                                              (let ((_e1105711072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1105411069_)))
                        (let ((_hd1105811076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1105711072_)))
                              (_tl1105911079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1105711072_))))
                          ((lambda (_L11082_ _L11084_)
                             (let* ((_g1109611104_
                                     (lambda (_g1109711100_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1109711100_)))
                                    (_g1109511131_
                                     (lambda (_g1109711108_)
                                       ((lambda (_L11111_)
                                          (let ()
                                            (let ((__tmp47608
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp47597
                                                   (let ((__tmp47600
                                                          (let ((__tmp47607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'or))
                        (__tmp47601
                         (let ((__tmp47602
                                (lambda (_g1112211125_ _g1112311128_)
                                  (let ((__tmp47603
                                         (let ((__tmp47606
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-test))
                                               (__tmp47604
                                                (let ((__tmp47605
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L10932_ '()))))
                                                  (declare (not safe))
                                                  (cons _g1112211125_
                                                        __tmp47605))))
                                           (declare (not safe))
                                           (cons __tmp47606 __tmp47604))))
                                    (declare (not safe))
                                    (cons __tmp47603 _g1112311128_)))))
                           (declare (not safe))
                           (foldr1 __tmp47602 '() _L11033_))))
                    (declare (not safe))
                    (cons __tmp47607 __tmp47601)))
                 (__tmp47598
                  (let ((__tmp47599
                         (let () (declare (not safe)) (cons _L11111_ '()))))
                    (declare (not safe))
                    (cons _L11084_ __tmp47599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47600
                                                           __tmp47598))))
                                              (declare (not safe))
                                              (cons __tmp47608 __tmp47597))))
                                        _g1109711108_))))
                               (_g1109511131_
                                (_recur10944_ _L11031_ _L11082_))))
                           _tl1105911079_
                           _hd1105811076_)))
                      (_g1105311065_ _g1105411069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1105211135_
                                                   _dispatch10949_))))
                                             (___kont4279542796_
                                              (lambda () _default10915_)))
                                         (let ((___match4281142812_
                                                (lambda (_e1095610991_
                                                         _hd1095710995_
                                                         _tl1095810998_
                                                         ___splice4279342794_
                                                         _target1095911001_
                                                         _tl1096111004_)
                                                  (letrec ((_loop1096211007_
                                                            (lambda (_hd1096011011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1096611014_)
                      (if (gx#stx-pair? _hd1096011011_)
                          (let ((_e1096311017_ (gx#syntax-e _hd1096011011_)))
                            (let ((_lp-tl1096511024_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1096311017_)))
                                  (_lp-hd1096411021_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1096311017_))))
                              (_loop1096211007_
                               _lp-tl1096511024_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1096411021_ _datum1096611014_)))))
                          (let ((_datum1096711027_
                                 (reverse _datum1096611014_)))
                            (___kont4279142792_
                             _tl1095810998_
                             _datum1096711027_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1096211007_
                                                     _target1095911001_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx4278842789_)
                                               (let ((_e1095610991_
                                                      (gx#syntax-e
                                                       ___stx4278842789_)))
                                                 (let ((_tl1095810998_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1095610991_)))
                                                       (_hd1095710995_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1095610991_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1095710995_)
                                                       (let ((___splice4279342794_
                                                              (gx#syntax-split-splice
                                                               _hd1095710995_
                                                               '0)))
                                                         (let ((_tl1096111004_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice4279342794_ '1)))
                       (_target1095911001_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice4279342794_ '0))))
                   (if (gx#stx-null? _tl1096111004_)
                       (___match4281142812_
                        _e1095610991_
                        _hd1095710995_
                        _tl1095810998_
                        ___splice4279342794_
                        _target1095911001_
                        _tl1096111004_)
                       (___kont4279542796_))))
               (___kont4279542796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4279542796_))))))))
                               _g1091810929_))))
                      (_g1091611143_ _e10911_))))
                 (_datum-dispatch-index8747_
                  (lambda (_datums10783_)
                    (let _lp10786_ ((_rest10789_ _datums10783_)
                                    (_ix10791_ '0)
                                    (_r10792_ '()))
                      (let* ((___stx4281442815_ _rest10789_)
                             (_g1079510816_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4281442815_))))
                        (let ((___kont4281742818_
                               (lambda (_L10874_ _L10876_)
                                 (_lp10786_
                                  _L10874_
                                  (let ()
                                    (declare (not safe))
                                    (fx+ _ix10791_ '1))
                                  (let ((__tmp47611
                                         (lambda (_x10895_ _r10897_)
                                           (let ((__tmp47612
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _x10895_
                                                          _ix10791_))))
                                             (declare (not safe))
                                             (cons __tmp47612 _r10897_))))
                                        (__tmp47609
                                         (let ((__tmp47610
                                                (lambda (_g1089810901_
                                                         _g1089910904_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1089810901_
                                                          _g1089910904_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp47610 '() _L10876_))))
                                    (declare (not safe))
                                    (foldl1 __tmp47611 _r10792_ __tmp47609)))))
                              (___kont4282142822_ (lambda () _r10792_)))
                          (let ((___match4283742838_
                                 (lambda (_e1079910834_
                                          _hd1080010838_
                                          _tl1080110841_
                                          ___splice4281942820_
                                          _target1080210844_
                                          _tl1080410847_)
                                   (letrec ((_loop1080510850_
                                             (lambda (_hd1080310854_
                                                      _datum1080910857_)
                                               (if (gx#stx-pair?
                                                    _hd1080310854_)
                                                   (let ((_e1080610860_
                                                          (gx#syntax-e
                                                           _hd1080310854_)))
                                                     (let ((_lp-tl1080810867_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1080610860_)))
                                                           (_lp-hd1080710864_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1080610860_))))
                                                       (_loop1080510850_
                                                        _lp-tl1080810867_
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1080710864_
                                                                _datum1080910857_)))))
                                                   (let ((_datum1081010870_
                                                          (reverse _datum1080910857_)))
                                                     (___kont4281742818_
                                                      _tl1080110841_
                                                      _datum1081010870_))))))
                                     (_loop1080510850_
                                      _target1080210844_
                                      '())))))
                            (if (gx#stx-pair? ___stx4281442815_)
                                (let ((_e1079910834_
                                       (gx#syntax-e ___stx4281442815_)))
                                  (let ((_tl1080110841_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1079910834_)))
                                        (_hd1080010838_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1079910834_))))
                                    (if (gx#stx-pair/null? _hd1080010838_)
                                        (let ((___splice4281942820_
                                               (gx#syntax-split-splice
                                                _hd1080010838_
                                                '0)))
                                          (let ((_tl1080410847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4281942820_
                                                    '1)))
                                                (_target1080210844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4281942820_
                                                    '0))))
                                            (if (gx#stx-null? _tl1080410847_)
                                                (___match4283742838_
                                                 _e1079910834_
                                                 _hd1080010838_
                                                 _tl1080110841_
                                                 ___splice4281942820_
                                                 _target1080210844_
                                                 _tl1080410847_)
                                                (___kont4282142822_))))
                                        (___kont4282142822_))))
                                (___kont4282142822_))))))))
                 (_duplicate-indexes?8748_
                  (lambda (_xs10764_)
                    (let ((_ht10767_ (make-hash-table-eq)))
                      (let _lp10770_ ((_rest10773_ _xs10764_))
                        (if (let () (declare (not safe)) (pair? _rest10773_))
                            (let* ((_ix10776_ (car _rest10773_))
                                   (_$e10779_ (hash-get _ht10767_ _ix10776_)))
                              (if _$e10779_
                                  _$e10779_
                                  (begin
                                    (hash-put! _ht10767_ _ix10776_ '#t)
                                    (_lp10770_ (cdr _rest10773_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8749_
                  (lambda (_indexes10733_ _hash-e10735_)
                    (let _lp10737_ ((_len10740_
                                     (* '2 (length _indexes10733_))))
                      (let* ((_hs10746_
                              (map (lambda (_x10743_)
                                     (_hash-e10735_ (car _x10743_)))
                                   _indexes10733_))
                             (_xs10752_
                              (map (lambda (_h10749_)
                                     (fxmodulo _h10749_ _len10740_))
                                   _hs10746_)))
                        (if (_duplicate-indexes?8748_ _xs10752_)
                            (if (< _len10740_ '131072)
                                (_lp10737_ (quotient (fx* _len10740_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8735_
                                 _indexes10733_))
                            (let ((_tab10757_ (make-vector _len10740_ '#f)))
                              (for-each
                               (lambda (_entry10760_ _x10762_)
                                 (vector-set!
                                  _tab10757_
                                  _x10762_
                                  _entry10760_))
                               _indexes10733_
                               _xs10752_)
                              _tab10757_))))))
                 (_generate-symbolic-dispatch8750_
                  (lambda (_e10336_
                           _datums10338_
                           _dispatch10339_
                           _default10340_)
                    (let* ((_indexes10342_
                            (_datum-dispatch-index8747_ _datums10338_))
                           (_tab10345_
                            (_generate-hash-dispatch-table8749_
                             _indexes10342_
                             symbol-hash)))
                      (if (= (length _dispatch10339_) '1)
                          (let* ((_tab10353_
                                  (vector-map
                                   (lambda (_x10350_)
                                     (if _x10350_ (car _x10350_) '#f))
                                   _tab10345_))
                                 (_g1035610394_
                                  (lambda (_g1035710390_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1035710390_)))
                                 (_g1035510525_
                                  (lambda (_g1035710398_)
                                    (if (gx#stx-pair? _g1035710398_)
                                        (let ((_e1036510401_
                                               (gx#syntax-e _g1035710398_)))
                                          (let ((_hd1036610405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1036510401_)))
                                                (_tl1036710408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1036510401_))))
                                            (if (gx#stx-pair? _tl1036710408_)
                                                (let ((_e1036810411_
                                                       (gx#syntax-e
                                                        _tl1036710408_)))
                                                  (let ((_hd1036910415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1036810411_)))
                                                        (_tl1037010418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1036810411_))))
                                                    (if (gx#stx-pair?
                                                         _tl1037010418_)
                                                        (let ((_e1037110421_
                                                               (gx#syntax-e
                                                                _tl1037010418_)))
                                                          (let ((_hd1037210425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1037110421_)))
                        (_tl1037310428_
                         (let () (declare (not safe)) (##cdr _e1037110421_))))
                    (if (gx#stx-pair? _tl1037310428_)
                        (let ((_e1037410431_ (gx#syntax-e _tl1037310428_)))
                          (let ((_hd1037510435_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1037410431_)))
                                (_tl1037610438_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1037410431_))))
                            (if (gx#stx-pair? _hd1037510435_)
                                (let ((_e1037710441_
                                       (gx#syntax-e _hd1037510435_)))
                                  (let ((_hd1037810445_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1037710441_)))
                                        (_tl1037910448_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1037710441_))))
                                    (if (gx#stx-null? _tl1037910448_)
                                        (if (gx#stx-pair? _tl1037610438_)
                                            (let ((_e1038010451_
                                                   (gx#syntax-e
                                                    _tl1037610438_)))
                                              (let ((_hd1038110455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1038010451_)))
                                                    (_tl1038210458_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1038010451_))))
                                                (if (gx#stx-pair?
                                                     _tl1038210458_)
                                                    (let ((_e1038310461_
                                                           (gx#syntax-e
                                                            _tl1038210458_)))
                                                      (let ((_hd1038410465_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1038310461_)))
                    (_tl1038510468_
                     (let () (declare (not safe)) (##cdr _e1038310461_))))
                (if (gx#stx-pair? _tl1038510468_)
                    (let ((_e1038610471_ (gx#syntax-e _tl1038510468_)))
                      (let ((_hd1038710475_
                             (let ()
                               (declare (not safe))
                               (##car _e1038610471_)))
                            (_tl1038810478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1038610471_))))
                        (if (gx#stx-null? _tl1038810478_)
                            ((lambda (_L10481_
                                      _L10483_
                                      _L10484_
                                      _L10485_
                                      _L10486_
                                      _L10487_
                                      _L10488_)
                               (let ()
                                 (let ((__tmp47677 (gx#datum->syntax '#f 'let))
                                       (__tmp47613
                                        (let ((__tmp47664
                                               (let ((__tmp47671
                                                      (let ((__tmp47672
                                                             (let ((__tmp47673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47676 (gx#datum->syntax '#f 'lambda))
                                  (__tmp47674
                                   (let ((__tmp47675
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10484_ '()))))
                                     (declare (not safe))
                                     (cons '() __tmp47675))))
                              (declare (not safe))
                              (cons __tmp47676 __tmp47674))))
                       (declare (not safe))
                       (cons __tmp47673 '()))))
                (declare (not safe))
                (cons _L10487_ __tmp47672)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp47665
                                                      (let ((__tmp47666
                                                             (let ((__tmp47667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47668
                                   (let ((__tmp47670
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp47669
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10483_ '()))))
                                     (declare (not safe))
                                     (cons __tmp47670 __tmp47669))))
                              (declare (not safe))
                              (cons __tmp47668 '()))))
                       (declare (not safe))
                       (cons _L10486_ __tmp47667))))
                (declare (not safe))
                (cons __tmp47666 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47671 __tmp47665)))
                                              (__tmp47614
                                               (let ((__tmp47615
                                                      (let ((__tmp47663
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp47616
                                                             (let ((__tmp47660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47662 (gx#datum->syntax '#f 'symbol?))
                                  (__tmp47661
                                   (let ()
                                     (declare (not safe))
                                     (cons _L10488_ '()))))
                              (declare (not safe))
                              (cons __tmp47662 __tmp47661)))
                           (__tmp47617
                            (let ((__tmp47620
                                   (let ((__tmp47659
                                          (gx#datum->syntax '#f 'let*))
                                         (__tmp47621
                                          (let ((__tmp47634
                                                 (let ((__tmp47653
                                                        (let ((__tmp47658
                                                               (gx#datum->syntax
                                                                '#f
                                                                'h))
                                                              (__tmp47654
                                                               (let ((__tmp47655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47657
                                     (gx#datum->syntax '#f '##symbol-hash))
                                    (__tmp47656
                                     (let ()
                                       (declare (not safe))
                                       (cons _L10488_ '()))))
                                (declare (not safe))
                                (cons __tmp47657 __tmp47656))))
                         (declare (not safe))
                         (cons __tmp47655 '()))))
                  (declare (not safe))
                  (cons __tmp47658 __tmp47654)))
               (__tmp47635
                (let ((__tmp47645
                       (let ((__tmp47652 (gx#datum->syntax '#f 'ix))
                             (__tmp47646
                              (let ((__tmp47647
                                     (let ((__tmp47651
                                            (gx#datum->syntax '#f '##fxmodulo))
                                           (__tmp47648
                                            (let ((__tmp47650
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp47649
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L10481_ '()))))
                                              (declare (not safe))
                                              (cons __tmp47650 __tmp47649))))
                                       (declare (not safe))
                                       (cons __tmp47651 __tmp47648))))
                                (declare (not safe))
                                (cons __tmp47647 '()))))
                         (declare (not safe))
                         (cons __tmp47652 __tmp47646)))
                      (__tmp47636
                       (let ((__tmp47637
                              (let ((__tmp47644 (gx#datum->syntax '#f 'q))
                                    (__tmp47638
                                     (let ((__tmp47639
                                            (let ((__tmp47643
                                                   (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref))
                                                  (__tmp47640
                                                   (let ((__tmp47641
                                                          (let ((__tmp47642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'ix)))
                    (declare (not safe))
                    (cons __tmp47642 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L10486_
                                                           __tmp47641))))
                                              (declare (not safe))
                                              (cons __tmp47643 __tmp47640))))
                                       (declare (not safe))
                                       (cons __tmp47639 '()))))
                                (declare (not safe))
                                (cons __tmp47644 __tmp47638))))
                         (declare (not safe))
                         (cons __tmp47637 '()))))
                  (declare (not safe))
                  (cons __tmp47645 __tmp47636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47653
                                                         __tmp47635)))
                                                (__tmp47622
                                                 (let ((__tmp47623
                                                        (let ((__tmp47633
                                                               (gx#datum->syntax
                                                                '#f
                                                                'if))
                                                              (__tmp47624
                                                               (let ((__tmp47628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47632 (gx#datum->syntax '#f 'eq?))
                                    (__tmp47629
                                     (let ((__tmp47631
                                            (gx#datum->syntax '#f 'q))
                                           (__tmp47630
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10488_ '()))))
                                       (declare (not safe))
                                       (cons __tmp47631 __tmp47630))))
                                (declare (not safe))
                                (cons __tmp47632 __tmp47629)))
                             (__tmp47625
                              (let ((__tmp47626
                                     (let ((__tmp47627
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10487_ '()))))
                                       (declare (not safe))
                                       (cons __tmp47627 '()))))
                                (declare (not safe))
                                (cons _L10485_ __tmp47626))))
                         (declare (not safe))
                         (cons __tmp47628 __tmp47625))))
                  (declare (not safe))
                  (cons __tmp47633 __tmp47624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47623 '()))))
                                            (declare (not safe))
                                            (cons __tmp47634 __tmp47622))))
                                     (declare (not safe))
                                     (cons __tmp47659 __tmp47621)))
                                  (__tmp47618
                                   (let ((__tmp47619
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10487_ '()))))
                                     (declare (not safe))
                                     (cons __tmp47619 '()))))
                              (declare (not safe))
                              (cons __tmp47620 __tmp47618))))
                       (declare (not safe))
                       (cons __tmp47660 __tmp47617))))
                (declare (not safe))
                (cons __tmp47663 __tmp47616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47615 '()))))
                                          (declare (not safe))
                                          (cons __tmp47664 __tmp47614))))
                                   (declare (not safe))
                                   (cons __tmp47677 __tmp47613))))
                             _hd1038710475_
                             _hd1038410465_
                             _hd1038110455_
                             _hd1037810445_
                             _hd1037210425_
                             _hd1036910415_
                             _hd1036610405_)
                            (_g1035610394_ _g1035710398_))))
                    (_g1035610394_ _g1035710398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1035610394_
                                                     _g1035710398_))))
                                            (_g1035610394_ _g1035710398_))
                                        (_g1035610394_ _g1035710398_))))
                                (_g1035610394_ _g1035710398_))))
                        (_g1035610394_ _g1035710398_))))
                (_g1035610394_ _g1035710398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1035610394_
                                                 _g1035710398_))))
                                        (_g1035610394_ _g1035710398_)))))
                            (_g1035510525_
                             (list _e10336_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10339_
                                   _default10340_
                                   _tab10353_
                                   (vector-length _tab10353_))))
                          (let* ((_g1052910573_
                                  (lambda (_g1053010569_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1053010569_)))
                                 (_g1052810729_
                                  (lambda (_g1053010577_)
                                    (if (gx#stx-pair? _g1053010577_)
                                        (let ((_e1053810580_
                                               (gx#syntax-e _g1053010577_)))
                                          (let ((_hd1053910584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1053810580_)))
                                                (_tl1054010587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1053810580_))))
                                            (if (gx#stx-pair? _tl1054010587_)
                                                (let ((_e1054110590_
                                                       (gx#syntax-e
                                                        _tl1054010587_)))
                                                  (let ((_hd1054210594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1054110590_)))
                                                        (_tl1054310597_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1054110590_))))
                                                    (if (gx#stx-pair?
                                                         _tl1054310597_)
                                                        (let ((_e1054410600_
                                                               (gx#syntax-e
                                                                _tl1054310597_)))
                                                          (let ((_hd1054510604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1054410600_)))
                        (_tl1054610607_
                         (let () (declare (not safe)) (##cdr _e1054410600_))))
                    (if (gx#stx-pair? _tl1054610607_)
                        (let ((_e1054710610_ (gx#syntax-e _tl1054610607_)))
                          (let ((_hd1054810614_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1054710610_)))
                                (_tl1054910617_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1054710610_))))
                            (if (gx#stx-pair/null? _hd1054810614_)
                                (let ((_g47678_
                                       (gx#syntax-split-splice
                                        _hd1054810614_
                                        '0)))
                                  (begin
                                    (let ((_g47679_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g47678_)
                                                 (##vector-length _g47678_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g47679_ 2)))
                                          (error "Context expects 2 values"
                                                 _g47679_)))
                                    (let ((_target1055010620_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47678_ 0)))
                                          (_tl1055210623_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47678_ 1))))
                                      (if (gx#stx-null? _tl1055210623_)
                                          (letrec ((_loop1055310626_
                                                    (lambda (_hd1055110630_
                                                             _dispatch1055710633_)
                                                      (if (gx#stx-pair?
                                                           _hd1055110630_)
                                                          (let ((_e1055410636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1055110630_)))
                    (let ((_lp-hd1055510640_
                           (let () (declare (not safe)) (##car _e1055410636_)))
                          (_lp-tl1055610643_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1055410636_))))
                      (_loop1055310626_
                       _lp-tl1055610643_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1055510640_ _dispatch1055710633_)))))
                  (let ((_dispatch1055810646_ (reverse _dispatch1055710633_)))
                    (if (gx#stx-pair? _tl1054910617_)
                        (let ((_e1055910650_ (gx#syntax-e _tl1054910617_)))
                          (let ((_hd1056010654_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1055910650_)))
                                (_tl1056110657_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1055910650_))))
                            (if (gx#stx-pair? _tl1056110657_)
                                (let ((_e1056210660_
                                       (gx#syntax-e _tl1056110657_)))
                                  (let ((_hd1056310664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1056210660_)))
                                        (_tl1056410667_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1056210660_))))
                                    (if (gx#stx-pair? _tl1056410667_)
                                        (let ((_e1056510670_
                                               (gx#syntax-e _tl1056410667_)))
                                          (let ((_hd1056610674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1056510670_)))
                                                (_tl1056710677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1056510670_))))
                                            (if (gx#stx-null? _tl1056710677_)
                                                ((lambda (_L10680_
                                                          _L10682_
                                                          _L10683_
                                                          _L10684_
                                                          _L10685_
                                                          _L10686_
                                                          _L10687_)
                                                   (let ()
                                                     (let ((__tmp47771
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp47680
                                                            (let ((__tmp47758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp47765
                                  (let ((__tmp47766
                                         (let ((__tmp47767
                                                (let ((__tmp47770
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp47768
                                                       (let ((__tmp47769
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L10683_ '()))))
                 (declare (not safe))
                 (cons '() __tmp47769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47770
                                                        __tmp47768))))
                                           (declare (not safe))
                                           (cons __tmp47767 '()))))
                                    (declare (not safe))
                                    (cons _L10686_ __tmp47766)))
                                 (__tmp47759
                                  (let ((__tmp47760
                                         (let ((__tmp47761
                                                (let ((__tmp47762
                                                       (let ((__tmp47764
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp47763
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L10682_ '()))))
                 (declare (not safe))
                 (cons __tmp47764 __tmp47763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47762 '()))))
                                           (declare (not safe))
                                           (cons _L10685_ __tmp47761))))
                                    (declare (not safe))
                                    (cons __tmp47760 '()))))
                             (declare (not safe))
                             (cons __tmp47765 __tmp47759)))
                          (__tmp47681
                           (let ((__tmp47682
                                  (let ((__tmp47757 (gx#datum->syntax '#f 'if))
                                        (__tmp47683
                                         (let ((__tmp47754
                                                (let ((__tmp47756
                                                       (gx#datum->syntax
                                                        '#f
                                                        'symbol?))
                                                      (__tmp47755
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L10687_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp47756
                                                        __tmp47755)))
                                               (__tmp47684
                                                (let ((__tmp47687
                                                       (let ((__tmp47753
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp47688
                                                              (let ((__tmp47728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47747
                                    (let ((__tmp47752
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp47748
                                           (let ((__tmp47749
                                                  (let ((__tmp47751
                                                         (gx#datum->syntax
                                                          '#f
                                                          '##symbol-hash))
                                                        (__tmp47750
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L10687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47751
                                                          __tmp47750))))
                                             (declare (not safe))
                                             (cons __tmp47749 '()))))
                                      (declare (not safe))
                                      (cons __tmp47752 __tmp47748)))
                                   (__tmp47729
                                    (let ((__tmp47739
                                           (let ((__tmp47746
                                                  (gx#datum->syntax '#f 'ix))
                                                 (__tmp47740
                                                  (let ((__tmp47741
                                                         (let ((__tmp47745
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fxmodulo))
                       (__tmp47742
                        (let ((__tmp47744 (gx#datum->syntax '#f 'h))
                              (__tmp47743
                               (let ()
                                 (declare (not safe))
                                 (cons _L10680_ '()))))
                          (declare (not safe))
                          (cons __tmp47744 __tmp47743))))
                   (declare (not safe))
                   (cons __tmp47745 __tmp47742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47741 '()))))
                                             (declare (not safe))
                                             (cons __tmp47746 __tmp47740)))
                                          (__tmp47730
                                           (let ((__tmp47731
                                                  (let ((__tmp47738
                                                         (gx#datum->syntax
                                                          '#f
                                                          'q))
                                                        (__tmp47732
                                                         (let ((__tmp47733
                                                                (let ((__tmp47737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##vector-ref))
                              (__tmp47734
                               (let ((__tmp47735
                                      (let ((__tmp47736
                                             (gx#datum->syntax '#f 'ix)))
                                        (declare (not safe))
                                        (cons __tmp47736 '()))))
                                 (declare (not safe))
                                 (cons _L10685_ __tmp47735))))
                          (declare (not safe))
                          (cons __tmp47737 __tmp47734))))
                   (declare (not safe))
                   (cons __tmp47733 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47738
                                                          __tmp47732))))
                                             (declare (not safe))
                                             (cons __tmp47731 '()))))
                                      (declare (not safe))
                                      (cons __tmp47739 __tmp47730))))
                               (declare (not safe))
                               (cons __tmp47747 __tmp47729)))
                            (__tmp47689
                             (let ((__tmp47690
                                    (let ((__tmp47727
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp47691
                                           (let ((__tmp47726
                                                  (gx#datum->syntax '#f 'q))
                                                 (__tmp47692
                                                  (let ((__tmp47695
                                                         (let ((__tmp47725
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if))
                       (__tmp47696
                        (let ((__tmp47717
                               (let ((__tmp47724 (gx#datum->syntax '#f 'eq?))
                                     (__tmp47718
                                      (let ((__tmp47720
                                             (let ((__tmp47723
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##car))
                                                   (__tmp47721
                                                    (let ((__tmp47722
                                                           (gx#datum->syntax
                                                            '#f
                                                            'q)))
                                                      (declare (not safe))
                                                      (cons __tmp47722 '()))))
                                               (declare (not safe))
                                               (cons __tmp47723 __tmp47721)))
                                            (__tmp47719
                                             (let ()
                                               (declare (not safe))
                                               (cons _L10687_ '()))))
                                        (declare (not safe))
                                        (cons __tmp47720 __tmp47719))))
                                 (declare (not safe))
                                 (cons __tmp47724 __tmp47718)))
                              (__tmp47697
                               (let ((__tmp47700
                                      (let ((__tmp47716
                                             (gx#datum->syntax '#f 'let))
                                            (__tmp47701
                                             (let ((__tmp47709
                                                    (let ((__tmp47715
                                                           (gx#datum->syntax
                                                            '#f
                                                            'x))
                                                          (__tmp47710
                                                           (let ((__tmp47711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp47714 (gx#datum->syntax '#f '##cdr))
                                (__tmp47712
                                 (let ((__tmp47713 (gx#datum->syntax '#f 'q)))
                                   (declare (not safe))
                                   (cons __tmp47713 '()))))
                            (declare (not safe))
                            (cons __tmp47714 __tmp47712))))
                     (declare (not safe))
                     (cons __tmp47711 '()))))
              (declare (not safe))
              (cons __tmp47715 __tmp47710)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp47702
                                                    (let ((__tmp47703
                                                           (let ((__tmp47708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '~case-dispatch))
                         (__tmp47704
                          (let ((__tmp47707 (gx#datum->syntax '#f 'x))
                                (__tmp47705
                                 (let ((__tmp47706
                                        (lambda (_g1072010723_ _g1072110726_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1072010723_
                                                  _g1072110726_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47706 '() _L10684_))))
                            (declare (not safe))
                            (cons __tmp47707 __tmp47705))))
                     (declare (not safe))
                     (cons __tmp47708 __tmp47704))))
              (declare (not safe))
              (cons __tmp47703 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47709 __tmp47702))))
                                        (declare (not safe))
                                        (cons __tmp47716 __tmp47701)))
                                     (__tmp47698
                                      (let ((__tmp47699
                                             (let ()
                                               (declare (not safe))
                                               (cons _L10686_ '()))))
                                        (declare (not safe))
                                        (cons __tmp47699 '()))))
                                 (declare (not safe))
                                 (cons __tmp47700 __tmp47698))))
                          (declare (not safe))
                          (cons __tmp47717 __tmp47697))))
                   (declare (not safe))
                   (cons __tmp47725 __tmp47696)))
                (__tmp47693
                 (let ((__tmp47694
                        (let () (declare (not safe)) (cons _L10686_ '()))))
                   (declare (not safe))
                   (cons __tmp47694 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47695
                                                          __tmp47693))))
                                             (declare (not safe))
                                             (cons __tmp47726 __tmp47692))))
                                      (declare (not safe))
                                      (cons __tmp47727 __tmp47691))))
                               (declare (not safe))
                               (cons __tmp47690 '()))))
                        (declare (not safe))
                        (cons __tmp47728 __tmp47689))))
                 (declare (not safe))
                 (cons __tmp47753 __tmp47688)))
              (__tmp47685
               (let ((__tmp47686
                      (let () (declare (not safe)) (cons _L10686_ '()))))
                 (declare (not safe))
                 (cons __tmp47686 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47687
                                                        __tmp47685))))
                                           (declare (not safe))
                                           (cons __tmp47754 __tmp47684))))
                                    (declare (not safe))
                                    (cons __tmp47757 __tmp47683))))
                             (declare (not safe))
                             (cons __tmp47682 '()))))
                      (declare (not safe))
                      (cons __tmp47758 __tmp47681))))
               (declare (not safe))
               (cons __tmp47771 __tmp47680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1056610674_
                                                 _hd1056310664_
                                                 _hd1056010654_
                                                 _dispatch1055810646_
                                                 _hd1054510604_
                                                 _hd1054210594_
                                                 _hd1053910584_)
                                                (_g1052910573_
                                                 _g1053010577_))))
                                        (_g1052910573_ _g1053010577_))))
                                (_g1052910573_ _g1053010577_))))
                        (_g1052910573_ _g1053010577_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1055310626_
                                             _target1055010620_
                                             '()))
                                          (_g1052910573_ _g1053010577_)))))
                                (_g1052910573_ _g1053010577_))))
                        (_g1052910573_ _g1053010577_))))
                (_g1052910573_ _g1053010577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1052910573_
                                                 _g1053010577_))))
                                        (_g1052910573_ _g1053010577_)))))
                            (_g1052810729_
                             (list _e10336_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10339_
                                   _default10340_
                                   _tab10345_
                                   (vector-length _tab10345_))))))))
                 (_max-char8751_
                  (lambda (_datums10325_)
                    (let ((__tmp47772
                           (lambda (_lst10328_ _r10330_)
                             (let ((__tmp47773
                                    (lambda (_char10332_ _r10334_)
                                      (max (char->integer _char10332_)
                                           _r10334_))))
                               (declare (not safe))
                               (foldl1 __tmp47773 _r10330_ _lst10328_)))))
                      (declare (not safe))
                      (foldl1 __tmp47772 '0 _datums10325_))))
                 (_generate-char-dispatch-table8752_
                  (lambda (_indexes10304_)
                    (let* ((_ixs10310_
                            (map (lambda (_x10307_)
                                   (char->integer (car _x10307_)))
                                 _indexes10304_))
                           (_len10313_
                            (let ((__tmp47774
                                   (let ()
                                     (declare (not safe))
                                     (foldl1 max '0 _ixs10310_))))
                              (declare (not safe))
                              (fx+ __tmp47774 '1)))
                           (_vec10316_ (make-vector _len10313_ '#f)))
                      (for-each
                       (lambda (_entry10321_ _x10323_)
                         (vector-set! _vec10316_ _x10323_ (cdr _entry10321_)))
                       _indexes10304_
                       _ixs10310_)
                      _vec10316_)))
                 (_simple-char-range?8753_
                  (lambda (_tab10280_)
                    (let ((_end10283_ (vector-length _tab10280_)))
                      (let _lp10286_ ((_i10289_ '0))
                        (let ((_ix10292_ (vector-ref _tab10280_ _i10289_)))
                          (if _ix10292_
                              (let _lp210295_ ((_i10298_
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _i10289_ '1))))
                                (if (fx< _i10298_ _end10283_)
                                    (let ((_ix*10301_
                                           (vector-ref _tab10280_ _i10298_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _ix10292_ _ix*10301_))
                                          (_lp210295_
                                           (let ()
                                             (declare (not safe))
                                             (fx+ _i10298_ '1)))
                                          '#f))
                                    '#t))
                              (_lp10286_
                               (let ()
                                 (declare (not safe))
                                 (fx+ _i10289_ '1)))))))))
                 (_char-range-start8754_
                  (lambda (_tab10271_)
                    (let _lp10274_ ((_i10277_ '0))
                      (if (vector-ref _tab10271_ _i10277_)
                          _i10277_
                          (_lp10274_
                           (let () (declare (not safe)) (fx+ _i10277_ '1)))))))
                 (_generate-char-dispatch8755_
                  (lambda (_e9894_ _datums9896_ _dispatch9897_ _default9898_)
                    (if (< (_max-char8751_ _datums9896_) '128)
                        (let* ((_indexes9900_
                                (_datum-dispatch-index8747_ _datums9896_))
                               (_tab9903_
                                (_generate-char-dispatch-table8752_
                                 _indexes9900_)))
                          (if (_simple-char-range?8753_ _tab9903_)
                              (let ((_start9908_
                                     (_char-range-start8754_ _tab9903_))
                                    (_end9910_ (vector-length _tab9903_)))
                                (let* ((_g99129946_
                                        (lambda (_g99139942_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g99139942_)))
                                       (_g991110063_
                                        (lambda (_g99139950_)
                                          (if (gx#stx-pair? _g99139950_)
                                              (let ((_e99209953_
                                                     (gx#syntax-e
                                                      _g99139950_)))
                                                (let ((_hd99219957_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e99209953_)))
                                                      (_tl99229960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e99209953_))))
                                                  (if (gx#stx-pair?
                                                       _tl99229960_)
                                                      (let ((_e99239963_
                                                             (gx#syntax-e
                                                              _tl99229960_)))
                                                        (let ((_hd99249967_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e99239963_)))
                      (_tl99259970_
                       (let () (declare (not safe)) (##cdr _e99239963_))))
                  (if (gx#stx-pair? _tl99259970_)
                      (let ((_e99269973_ (gx#syntax-e _tl99259970_)))
                        (let ((_hd99279977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99269973_)))
                              (_tl99289980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99269973_))))
                          (if (gx#stx-pair? _hd99279977_)
                              (let ((_e99299983_ (gx#syntax-e _hd99279977_)))
                                (let ((_hd99309987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99299983_)))
                                      (_tl99319990_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99299983_))))
                                  (if (gx#stx-null? _tl99319990_)
                                      (if (gx#stx-pair? _tl99289980_)
                                          (let ((_e99329993_
                                                 (gx#syntax-e _tl99289980_)))
                                            (let ((_hd99339997_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e99329993_)))
                                                  (_tl993410000_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e99329993_))))
                                              (if (gx#stx-pair? _tl993410000_)
                                                  (let ((_e993510003_
                                                         (gx#syntax-e
                                                          _tl993410000_)))
                                                    (let ((_hd993610007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e993510003_)))
                                                          (_tl993710010_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e993510003_))))
                                                      (if (gx#stx-pair?
                                                           _tl993710010_)
                                                          (let ((_e993810013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl993710010_)))
                    (let ((_hd993910017_
                           (let () (declare (not safe)) (##car _e993810013_)))
                          (_tl994010020_
                           (let () (declare (not safe)) (##cdr _e993810013_))))
                      (if (gx#stx-null? _tl994010020_)
                          ((lambda (_L10023_
                                    _L10025_
                                    _L10026_
                                    _L10027_
                                    _L10028_
                                    _L10029_)
                             (let ()
                               (let ((__tmp47822 (gx#datum->syntax '#f 'let))
                                     (__tmp47775
                                      (let ((__tmp47816
                                             (let ((__tmp47817
                                                    (let ((__tmp47818
                                                           (let ((__tmp47821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'lambda))
                         (__tmp47819
                          (let ((__tmp47820
                                 (let ()
                                   (declare (not safe))
                                   (cons _L10026_ '()))))
                            (declare (not safe))
                            (cons '() __tmp47820))))
                     (declare (not safe))
                     (cons __tmp47821 __tmp47819))))
              (declare (not safe))
              (cons __tmp47818 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10028_ __tmp47817)))
                                            (__tmp47776
                                             (let ((__tmp47777
                                                    (let ((__tmp47815
                                                           (gx#datum->syntax
                                                            '#f
                                                            'if))
                                                          (__tmp47778
                                                           (let ((__tmp47812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp47814 (gx#datum->syntax '#f 'char?))
                                (__tmp47813
                                 (let ()
                                   (declare (not safe))
                                   (cons _L10029_ '()))))
                            (declare (not safe))
                            (cons __tmp47814 __tmp47813)))
                         (__tmp47779
                          (let ((__tmp47782
                                 (let ((__tmp47811 (gx#datum->syntax '#f 'let))
                                       (__tmp47783
                                        (let ((__tmp47805
                                               (let ((__tmp47810
                                                      (gx#datum->syntax
                                                       '#f
                                                       'ix))
                                                     (__tmp47806
                                                      (let ((__tmp47807
                                                             (let ((__tmp47809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##char->integer))
                           (__tmp47808
                            (let () (declare (not safe)) (cons _L10029_ '()))))
                       (declare (not safe))
                       (cons __tmp47809 __tmp47808))))
                (declare (not safe))
                (cons __tmp47807 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47810 __tmp47806)))
                                              (__tmp47784
                                               (let ((__tmp47785
                                                      (let ((__tmp47804
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp47786
                                                             (let ((__tmp47790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47803 (gx#datum->syntax '#f 'and))
                                  (__tmp47791
                                   (let ((__tmp47798
                                          (let ((__tmp47802
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fx>=))
                                                (__tmp47799
                                                 (let ((__tmp47801
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ix))
                                                       (__tmp47800
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L10025_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp47801
                                                         __tmp47800))))
                                            (declare (not safe))
                                            (cons __tmp47802 __tmp47799)))
                                         (__tmp47792
                                          (let ((__tmp47793
                                                 (let ((__tmp47797
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##fx<))
                                                       (__tmp47794
                                                        (let ((__tmp47796
                                                               (gx#datum->syntax
                                                                '#f
                                                                'ix))
                                                              (__tmp47795
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L10023_ '()))))
                  (declare (not safe))
                  (cons __tmp47796 __tmp47795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47797
                                                         __tmp47794))))
                                            (declare (not safe))
                                            (cons __tmp47793 '()))))
                                     (declare (not safe))
                                     (cons __tmp47798 __tmp47792))))
                              (declare (not safe))
                              (cons __tmp47803 __tmp47791)))
                           (__tmp47787
                            (let ((__tmp47788
                                   (let ((__tmp47789
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10028_ '()))))
                                     (declare (not safe))
                                     (cons __tmp47789 '()))))
                              (declare (not safe))
                              (cons _L10027_ __tmp47788))))
                       (declare (not safe))
                       (cons __tmp47790 __tmp47787))))
                (declare (not safe))
                (cons __tmp47804 __tmp47786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47785 '()))))
                                          (declare (not safe))
                                          (cons __tmp47805 __tmp47784))))
                                   (declare (not safe))
                                   (cons __tmp47811 __tmp47783)))
                                (__tmp47780
                                 (let ((__tmp47781
                                        (let ()
                                          (declare (not safe))
                                          (cons _L10028_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47781 '()))))
                            (declare (not safe))
                            (cons __tmp47782 __tmp47780))))
                     (declare (not safe))
                     (cons __tmp47812 __tmp47779))))
              (declare (not safe))
              (cons __tmp47815 __tmp47778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47777 '()))))
                                        (declare (not safe))
                                        (cons __tmp47816 __tmp47776))))
                                 (declare (not safe))
                                 (cons __tmp47822 __tmp47775))))
                           _hd993910017_
                           _hd993610007_
                           _hd99339997_
                           _hd99309987_
                           _hd99249967_
                           _hd99219957_)
                          (_g99129946_ _g99139950_))))
                  (_g99129946_ _g99139950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g99129946_ _g99139950_))))
                                          (_g99129946_ _g99139950_))
                                      (_g99129946_ _g99139950_))))
                              (_g99129946_ _g99139950_))))
                      (_g99129946_ _g99139950_))))
              (_g99129946_ _g99139950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g99129946_ _g99139950_)))))
                                  (_g991110063_
                                   (list _e9894_
                                         (gx#genident 'default)
                                         _dispatch9897_
                                         _default9898_
                                         _start9908_
                                         _end9910_))))
                              (let* ((_g1006710111_
                                      (lambda (_g1006810107_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1006810107_)))
                                     (_g1006610267_
                                      (lambda (_g1006810115_)
                                        (if (gx#stx-pair? _g1006810115_)
                                            (let ((_e1007610118_
                                                   (gx#syntax-e
                                                    _g1006810115_)))
                                              (let ((_hd1007710122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1007610118_)))
                                                    (_tl1007810125_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1007610118_))))
                                                (if (gx#stx-pair?
                                                     _tl1007810125_)
                                                    (let ((_e1007910128_
                                                           (gx#syntax-e
                                                            _tl1007810125_)))
                                                      (let ((_hd1008010132_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1007910128_)))
                    (_tl1008110135_
                     (let () (declare (not safe)) (##cdr _e1007910128_))))
                (if (gx#stx-pair? _tl1008110135_)
                    (let ((_e1008210138_ (gx#syntax-e _tl1008110135_)))
                      (let ((_hd1008310142_
                             (let ()
                               (declare (not safe))
                               (##car _e1008210138_)))
                            (_tl1008410145_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1008210138_))))
                        (if (gx#stx-pair? _tl1008410145_)
                            (let ((_e1008510148_ (gx#syntax-e _tl1008410145_)))
                              (let ((_hd1008610152_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1008510148_)))
                                    (_tl1008710155_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1008510148_))))
                                (if (gx#stx-pair/null? _hd1008610152_)
                                    (let ((_g47823_
                                           (gx#syntax-split-splice
                                            _hd1008610152_
                                            '0)))
                                      (begin
                                        (let ((_g47824_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g47823_)
                                                     (##vector-length _g47823_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g47824_ 2)))
                                              (error "Context expects 2 values"
                                                     _g47824_)))
                                        (let ((_target1008810158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47823_ 0)))
                                              (_tl1009010161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47823_ 1))))
                                          (if (gx#stx-null? _tl1009010161_)
                                              (letrec ((_loop1009110164_
                                                        (lambda (_hd1008910168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1009510171_)
                  (if (gx#stx-pair? _hd1008910168_)
                      (let ((_e1009210174_ (gx#syntax-e _hd1008910168_)))
                        (let ((_lp-hd1009310178_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1009210174_)))
                              (_lp-tl1009410181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1009210174_))))
                          (_loop1009110164_
                           _lp-tl1009410181_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1009310178_ _dispatch1009510171_)))))
                      (let ((_dispatch1009610184_
                             (reverse _dispatch1009510171_)))
                        (if (gx#stx-pair? _tl1008710155_)
                            (let ((_e1009710188_ (gx#syntax-e _tl1008710155_)))
                              (let ((_hd1009810192_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1009710188_)))
                                    (_tl1009910195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1009710188_))))
                                (if (gx#stx-pair? _tl1009910195_)
                                    (let ((_e1010010198_
                                           (gx#syntax-e _tl1009910195_)))
                                      (let ((_hd1010110202_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1010010198_)))
                                            (_tl1010210205_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1010010198_))))
                                        (if (gx#stx-pair? _tl1010210205_)
                                            (let ((_e1010310208_
                                                   (gx#syntax-e
                                                    _tl1010210205_)))
                                              (let ((_hd1010410212_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1010310208_)))
                                                    (_tl1010510215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1010310208_))))
                                                (if (gx#stx-null?
                                                     _tl1010510215_)
                                                    ((lambda (_L10218_
                                                              _L10220_
                                                              _L10221_
                                                              _L10222_
                                                              _L10223_
                                                              _L10224_
                                                              _L10225_)
                                                       (let ()
                                                         (let ((__tmp47895
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp47825
                        (let ((__tmp47882
                               (let ((__tmp47889
                                      (let ((__tmp47890
                                             (let ((__tmp47891
                                                    (let ((__tmp47894
                                                           (gx#datum->syntax
                                                            '#f
                                                            'lambda))
                                                          (__tmp47892
                                                           (let ((__tmp47893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L10221_ '()))))
                     (declare (not safe))
                     (cons '() __tmp47893))))
              (declare (not safe))
              (cons __tmp47894 __tmp47892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47891 '()))))
                                        (declare (not safe))
                                        (cons _L10224_ __tmp47890)))
                                     (__tmp47883
                                      (let ((__tmp47884
                                             (let ((__tmp47885
                                                    (let ((__tmp47886
                                                           (let ((__tmp47888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp47887
                          (let () (declare (not safe)) (cons _L10220_ '()))))
                     (declare (not safe))
                     (cons __tmp47888 __tmp47887))))
              (declare (not safe))
              (cons __tmp47886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10223_ __tmp47885))))
                                        (declare (not safe))
                                        (cons __tmp47884 '()))))
                                 (declare (not safe))
                                 (cons __tmp47889 __tmp47883)))
                              (__tmp47826
                               (let ((__tmp47827
                                      (let ((__tmp47881
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp47828
                                             (let ((__tmp47878
                                                    (let ((__tmp47880
                                                           (gx#datum->syntax
                                                            '#f
                                                            'char?))
                                                          (__tmp47879
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L10225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp47880 __tmp47879)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp47829
                                                    (let ((__tmp47832
                                                           (let ((__tmp47877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'let))
                         (__tmp47833
                          (let ((__tmp47871
                                 (let ((__tmp47876 (gx#datum->syntax '#f 'ix))
                                       (__tmp47872
                                        (let ((__tmp47873
                                               (let ((__tmp47875
                                                      (gx#datum->syntax
                                                       '#f
                                                       '##char->integer))
                                                     (__tmp47874
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L10225_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp47875
                                                       __tmp47874))))
                                          (declare (not safe))
                                          (cons __tmp47873 '()))))
                                   (declare (not safe))
                                   (cons __tmp47876 __tmp47872)))
                                (__tmp47834
                                 (let ((__tmp47835
                                        (let ((__tmp47870
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47836
                                               (let ((__tmp47865
                                                      (let ((__tmp47869
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fx<))
                                                            (__tmp47866
                                                             (let ((__tmp47868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'ix))
                           (__tmp47867
                            (let () (declare (not safe)) (cons _L10218_ '()))))
                       (declare (not safe))
                       (cons __tmp47868 __tmp47867))))
                (declare (not safe))
                (cons __tmp47869 __tmp47866)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp47837
                                                      (let ((__tmp47840
                                                             (let ((__tmp47864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp47841
                            (let ((__tmp47856
                                   (let ((__tmp47863 (gx#datum->syntax '#f 'x))
                                         (__tmp47857
                                          (let ((__tmp47858
                                                 (let ((__tmp47862
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##vector-ref))
                                                       (__tmp47859
                                                        (let ((__tmp47860
                                                               (let ((__tmp47861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'ix)))
                         (declare (not safe))
                         (cons __tmp47861 '()))))
                  (declare (not safe))
                  (cons _L10223_ __tmp47860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47862
                                                         __tmp47859))))
                                            (declare (not safe))
                                            (cons __tmp47858 '()))))
                                     (declare (not safe))
                                     (cons __tmp47863 __tmp47857)))
                                  (__tmp47842
                                   (let ((__tmp47843
                                          (let ((__tmp47855
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp47844
                                                 (let ((__tmp47854
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp47845
                                                        (let ((__tmp47848
                                                               (let ((__tmp47853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '~case-dispatch))
                             (__tmp47849
                              (let ((__tmp47852 (gx#datum->syntax '#f 'x))
                                    (__tmp47850
                                     (let ((__tmp47851
                                            (lambda (_g1025810261_
                                                     _g1025910264_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1025810261_
                                                      _g1025910264_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp47851 '() _L10222_))))
                                (declare (not safe))
                                (cons __tmp47852 __tmp47850))))
                         (declare (not safe))
                         (cons __tmp47853 __tmp47849)))
                      (__tmp47846
                       (let ((__tmp47847
                              (let ()
                                (declare (not safe))
                                (cons _L10224_ '()))))
                         (declare (not safe))
                         (cons __tmp47847 '()))))
                  (declare (not safe))
                  (cons __tmp47848 __tmp47846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47854
                                                         __tmp47845))))
                                            (declare (not safe))
                                            (cons __tmp47855 __tmp47844))))
                                     (declare (not safe))
                                     (cons __tmp47843 '()))))
                              (declare (not safe))
                              (cons __tmp47856 __tmp47842))))
                       (declare (not safe))
                       (cons __tmp47864 __tmp47841)))
                    (__tmp47838
                     (let ((__tmp47839
                            (let () (declare (not safe)) (cons _L10224_ '()))))
                       (declare (not safe))
                       (cons __tmp47839 '()))))
                (declare (not safe))
                (cons __tmp47840 __tmp47838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47865
                                                       __tmp47837))))
                                          (declare (not safe))
                                          (cons __tmp47870 __tmp47836))))
                                   (declare (not safe))
                                   (cons __tmp47835 '()))))
                            (declare (not safe))
                            (cons __tmp47871 __tmp47834))))
                     (declare (not safe))
                     (cons __tmp47877 __tmp47833)))
                  (__tmp47830
                   (let ((__tmp47831
                          (let () (declare (not safe)) (cons _L10224_ '()))))
                     (declare (not safe))
                     (cons __tmp47831 '()))))
              (declare (not safe))
              (cons __tmp47832 __tmp47830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47878 __tmp47829))))
                                        (declare (not safe))
                                        (cons __tmp47881 __tmp47828))))
                                 (declare (not safe))
                                 (cons __tmp47827 '()))))
                          (declare (not safe))
                          (cons __tmp47882 __tmp47826))))
                   (declare (not safe))
                   (cons __tmp47895 __tmp47825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1010410212_
                                                     _hd1010110202_
                                                     _hd1009810192_
                                                     _dispatch1009610184_
                                                     _hd1008310142_
                                                     _hd1008010132_
                                                     _hd1007710122_)
                                                    (_g1006710111_
                                                     _g1006810115_))))
                                            (_g1006710111_ _g1006810115_))))
                                    (_g1006710111_ _g1006810115_))))
                            (_g1006710111_ _g1006810115_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1009110164_
                                                 _target1008810158_
                                                 '()))
                                              (_g1006710111_ _g1006810115_)))))
                                    (_g1006710111_ _g1006810115_))))
                            (_g1006710111_ _g1006810115_))))
                    (_g1006710111_ _g1006810115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1006710111_
                                                     _g1006810115_))))
                                            (_g1006710111_ _g1006810115_)))))
                                (_g1006610267_
                                 (list _e9894_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch9897_
                                       _default9898_
                                       _tab9903_
                                       (vector-length _tab9903_))))))
                        (_generate-char-dispatch/hash8756_
                         _e9894_
                         _datums9896_
                         _dispatch9897_
                         _default9898_))))
                 (_generate-char-dispatch/hash8756_
                  (lambda (_e9672_ _datums9674_ _dispatch9675_ _default9676_)
                    (let* ((_indexes9678_
                            (_datum-dispatch-index8747_ _datums9674_))
                           (_tab9681_
                            (_generate-hash-dispatch-table8749_
                             _indexes9678_
                             char->integer)))
                      (let* ((_g96869730_
                              (lambda (_g96879726_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g96879726_)))
                             (_g96859890_
                              (lambda (_g96879734_)
                                (if (gx#stx-pair? _g96879734_)
                                    (let ((_e96959737_
                                           (gx#syntax-e _g96879734_)))
                                      (let ((_hd96969741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e96959737_)))
                                            (_tl96979744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e96959737_))))
                                        (if (gx#stx-pair? _tl96979744_)
                                            (let ((_e96989747_
                                                   (gx#syntax-e _tl96979744_)))
                                              (let ((_hd96999751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e96989747_)))
                                                    (_tl97009754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e96989747_))))
                                                (if (gx#stx-pair? _tl97009754_)
                                                    (let ((_e97019757_
                                                           (gx#syntax-e
                                                            _tl97009754_)))
                                                      (let ((_hd97029761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e97019757_)))
                    (_tl97039764_
                     (let () (declare (not safe)) (##cdr _e97019757_))))
                (if (gx#stx-pair? _tl97039764_)
                    (let ((_e97049767_ (gx#syntax-e _tl97039764_)))
                      (let ((_hd97059771_
                             (let () (declare (not safe)) (##car _e97049767_)))
                            (_tl97069774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e97049767_))))
                        (if (gx#stx-pair/null? _hd97059771_)
                            (let ((_g47896_
                                   (gx#syntax-split-splice _hd97059771_ '0)))
                              (begin
                                (let ((_g47897_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g47896_)
                                             (##vector-length _g47896_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g47897_ 2)))
                                      (error "Context expects 2 values"
                                             _g47897_)))
                                (let ((_target97079777_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47896_ 0)))
                                      (_tl97099780_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47896_ 1))))
                                  (if (gx#stx-null? _tl97099780_)
                                      (letrec ((_loop97109783_
                                                (lambda (_hd97089787_
                                                         _dispatch97149790_)
                                                  (if (gx#stx-pair?
                                                       _hd97089787_)
                                                      (let ((_e97119793_
                                                             (gx#syntax-e
                                                              _hd97089787_)))
                                                        (let ((_lp-hd97129797_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e97119793_)))
                      (_lp-tl97139800_
                       (let () (declare (not safe)) (##cdr _e97119793_))))
                  (_loop97109783_
                   _lp-tl97139800_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd97129797_ _dispatch97149790_)))))
              (let ((_dispatch97159803_ (reverse _dispatch97149790_)))
                (if (gx#stx-pair? _tl97069774_)
                    (let ((_e97169807_ (gx#syntax-e _tl97069774_)))
                      (let ((_hd97179811_
                             (let () (declare (not safe)) (##car _e97169807_)))
                            (_tl97189814_
                             (let ()
                               (declare (not safe))
                               (##cdr _e97169807_))))
                        (if (gx#stx-pair? _tl97189814_)
                            (let ((_e97199817_ (gx#syntax-e _tl97189814_)))
                              (let ((_hd97209821_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e97199817_)))
                                    (_tl97219824_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e97199817_))))
                                (if (gx#stx-pair? _tl97219824_)
                                    (let ((_e97229827_
                                           (gx#syntax-e _tl97219824_)))
                                      (let ((_hd97239831_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e97229827_)))
                                            (_tl97249834_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e97229827_))))
                                        (if (gx#stx-null? _tl97249834_)
                                            ((lambda (_L9837_
                                                      _L9839_
                                                      _L9840_
                                                      _L9841_
                                                      _L9842_
                                                      _L9843_
                                                      _L9844_)
                                               (let ()
                                                 (let ((__tmp47989
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp47898
                                                        (let ((__tmp47976
                                                               (let ((__tmp47983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47984
                                     (let ((__tmp47985
                                            (let ((__tmp47988
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp47986
                                                   (let ((__tmp47987
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp47987))))
                                              (declare (not safe))
                                              (cons __tmp47988 __tmp47986))))
                                       (declare (not safe))
                                       (cons __tmp47985 '()))))
                                (declare (not safe))
                                (cons _L9843_ __tmp47984)))
                             (__tmp47977
                              (let ((__tmp47978
                                     (let ((__tmp47979
                                            (let ((__tmp47980
                                                   (let ((__tmp47982
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp47981
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47982
                                                           __tmp47981))))
                                              (declare (not safe))
                                              (cons __tmp47980 '()))))
                                       (declare (not safe))
                                       (cons _L9842_ __tmp47979))))
                                (declare (not safe))
                                (cons __tmp47978 '()))))
                         (declare (not safe))
                         (cons __tmp47983 __tmp47977)))
                      (__tmp47899
                       (let ((__tmp47900
                              (let ((__tmp47975 (gx#datum->syntax '#f 'if))
                                    (__tmp47901
                                     (let ((__tmp47972
                                            (let ((__tmp47974
                                                   (gx#datum->syntax
                                                    '#f
                                                    'char?))
                                                  (__tmp47973
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9844_ '()))))
                                              (declare (not safe))
                                              (cons __tmp47974 __tmp47973)))
                                           (__tmp47902
                                            (let ((__tmp47905
                                                   (let ((__tmp47971
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp47906
                                                          (let ((__tmp47946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp47965
                                (let ((__tmp47970 (gx#datum->syntax '#f 'h))
                                      (__tmp47966
                                       (let ((__tmp47967
                                              (let ((__tmp47969
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##char->integer))
                                                    (__tmp47968
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L9844_ '()))))
                                                (declare (not safe))
                                                (cons __tmp47969 __tmp47968))))
                                         (declare (not safe))
                                         (cons __tmp47967 '()))))
                                  (declare (not safe))
                                  (cons __tmp47970 __tmp47966)))
                               (__tmp47947
                                (let ((__tmp47957
                                       (let ((__tmp47964
                                              (gx#datum->syntax '#f 'ix))
                                             (__tmp47958
                                              (let ((__tmp47959
                                                     (let ((__tmp47963
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##fxmodulo))
                                                           (__tmp47960
                                                            (let ((__tmp47962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp47961
                           (let () (declare (not safe)) (cons _L9837_ '()))))
                      (declare (not safe))
                      (cons __tmp47962 __tmp47961))))
               (declare (not safe))
               (cons __tmp47963 __tmp47960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp47959 '()))))
                                         (declare (not safe))
                                         (cons __tmp47964 __tmp47958)))
                                      (__tmp47948
                                       (let ((__tmp47949
                                              (let ((__tmp47956
                                                     (gx#datum->syntax '#f 'q))
                                                    (__tmp47950
                                                     (let ((__tmp47951
                                                            (let ((__tmp47955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##vector-ref))
                          (__tmp47952
                           (let ((__tmp47953
                                  (let ((__tmp47954
                                         (gx#datum->syntax '#f 'ix)))
                                    (declare (not safe))
                                    (cons __tmp47954 '()))))
                             (declare (not safe))
                             (cons _L9842_ __tmp47953))))
                      (declare (not safe))
                      (cons __tmp47955 __tmp47952))))
               (declare (not safe))
               (cons __tmp47951 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp47956 __tmp47950))))
                                         (declare (not safe))
                                         (cons __tmp47949 '()))))
                                  (declare (not safe))
                                  (cons __tmp47957 __tmp47948))))
                           (declare (not safe))
                           (cons __tmp47965 __tmp47947)))
                        (__tmp47907
                         (let ((__tmp47908
                                (let ((__tmp47945 (gx#datum->syntax '#f 'if))
                                      (__tmp47909
                                       (let ((__tmp47944
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp47910
                                              (let ((__tmp47913
                                                     (let ((__tmp47943
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp47914
                                                            (let ((__tmp47935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp47942 (gx#datum->syntax '#f 'eq?))
                                 (__tmp47936
                                  (let ((__tmp47938
                                         (let ((__tmp47941
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp47939
                                                (let ((__tmp47940
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp47940 '()))))
                                           (declare (not safe))
                                           (cons __tmp47941 __tmp47939)))
                                        (__tmp47937
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9844_ '()))))
                                    (declare (not safe))
                                    (cons __tmp47938 __tmp47937))))
                             (declare (not safe))
                             (cons __tmp47942 __tmp47936)))
                          (__tmp47915
                           (let ((__tmp47918
                                  (let ((__tmp47934
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp47919
                                         (let ((__tmp47927
                                                (let ((__tmp47933
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp47928
                                                       (let ((__tmp47929
                                                              (let ((__tmp47932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp47930
                             (let ((__tmp47931 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp47931 '()))))
                        (declare (not safe))
                        (cons __tmp47932 __tmp47930))))
                 (declare (not safe))
                 (cons __tmp47929 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47933
                                                        __tmp47928)))
                                               (__tmp47920
                                                (let ((__tmp47921
                                                       (let ((__tmp47926
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp47922
                                                              (let ((__tmp47925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp47923
                             (let ((__tmp47924
                                    (lambda (_g98819884_ _g98829887_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g98819884_ _g98829887_)))))
                               (declare (not safe))
                               (foldr1 __tmp47924 '() _L9841_))))
                        (declare (not safe))
                        (cons __tmp47925 __tmp47923))))
                 (declare (not safe))
                 (cons __tmp47926 __tmp47922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47921 '()))))
                                           (declare (not safe))
                                           (cons __tmp47927 __tmp47920))))
                                    (declare (not safe))
                                    (cons __tmp47934 __tmp47919)))
                                 (__tmp47916
                                  (let ((__tmp47917
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9843_ '()))))
                                    (declare (not safe))
                                    (cons __tmp47917 '()))))
                             (declare (not safe))
                             (cons __tmp47918 __tmp47916))))
                      (declare (not safe))
                      (cons __tmp47935 __tmp47915))))
               (declare (not safe))
               (cons __tmp47943 __tmp47914)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp47911
                                                     (let ((__tmp47912
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp47912 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp47913 __tmp47911))))
                                         (declare (not safe))
                                         (cons __tmp47944 __tmp47910))))
                                  (declare (not safe))
                                  (cons __tmp47945 __tmp47909))))
                           (declare (not safe))
                           (cons __tmp47908 '()))))
                    (declare (not safe))
                    (cons __tmp47946 __tmp47907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47971
                                                           __tmp47906)))
                                                  (__tmp47903
                                                   (let ((__tmp47904
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47904 '()))))
                                              (declare (not safe))
                                              (cons __tmp47905 __tmp47903))))
                                       (declare (not safe))
                                       (cons __tmp47972 __tmp47902))))
                                (declare (not safe))
                                (cons __tmp47975 __tmp47901))))
                         (declare (not safe))
                         (cons __tmp47900 '()))))
                  (declare (not safe))
                  (cons __tmp47976 __tmp47899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47989
                                                         __tmp47898))))
                                             _hd97239831_
                                             _hd97209821_
                                             _hd97179811_
                                             _dispatch97159803_
                                             _hd97029761_
                                             _hd96999751_
                                             _hd96969741_)
                                            (_g96869730_ _g96879734_))))
                                    (_g96869730_ _g96879734_))))
                            (_g96869730_ _g96879734_))))
                    (_g96869730_ _g96879734_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop97109783_ _target97079777_ '()))
                                      (_g96869730_ _g96879734_)))))
                            (_g96869730_ _g96879734_))))
                    (_g96869730_ _g96879734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96869730_
                                                     _g96879734_))))
                                            (_g96869730_ _g96879734_))))
                                    (_g96869730_ _g96879734_)))))
                        (_g96859890_
                         (list _e9672_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9675_
                               _default9676_
                               _tab9681_
                               (vector-length _tab9681_)))))))
                 (_min-fixnum8757_
                  (lambda (_datums9665_)
                    (let ((__tmp47990
                           (lambda (_lst9668_ _r9670_)
                             (let ()
                               (declare (not safe))
                               (foldl1 min _r9670_ _lst9668_)))))
                      (declare (not safe))
                      (foldl1 __tmp47990 ##max-fixnum _datums9665_))))
                 (_max-fixnum8758_
                  (lambda (_datums9658_)
                    (let ((__tmp47991
                           (lambda (_lst9661_ _r9663_)
                             (let ()
                               (declare (not safe))
                               (foldl1 max _r9663_ _lst9661_)))))
                      (declare (not safe))
                      (foldl1 __tmp47991 ##min-fixnum _datums9658_))))
                 (_generate-fixnum-dispatch-table8759_
                  (lambda (_indexes9640_)
                    (let* ((_ixs9643_ (map car _indexes9640_))
                           (_len9646_
                            (let ((__tmp47992
                                   (let ()
                                     (declare (not safe))
                                     (foldl1 max '0 _ixs9643_))))
                              (declare (not safe))
                              (fx+ __tmp47992 '1)))
                           (_vec9649_ (make-vector _len9646_ '#f)))
                      (for-each
                       (lambda (_entry9654_ _x9656_)
                         (vector-set! _vec9649_ _x9656_ (cdr _entry9654_)))
                       _indexes9640_
                       _ixs9643_)
                      _vec9649_)))
                 (_generate-fixnum-dispatch8760_
                  (lambda (_e9374_ _datums9376_ _dispatch9377_ _default9378_)
                    (if (and (>= (_min-fixnum8757_ _datums9376_) '0)
                             (< (_max-fixnum8758_ _datums9376_) '1024))
                        (let* ((_indexes9380_
                                (_datum-dispatch-index8747_ _datums9376_))
                               (_tab9383_
                                (_generate-fixnum-dispatch-table8759_
                                 _indexes9380_))
                               (_dense?9386_
                                (let ((__tmp47993 (vector->list _tab9383_)))
                                  (declare (not safe))
                                  (andmap1 values __tmp47993))))
                          (let* ((_g93919435_
                                  (lambda (_g93929431_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g93929431_)))
                                 (_g93909636_
                                  (lambda (_g93929439_)
                                    (if (gx#stx-pair? _g93929439_)
                                        (let ((_e94009442_
                                               (gx#syntax-e _g93929439_)))
                                          (let ((_hd94019446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e94009442_)))
                                                (_tl94029449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e94009442_))))
                                            (if (gx#stx-pair? _tl94029449_)
                                                (let ((_e94039452_
                                                       (gx#syntax-e
                                                        _tl94029449_)))
                                                  (let ((_hd94049456_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e94039452_)))
                                                        (_tl94059459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e94039452_))))
                                                    (if (gx#stx-pair?
                                                         _tl94059459_)
                                                        (let ((_e94069462_
                                                               (gx#syntax-e
                                                                _tl94059459_)))
                                                          (let ((_hd94079466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e94069462_)))
                        (_tl94089469_
                         (let () (declare (not safe)) (##cdr _e94069462_))))
                    (if (gx#stx-pair? _tl94089469_)
                        (let ((_e94099472_ (gx#syntax-e _tl94089469_)))
                          (let ((_hd94109476_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e94099472_)))
                                (_tl94119479_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e94099472_))))
                            (if (gx#stx-pair/null? _hd94109476_)
                                (let ((_g47994_
                                       (gx#syntax-split-splice
                                        _hd94109476_
                                        '0)))
                                  (begin
                                    (let ((_g47995_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g47994_)
                                                 (##vector-length _g47994_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g47995_ 2)))
                                          (error "Context expects 2 values"
                                                 _g47995_)))
                                    (let ((_target94129482_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47994_ 0)))
                                          (_tl94149485_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47994_ 1))))
                                      (if (gx#stx-null? _tl94149485_)
                                          (letrec ((_loop94159488_
                                                    (lambda (_hd94139492_
                                                             _dispatch94199495_)
                                                      (if (gx#stx-pair?
                                                           _hd94139492_)
                                                          (let ((_e94169498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd94139492_)))
                    (let ((_lp-hd94179502_
                           (let () (declare (not safe)) (##car _e94169498_)))
                          (_lp-tl94189505_
                           (let () (declare (not safe)) (##cdr _e94169498_))))
                      (_loop94159488_
                       _lp-tl94189505_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd94179502_ _dispatch94199495_)))))
                  (let ((_dispatch94209508_ (reverse _dispatch94199495_)))
                    (if (gx#stx-pair? _tl94119479_)
                        (let ((_e94219512_ (gx#syntax-e _tl94119479_)))
                          (let ((_hd94229516_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e94219512_)))
                                (_tl94239519_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e94219512_))))
                            (if (gx#stx-pair? _tl94239519_)
                                (let ((_e94249522_ (gx#syntax-e _tl94239519_)))
                                  (let ((_hd94259526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e94249522_)))
                                        (_tl94269529_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e94249522_))))
                                    (if (gx#stx-pair? _tl94269529_)
                                        (let ((_e94279532_
                                               (gx#syntax-e _tl94269529_)))
                                          (let ((_hd94289536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e94279532_)))
                                                (_tl94299539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e94279532_))))
                                            (if (gx#stx-null? _tl94299539_)
                                                ((lambda (_L9542_
                                                          _L9544_
                                                          _L9545_
                                                          _L9546_
                                                          _L9547_
                                                          _L9548_
                                                          _L9549_)
                                                   (let ()
                                                     (let* ((_g95889596_
                                                             (lambda (_g95899592_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g95899592_)))
                                                            (_g95879616_
                                                             (lambda (_g95899600_)
                                                               ((lambda (_L9603_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((__tmp48049 (gx#datum->syntax '#f 'let))
                                  (__tmp47996
                                   (let ((__tmp48036
                                          (let ((__tmp48043
                                                 (let ((__tmp48044
                                                        (let ((__tmp48045
                                                               (let ((__tmp48048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lambda))
                             (__tmp48046
                              (let ((__tmp48047
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9545_ '()))))
                                (declare (not safe))
                                (cons '() __tmp48047))))
                         (declare (not safe))
                         (cons __tmp48048 __tmp48046))))
                  (declare (not safe))
                  (cons __tmp48045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9548_ __tmp48044)))
                                                (__tmp48037
                                                 (let ((__tmp48038
                                                        (let ((__tmp48039
                                                               (let ((__tmp48040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48042 (gx#datum->syntax '#f 'quote))
                                    (__tmp48041
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9544_ '()))))
                                (declare (not safe))
                                (cons __tmp48042 __tmp48041))))
                         (declare (not safe))
                         (cons __tmp48040 '()))))
                  (declare (not safe))
                  (cons _L9547_ __tmp48039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48038 '()))))
                                            (declare (not safe))
                                            (cons __tmp48043 __tmp48037)))
                                         (__tmp47997
                                          (let ((__tmp47998
                                                 (let ((__tmp48035
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp47999
                                                        (let ((__tmp48032
                                                               (let ((__tmp48034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fixnum?))
                             (__tmp48033
                              (let ()
                                (declare (not safe))
                                (cons _L9549_ '()))))
                         (declare (not safe))
                         (cons __tmp48034 __tmp48033)))
                      (__tmp48000
                       (let ((__tmp48003
                              (let ((__tmp48031 (gx#datum->syntax '#f 'if))
                                    (__tmp48004
                                     (let ((__tmp48019
                                            (let ((__tmp48030
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp48020
                                                   (let ((__tmp48026
                                                          (let ((__tmp48029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##fx>=))
                        (__tmp48027
                         (let ((__tmp48028
                                (let () (declare (not safe)) (cons '0 '()))))
                           (declare (not safe))
                           (cons _L9549_ __tmp48028))))
                    (declare (not safe))
                    (cons __tmp48029 __tmp48027)))
                 (__tmp48021
                  (let ((__tmp48022
                         (let ((__tmp48025 (gx#datum->syntax '#f '##fx<))
                               (__tmp48023
                                (let ((__tmp48024
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9542_ '()))))
                                  (declare (not safe))
                                  (cons _L9549_ __tmp48024))))
                           (declare (not safe))
                           (cons __tmp48025 __tmp48023))))
                    (declare (not safe))
                    (cons __tmp48022 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48026
                                                           __tmp48021))))
                                              (declare (not safe))
                                              (cons __tmp48030 __tmp48020)))
                                           (__tmp48005
                                            (let ((__tmp48008
                                                   (let ((__tmp48018
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp48009
                                                          (let ((__tmp48011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48017 (gx#datum->syntax '#f 'x))
                               (__tmp48012
                                (let ((__tmp48013
                                       (let ((__tmp48016
                                              (gx#datum->syntax
                                               '#f
                                               '##vector-ref))
                                             (__tmp48014
                                              (let ((__tmp48015
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L9549_ '()))))
                                                (declare (not safe))
                                                (cons _L9547_ __tmp48015))))
                                         (declare (not safe))
                                         (cons __tmp48016 __tmp48014))))
                                  (declare (not safe))
                                  (cons __tmp48013 '()))))
                           (declare (not safe))
                           (cons __tmp48017 __tmp48012)))
                        (__tmp48010
                         (let () (declare (not safe)) (cons _L9603_ '()))))
                    (declare (not safe))
                    (cons __tmp48011 __tmp48010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48018
                                                           __tmp48009)))
                                                  (__tmp48006
                                                   (let ((__tmp48007
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48007 '()))))
                                              (declare (not safe))
                                              (cons __tmp48008 __tmp48006))))
                                       (declare (not safe))
                                       (cons __tmp48019 __tmp48005))))
                                (declare (not safe))
                                (cons __tmp48031 __tmp48004)))
                             (__tmp48001
                              (let ((__tmp48002
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9548_ '()))))
                                (declare (not safe))
                                (cons __tmp48002 '()))))
                         (declare (not safe))
                         (cons __tmp48003 __tmp48001))))
                  (declare (not safe))
                  (cons __tmp48032 __tmp48000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48035
                                                         __tmp47999))))
                                            (declare (not safe))
                                            (cons __tmp47998 '()))))
                                     (declare (not safe))
                                     (cons __tmp48036 __tmp47997))))
                              (declare (not safe))
                              (cons __tmp48049 __tmp47996))))
                        _g95899600_))))
               (_g95879616_
                (if _dense?9386_
                    (let ((__tmp48054 (gx#datum->syntax '#f '~case-dispatch))
                          (__tmp48050
                           (let ((__tmp48053 (gx#datum->syntax '#f 'x))
                                 (__tmp48051
                                  (let ((__tmp48052
                                         (lambda (_g96199622_ _g96209625_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g96199622_ _g96209625_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp48052 '() _L9546_))))
                             (declare (not safe))
                             (cons __tmp48053 __tmp48051))))
                      (declare (not safe))
                      (cons __tmp48054 __tmp48050))
                    (let ((__tmp48066 (gx#datum->syntax '#f 'if))
                          (__tmp48055
                           (let ((__tmp48065 (gx#datum->syntax '#f 'x))
                                 (__tmp48056
                                  (let ((__tmp48059
                                         (let ((__tmp48064
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch))
                                               (__tmp48060
                                                (let ((__tmp48063
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp48061
                                                       (let ((__tmp48062
                                                              (lambda (_g96279630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g96289633_)
                        (let ()
                          (declare (not safe))
                          (cons _g96279630_ _g96289633_)))))
                 (declare (not safe))
                 (foldr1 __tmp48062 '() _L9546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48063
                                                        __tmp48061))))
                                           (declare (not safe))
                                           (cons __tmp48064 __tmp48060)))
                                        (__tmp48057
                                         (let ((__tmp48058
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L9548_ '()))))
                                           (declare (not safe))
                                           (cons __tmp48058 '()))))
                                    (declare (not safe))
                                    (cons __tmp48059 __tmp48057))))
                             (declare (not safe))
                             (cons __tmp48065 __tmp48056))))
                      (declare (not safe))
                      (cons __tmp48066 __tmp48055)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd94289536_
                                                 _hd94259526_
                                                 _hd94229516_
                                                 _dispatch94209508_
                                                 _hd94079466_
                                                 _hd94049456_
                                                 _hd94019446_)
                                                (_g93919435_ _g93929439_))))
                                        (_g93919435_ _g93929439_))))
                                (_g93919435_ _g93929439_))))
                        (_g93919435_ _g93929439_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop94159488_
                                             _target94129482_
                                             '()))
                                          (_g93919435_ _g93929439_)))))
                                (_g93919435_ _g93929439_))))
                        (_g93919435_ _g93929439_))))
                (_g93919435_ _g93929439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93919435_ _g93929439_))))
                                        (_g93919435_ _g93929439_)))))
                            (_g93909636_
                             (list _e9374_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9377_
                                   _default9378_
                                   _tab9383_
                                   (vector-length _tab9383_)))))
                        (_generate-fixnum-dispatch/hash8761_
                         _e9374_
                         _datums9376_
                         _dispatch9377_
                         _default9378_))))
                 (_generate-fixnum-dispatch/hash8761_
                  (lambda (_e9152_ _datums9154_ _dispatch9155_ _default9156_)
                    (let* ((_indexes9158_
                            (_datum-dispatch-index8747_ _datums9154_))
                           (_tab9161_
                            (_generate-hash-dispatch-table8749_
                             _indexes9158_
                             values)))
                      (let* ((_g91669210_
                              (lambda (_g91679206_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g91679206_)))
                             (_g91659370_
                              (lambda (_g91679214_)
                                (if (gx#stx-pair? _g91679214_)
                                    (let ((_e91759217_
                                           (gx#syntax-e _g91679214_)))
                                      (let ((_hd91769221_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e91759217_)))
                                            (_tl91779224_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e91759217_))))
                                        (if (gx#stx-pair? _tl91779224_)
                                            (let ((_e91789227_
                                                   (gx#syntax-e _tl91779224_)))
                                              (let ((_hd91799231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e91789227_)))
                                                    (_tl91809234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e91789227_))))
                                                (if (gx#stx-pair? _tl91809234_)
                                                    (let ((_e91819237_
                                                           (gx#syntax-e
                                                            _tl91809234_)))
                                                      (let ((_hd91829241_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e91819237_)))
                    (_tl91839244_
                     (let () (declare (not safe)) (##cdr _e91819237_))))
                (if (gx#stx-pair? _tl91839244_)
                    (let ((_e91849247_ (gx#syntax-e _tl91839244_)))
                      (let ((_hd91859251_
                             (let () (declare (not safe)) (##car _e91849247_)))
                            (_tl91869254_
                             (let ()
                               (declare (not safe))
                               (##cdr _e91849247_))))
                        (if (gx#stx-pair/null? _hd91859251_)
                            (let ((_g48067_
                                   (gx#syntax-split-splice _hd91859251_ '0)))
                              (begin
                                (let ((_g48068_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48067_)
                                             (##vector-length _g48067_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48068_ 2)))
                                      (error "Context expects 2 values"
                                             _g48068_)))
                                (let ((_target91879257_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48067_ 0)))
                                      (_tl91899260_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48067_ 1))))
                                  (if (gx#stx-null? _tl91899260_)
                                      (letrec ((_loop91909263_
                                                (lambda (_hd91889267_
                                                         _dispatch91949270_)
                                                  (if (gx#stx-pair?
                                                       _hd91889267_)
                                                      (let ((_e91919273_
                                                             (gx#syntax-e
                                                              _hd91889267_)))
                                                        (let ((_lp-hd91929277_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e91919273_)))
                      (_lp-tl91939280_
                       (let () (declare (not safe)) (##cdr _e91919273_))))
                  (_loop91909263_
                   _lp-tl91939280_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd91929277_ _dispatch91949270_)))))
              (let ((_dispatch91959283_ (reverse _dispatch91949270_)))
                (if (gx#stx-pair? _tl91869254_)
                    (let ((_e91969287_ (gx#syntax-e _tl91869254_)))
                      (let ((_hd91979291_
                             (let () (declare (not safe)) (##car _e91969287_)))
                            (_tl91989294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e91969287_))))
                        (if (gx#stx-pair? _tl91989294_)
                            (let ((_e91999297_ (gx#syntax-e _tl91989294_)))
                              (let ((_hd92009301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e91999297_)))
                                    (_tl92019304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e91999297_))))
                                (if (gx#stx-pair? _tl92019304_)
                                    (let ((_e92029307_
                                           (gx#syntax-e _tl92019304_)))
                                      (let ((_hd92039311_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e92029307_)))
                                            (_tl92049314_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e92029307_))))
                                        (if (gx#stx-null? _tl92049314_)
                                            ((lambda (_L9317_
                                                      _L9319_
                                                      _L9320_
                                                      _L9321_
                                                      _L9322_
                                                      _L9323_
                                                      _L9324_)
                                               (let ()
                                                 (let ((__tmp48152
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp48069
                                                        (let ((__tmp48139
                                                               (let ((__tmp48146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48147
                                     (let ((__tmp48148
                                            (let ((__tmp48151
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp48149
                                                   (let ((__tmp48150
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp48150))))
                                              (declare (not safe))
                                              (cons __tmp48151 __tmp48149))))
                                       (declare (not safe))
                                       (cons __tmp48148 '()))))
                                (declare (not safe))
                                (cons _L9323_ __tmp48147)))
                             (__tmp48140
                              (let ((__tmp48141
                                     (let ((__tmp48142
                                            (let ((__tmp48143
                                                   (let ((__tmp48145
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp48144
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48145
                                                           __tmp48144))))
                                              (declare (not safe))
                                              (cons __tmp48143 '()))))
                                       (declare (not safe))
                                       (cons _L9322_ __tmp48142))))
                                (declare (not safe))
                                (cons __tmp48141 '()))))
                         (declare (not safe))
                         (cons __tmp48146 __tmp48140)))
                      (__tmp48070
                       (let ((__tmp48071
                              (let ((__tmp48138 (gx#datum->syntax '#f 'if))
                                    (__tmp48072
                                     (let ((__tmp48135
                                            (let ((__tmp48137
                                                   (gx#datum->syntax
                                                    '#f
                                                    'fixnum?))
                                                  (__tmp48136
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9324_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48137 __tmp48136)))
                                           (__tmp48073
                                            (let ((__tmp48076
                                                   (let ((__tmp48134
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp48077
                                                          (let ((__tmp48117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48127
                                (let ((__tmp48133 (gx#datum->syntax '#f 'ix))
                                      (__tmp48128
                                       (let ((__tmp48129
                                              (let ((__tmp48132
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fxmodulo))
                                                    (__tmp48130
                                                     (let ((__tmp48131
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L9324_ __tmp48131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48132 __tmp48130))))
                                         (declare (not safe))
                                         (cons __tmp48129 '()))))
                                  (declare (not safe))
                                  (cons __tmp48133 __tmp48128)))
                               (__tmp48118
                                (let ((__tmp48119
                                       (let ((__tmp48126
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp48120
                                              (let ((__tmp48121
                                                     (let ((__tmp48125
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref))
                                                           (__tmp48122
                                                            (let ((__tmp48123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48124 (gx#datum->syntax '#f 'ix)))
                             (declare (not safe))
                             (cons __tmp48124 '()))))
                      (declare (not safe))
                      (cons _L9322_ __tmp48123))))
               (declare (not safe))
               (cons __tmp48125 __tmp48122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48121 '()))))
                                         (declare (not safe))
                                         (cons __tmp48126 __tmp48120))))
                                  (declare (not safe))
                                  (cons __tmp48119 '()))))
                           (declare (not safe))
                           (cons __tmp48127 __tmp48118)))
                        (__tmp48078
                         (let ((__tmp48079
                                (let ((__tmp48116 (gx#datum->syntax '#f 'if))
                                      (__tmp48080
                                       (let ((__tmp48115
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp48081
                                              (let ((__tmp48084
                                                     (let ((__tmp48114
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp48085
                                                            (let ((__tmp48106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48113 (gx#datum->syntax '#f 'eq?))
                                 (__tmp48107
                                  (let ((__tmp48109
                                         (let ((__tmp48112
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp48110
                                                (let ((__tmp48111
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp48111 '()))))
                                           (declare (not safe))
                                           (cons __tmp48112 __tmp48110)))
                                        (__tmp48108
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9324_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48109 __tmp48108))))
                             (declare (not safe))
                             (cons __tmp48113 __tmp48107)))
                          (__tmp48086
                           (let ((__tmp48089
                                  (let ((__tmp48105
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp48090
                                         (let ((__tmp48098
                                                (let ((__tmp48104
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp48099
                                                       (let ((__tmp48100
                                                              (let ((__tmp48103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp48101
                             (let ((__tmp48102 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp48102 '()))))
                        (declare (not safe))
                        (cons __tmp48103 __tmp48101))))
                 (declare (not safe))
                 (cons __tmp48100 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48104
                                                        __tmp48099)))
                                               (__tmp48091
                                                (let ((__tmp48092
                                                       (let ((__tmp48097
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp48093
                                                              (let ((__tmp48096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp48094
                             (let ((__tmp48095
                                    (lambda (_g93619364_ _g93629367_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g93619364_ _g93629367_)))))
                               (declare (not safe))
                               (foldr1 __tmp48095 '() _L9321_))))
                        (declare (not safe))
                        (cons __tmp48096 __tmp48094))))
                 (declare (not safe))
                 (cons __tmp48097 __tmp48093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48092 '()))))
                                           (declare (not safe))
                                           (cons __tmp48098 __tmp48091))))
                                    (declare (not safe))
                                    (cons __tmp48105 __tmp48090)))
                                 (__tmp48087
                                  (let ((__tmp48088
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9323_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48088 '()))))
                             (declare (not safe))
                             (cons __tmp48089 __tmp48087))))
                      (declare (not safe))
                      (cons __tmp48106 __tmp48086))))
               (declare (not safe))
               (cons __tmp48114 __tmp48085)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48082
                                                     (let ((__tmp48083
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp48083 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48084 __tmp48082))))
                                         (declare (not safe))
                                         (cons __tmp48115 __tmp48081))))
                                  (declare (not safe))
                                  (cons __tmp48116 __tmp48080))))
                           (declare (not safe))
                           (cons __tmp48079 '()))))
                    (declare (not safe))
                    (cons __tmp48117 __tmp48078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48134
                                                           __tmp48077)))
                                                  (__tmp48074
                                                   (let ((__tmp48075
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48075 '()))))
                                              (declare (not safe))
                                              (cons __tmp48076 __tmp48074))))
                                       (declare (not safe))
                                       (cons __tmp48135 __tmp48073))))
                                (declare (not safe))
                                (cons __tmp48138 __tmp48072))))
                         (declare (not safe))
                         (cons __tmp48071 '()))))
                  (declare (not safe))
                  (cons __tmp48139 __tmp48070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48152
                                                         __tmp48069))))
                                             _hd92039311_
                                             _hd92009301_
                                             _hd91979291_
                                             _dispatch91959283_
                                             _hd91829241_
                                             _hd91799231_
                                             _hd91769221_)
                                            (_g91669210_ _g91679214_))))
                                    (_g91669210_ _g91679214_))))
                            (_g91669210_ _g91679214_))))
                    (_g91669210_ _g91679214_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop91909263_ _target91879257_ '()))
                                      (_g91669210_ _g91679214_)))))
                            (_g91669210_ _g91679214_))))
                    (_g91669210_ _g91679214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g91669210_
                                                     _g91679214_))))
                                            (_g91669210_ _g91679214_))))
                                    (_g91669210_ _g91679214_)))))
                        (_g91659370_
                         (list _e9152_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9155_
                               _default9156_
                               _tab9161_
                               (vector-length _tab9161_)))))))
                 (_generate-generic-dispatch8762_
                  (lambda (_e8888_ _datums8890_ _dispatch8891_ _default8892_)
                    (let ((_g48153_
                           (if (_eq-datums?8745_ _datums8890_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e8894_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g48153_ 0)))
                              (_hashf8896_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g48153_ 1)))
                              (_eqf8897_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g48153_ 2))))
                          (let* ((_indexes8899_
                                  (_datum-dispatch-index8747_ _datums8890_))
                                 (_tab8902_
                                  (_generate-hash-dispatch-table8749_
                                   _indexes8899_
                                   _hash-e8894_)))
                            (let* ((_g89078959_
                                    (lambda (_g89088955_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g89088955_)))
                                   (_g89069148_
                                    (lambda (_g89088963_)
                                      (if (gx#stx-pair? _g89088963_)
                                          (let ((_e89188966_
                                                 (gx#syntax-e _g89088963_)))
                                            (let ((_hd89198970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e89188966_)))
                                                  (_tl89208973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e89188966_))))
                                              (if (gx#stx-pair? _tl89208973_)
                                                  (let ((_e89218976_
                                                         (gx#syntax-e
                                                          _tl89208973_)))
                                                    (let ((_hd89228980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e89218976_)))
                                                          (_tl89238983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e89218976_))))
                                                      (if (gx#stx-pair?
                                                           _tl89238983_)
                                                          (let ((_e89248986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl89238983_)))
                    (let ((_hd89258990_
                           (let () (declare (not safe)) (##car _e89248986_)))
                          (_tl89268993_
                           (let () (declare (not safe)) (##cdr _e89248986_))))
                      (if (gx#stx-pair? _tl89268993_)
                          (let ((_e89278996_ (gx#syntax-e _tl89268993_)))
                            (let ((_hd89289000_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e89278996_)))
                                  (_tl89299003_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e89278996_))))
                              (if (gx#stx-pair/null? _hd89289000_)
                                  (let ((_g48154_
                                         (gx#syntax-split-splice
                                          _hd89289000_
                                          '0)))
                                    (begin
                                      (let ((_g48155_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g48154_)
                                                   (##vector-length _g48154_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g48155_ 2)))
                                            (error "Context expects 2 values"
                                                   _g48155_)))
                                      (let ((_target89309006_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g48154_ 0)))
                                            (_tl89329009_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g48154_ 1))))
                                        (if (gx#stx-null? _tl89329009_)
                                            (letrec ((_loop89339012_
                                                      (lambda (_hd89319016_
                                                               _dispatch89379019_)
                                                        (if (gx#stx-pair?
                                                             _hd89319016_)
                                                            (let ((_e89349022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd89319016_)))
                      (let ((_lp-hd89359026_
                             (let () (declare (not safe)) (##car _e89349022_)))
                            (_lp-tl89369029_
                             (let ()
                               (declare (not safe))
                               (##cdr _e89349022_))))
                        (_loop89339012_
                         _lp-tl89369029_
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd89359026_ _dispatch89379019_)))))
                    (let ((_dispatch89389032_ (reverse _dispatch89379019_)))
                      (if (gx#stx-pair? _tl89299003_)
                          (let ((_e89399036_ (gx#syntax-e _tl89299003_)))
                            (let ((_hd89409040_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e89399036_)))
                                  (_tl89419043_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e89399036_))))
                              (if (gx#stx-pair? _tl89419043_)
                                  (let ((_e89429046_
                                         (gx#syntax-e _tl89419043_)))
                                    (let ((_hd89439050_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e89429046_)))
                                          (_tl89449053_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e89429046_))))
                                      (if (gx#stx-pair? _tl89449053_)
                                          (let ((_e89459056_
                                                 (gx#syntax-e _tl89449053_)))
                                            (let ((_hd89469060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e89459056_)))
                                                  (_tl89479063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e89459056_))))
                                              (if (gx#stx-pair? _tl89479063_)
                                                  (let ((_e89489066_
                                                         (gx#syntax-e
                                                          _tl89479063_)))
                                                    (let ((_hd89499070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e89489066_)))
                                                          (_tl89509073_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e89489066_))))
                                                      (if (gx#stx-pair?
                                                           _tl89509073_)
                                                          (let ((_e89519076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl89509073_)))
                    (let ((_hd89529080_
                           (let () (declare (not safe)) (##car _e89519076_)))
                          (_tl89539083_
                           (let () (declare (not safe)) (##cdr _e89519076_))))
                      (if (gx#stx-null? _tl89539083_)
                          ((lambda (_L9086_
                                    _L9088_
                                    _L9089_
                                    _L9090_
                                    _L9091_
                                    _L9092_
                                    _L9093_
                                    _L9094_
                                    _L9095_)
                             (let ()
                               (let ((__tmp48236 (gx#datum->syntax '#f 'let))
                                     (__tmp48156
                                      (let ((__tmp48223
                                             (let ((__tmp48230
                                                    (let ((__tmp48231
                                                           (let ((__tmp48232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48235 (gx#datum->syntax '#f 'lambda))
                                (__tmp48233
                                 (let ((__tmp48234
                                        (let ()
                                          (declare (not safe))
                                          (cons _L9091_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp48234))))
                            (declare (not safe))
                            (cons __tmp48235 __tmp48233))))
                     (declare (not safe))
                     (cons __tmp48232 '()))))
              (declare (not safe))
              (cons _L9094_ __tmp48231)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48224
                                                    (let ((__tmp48225
                                                           (let ((__tmp48226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48227
                                 (let ((__tmp48229
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48228
                                        (let ()
                                          (declare (not safe))
                                          (cons _L9090_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48229 __tmp48228))))
                            (declare (not safe))
                            (cons __tmp48227 '()))))
                     (declare (not safe))
                     (cons _L9093_ __tmp48226))))
              (declare (not safe))
              (cons __tmp48225 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48230 __tmp48224)))
                                            (__tmp48157
                                             (let ((__tmp48158
                                                    (let ((__tmp48222
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let*))
                                                          (__tmp48159
                                                           (let ((__tmp48198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48217
                                 (let ((__tmp48221 (gx#datum->syntax '#f 'h))
                                       (__tmp48218
                                        (let ((__tmp48219
                                               (let ((__tmp48220
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L9095_ '()))))
                                                 (declare (not safe))
                                                 (cons _L9088_ __tmp48220))))
                                          (declare (not safe))
                                          (cons __tmp48219 '()))))
                                   (declare (not safe))
                                   (cons __tmp48221 __tmp48218)))
                                (__tmp48199
                                 (let ((__tmp48209
                                        (let ((__tmp48216
                                               (gx#datum->syntax '#f 'ix))
                                              (__tmp48210
                                               (let ((__tmp48211
                                                      (let ((__tmp48215
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fxmodulo))
                                                            (__tmp48212
                                                             (let ((__tmp48214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'h))
                           (__tmp48213
                            (let () (declare (not safe)) (cons _L9089_ '()))))
                       (declare (not safe))
                       (cons __tmp48214 __tmp48213))))
                (declare (not safe))
                (cons __tmp48215 __tmp48212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48211 '()))))
                                          (declare (not safe))
                                          (cons __tmp48216 __tmp48210)))
                                       (__tmp48200
                                        (let ((__tmp48201
                                               (let ((__tmp48208
                                                      (gx#datum->syntax
                                                       '#f
                                                       'q))
                                                     (__tmp48202
                                                      (let ((__tmp48203
                                                             (let ((__tmp48207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##vector-ref))
                           (__tmp48204
                            (let ((__tmp48205
                                   (let ((__tmp48206
                                          (gx#datum->syntax '#f 'ix)))
                                     (declare (not safe))
                                     (cons __tmp48206 '()))))
                              (declare (not safe))
                              (cons _L9093_ __tmp48205))))
                       (declare (not safe))
                       (cons __tmp48207 __tmp48204))))
                (declare (not safe))
                (cons __tmp48203 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48208
                                                       __tmp48202))))
                                          (declare (not safe))
                                          (cons __tmp48201 '()))))
                                   (declare (not safe))
                                   (cons __tmp48209 __tmp48200))))
                            (declare (not safe))
                            (cons __tmp48217 __tmp48199)))
                         (__tmp48160
                          (let ((__tmp48161
                                 (let ((__tmp48197 (gx#datum->syntax '#f 'if))
                                       (__tmp48162
                                        (let ((__tmp48196
                                               (gx#datum->syntax '#f 'q))
                                              (__tmp48163
                                               (let ((__tmp48166
                                                      (let ((__tmp48195
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp48167
                                                             (let ((__tmp48188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48189
                                   (let ((__tmp48191
                                          (let ((__tmp48194
                                                 (gx#datum->syntax '#f '##car))
                                                (__tmp48192
                                                 (let ((__tmp48193
                                                        (gx#datum->syntax
                                                         '#f
                                                         'q)))
                                                   (declare (not safe))
                                                   (cons __tmp48193 '()))))
                                            (declare (not safe))
                                            (cons __tmp48194 __tmp48192)))
                                         (__tmp48190
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9095_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48191 __tmp48190))))
                              (declare (not safe))
                              (cons _L9086_ __tmp48189)))
                           (__tmp48168
                            (let ((__tmp48171
                                   (let ((__tmp48187
                                          (gx#datum->syntax '#f 'let))
                                         (__tmp48172
                                          (let ((__tmp48180
                                                 (let ((__tmp48186
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp48181
                                                        (let ((__tmp48182
                                                               (let ((__tmp48185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '##cdr))
                             (__tmp48183
                              (let ((__tmp48184 (gx#datum->syntax '#f 'q)))
                                (declare (not safe))
                                (cons __tmp48184 '()))))
                         (declare (not safe))
                         (cons __tmp48185 __tmp48183))))
                  (declare (not safe))
                  (cons __tmp48182 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48186
                                                         __tmp48181)))
                                                (__tmp48173
                                                 (let ((__tmp48174
                                                        (let ((__tmp48179
                                                               (gx#datum->syntax
                                                                '#f
                                                                '~case-dispatch))
                                                              (__tmp48175
                                                               (let ((__tmp48178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'x))
                             (__tmp48176
                              (let ((__tmp48177
                                     (lambda (_g91399142_ _g91409145_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g91399142_ _g91409145_)))))
                                (declare (not safe))
                                (foldr1 __tmp48177 '() _L9092_))))
                         (declare (not safe))
                         (cons __tmp48178 __tmp48176))))
                  (declare (not safe))
                  (cons __tmp48179 __tmp48175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48174 '()))))
                                            (declare (not safe))
                                            (cons __tmp48180 __tmp48173))))
                                     (declare (not safe))
                                     (cons __tmp48187 __tmp48172)))
                                  (__tmp48169
                                   (let ((__tmp48170
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9094_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48170 '()))))
                              (declare (not safe))
                              (cons __tmp48171 __tmp48169))))
                       (declare (not safe))
                       (cons __tmp48188 __tmp48168))))
                (declare (not safe))
                (cons __tmp48195 __tmp48167)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48164
                                                      (let ((__tmp48165
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L9094_ '()))))
                (declare (not safe))
                (cons __tmp48165 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48166
                                                       __tmp48164))))
                                          (declare (not safe))
                                          (cons __tmp48196 __tmp48163))))
                                   (declare (not safe))
                                   (cons __tmp48197 __tmp48162))))
                            (declare (not safe))
                            (cons __tmp48161 '()))))
                     (declare (not safe))
                     (cons __tmp48198 __tmp48160))))
              (declare (not safe))
              (cons __tmp48222 __tmp48159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48158 '()))))
                                        (declare (not safe))
                                        (cons __tmp48223 __tmp48157))))
                                 (declare (not safe))
                                 (cons __tmp48236 __tmp48156))))
                           _hd89529080_
                           _hd89499070_
                           _hd89469060_
                           _hd89439050_
                           _hd89409040_
                           _dispatch89389032_
                           _hd89258990_
                           _hd89228980_
                           _hd89198970_)
                          (_g89078959_ _g89088963_))))
                  (_g89078959_ _g89088963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89078959_ _g89088963_))))
                                          (_g89078959_ _g89088963_))))
                                  (_g89078959_ _g89088963_))))
                          (_g89078959_ _g89088963_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop89339012_
                                               _target89309006_
                                               '()))
                                            (_g89078959_ _g89088963_)))))
                                  (_g89078959_ _g89088963_))))
                          (_g89078959_ _g89088963_))))
                  (_g89078959_ _g89088963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89078959_ _g89088963_))))
                                          (_g89078959_ _g89088963_)))))
                              (_g89069148_
                               (list _e8888_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch8891_
                                     _default8892_
                                     _tab8902_
                                     (vector-length _tab8902_)
                                     _hashf8896_
                                     _eqf8897_))))))))))
          (let* ((_g87648788_
                  (lambda (_g87658784_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g87658784_)))
                 (_g87638884_
                  (lambda (_g87658792_)
                    (if (gx#stx-pair? _g87658792_)
                        (let ((_e87688795_ (gx#syntax-e _g87658792_)))
                          (let ((_hd87698799_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e87688795_)))
                                (_tl87708802_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e87688795_))))
                            (if (gx#stx-pair? _tl87708802_)
                                (let ((_e87718805_ (gx#syntax-e _tl87708802_)))
                                  (let ((_hd87728809_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e87718805_)))
                                        (_tl87738812_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e87718805_))))
                                    (if (gx#stx-pair/null? _tl87738812_)
                                        (let ((_g48237_
                                               (gx#syntax-split-splice
                                                _tl87738812_
                                                '0)))
                                          (begin
                                            (let ((_g48238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g48237_)
                                                         (##vector-length
                                                          _g48237_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g48238_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g48238_)))
                                            (let ((_target87748815_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48237_
                                                      0)))
                                                  (_tl87768818_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48237_
                                                      1))))
                                              (if (gx#stx-null? _tl87768818_)
                                                  (letrec ((_loop87778821_
                                                            (lambda (_hd87758825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause87818828_)
                      (if (gx#stx-pair? _hd87758825_)
                          (let ((_e87788831_ (gx#syntax-e _hd87758825_)))
                            (let ((_lp-hd87798835_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e87788831_)))
                                  (_lp-tl87808838_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e87788831_))))
                              (_loop87778821_
                               _lp-tl87808838_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd87798835_ _clause87818828_)))))
                          (let ((_clause87828841_ (reverse _clause87818828_)))
                            ((lambda (_L8845_ _L8847_)
                               (let ((_g48239_
                                      (_parse-clauses8738_
                                       _L8847_
                                       (let ((__tmp48241
                                              (lambda (_g88658868_ _g88668871_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g88658868_
                                                        _g88668871_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48241 '() _L8845_)))))
                                 (begin
                                   (let ((_g48240_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g48239_)
                                                (##vector-length _g48239_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g48240_ 3)))
                                         (error "Context expects 3 values"
                                                _g48240_)))
                                   (let ((_datums8874_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48239_ 0)))
                                         (_dispatch8876_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48239_ 1)))
                                         (_default8877_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48239_ 2))))
                                     (let ((_datum-count8879_
                                            (_count-datums8741_ _datums8874_)))
                                       (if (< _datum-count8879_ '6)
                                           (_generate-simple-case8746_
                                            _L8847_
                                            _datums8874_
                                            _dispatch8876_
                                            _default8877_)
                                           (if (_char-datums?8743_
                                                _datums8874_)
                                               (_generate-char-dispatch8755_
                                                _L8847_
                                                _datums8874_
                                                _dispatch8876_
                                                _default8877_)
                                               (if (_fixnum-datums?8744_
                                                    _datums8874_)
                                                   (_generate-fixnum-dispatch8760_
                                                    _L8847_
                                                    _datums8874_
                                                    _dispatch8876_
                                                    _default8877_)
                                                   (if (< _datum-count8879_
                                                          '12)
                                                       (_generate-simple-case8746_
                                                        _L8847_
                                                        _datums8874_
                                                        _dispatch8876_
                                                        _default8877_)
                                                       (if (_symbolic-datums?8742_
                                                            _datums8874_)
                                                           (_generate-symbolic-dispatch8750_
                                                            _L8847_
                                                            _datums8874_
                                                            _dispatch8876_
                                                            _default8877_)
                                                           (_generate-generic-dispatch8762_
                                                            _L8847_
                                                            _datums8874_
                                                            _dispatch8876_
                                                            _default8877_)))))))))))
                             _clause87828841_
                             _hd87728809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop87778821_
                                                     _target87748815_
                                                     '()))
                                                  (_g87648788_ _g87658792_)))))
                                        (_g87648788_ _g87658792_))))
                                (_g87648788_ _g87658792_))))
                        (_g87648788_ _g87658792_)))))
            (_g87638884_ _stx8735_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11786_)
        (let* ((_g1178911807_
                (lambda (_g1179011803_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1179011803_)))
               (_g1178811873_
                (lambda (_g1179011811_)
                  (if (gx#stx-pair? _g1179011811_)
                      (let ((_e1179311814_ (gx#syntax-e _g1179011811_)))
                        (let ((_hd1179411818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1179311814_)))
                              (_tl1179511821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1179311814_))))
                          (if (gx#stx-pair? _tl1179511821_)
                              (let ((_e1179611824_
                                     (gx#syntax-e _tl1179511821_)))
                                (let ((_hd1179711828_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1179611824_)))
                                      (_tl1179811831_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1179611824_))))
                                  (if (gx#stx-pair? _tl1179811831_)
                                      (let ((_e1179911834_
                                             (gx#syntax-e _tl1179811831_)))
                                        (let ((_hd1180011838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1179911834_)))
                                              (_tl1180111841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1179911834_))))
                                          (if (gx#stx-null? _tl1180111841_)
                                              ((lambda (_L11844_ _L11846_)
                                                 (let ((_datum-e11862_
                                                        (gx#stx-e _L11846_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _datum-e11862_))
                                                           (keyword?
                                                            _datum-e11862_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (immediate?
                                                              _datum-e11862_)))
                                                       (let ((__tmp48247
                                                              (gx#datum->syntax
                                                               '#f
                                                               'eq?))
                                                             (__tmp48242
                                                              (let ((__tmp48244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48246 (gx#datum->syntax '#f 'quote))
                                   (__tmp48245
                                    (let ()
                                      (declare (not safe))
                                      (cons _L11846_ '()))))
                               (declare (not safe))
                               (cons __tmp48246 __tmp48245)))
                            (__tmp48243
                             (let ()
                               (declare (not safe))
                               (cons _L11844_ '()))))
                        (declare (not safe))
                        (cons __tmp48244 __tmp48243))))
                 (declare (not safe))
                 (cons __tmp48247 __tmp48242))
               (if (let () (declare (not safe)) (number? _datum-e11862_))
                   (let ((__tmp48253 (gx#datum->syntax '#f 'eqv?))
                         (__tmp48248
                          (let ((__tmp48250
                                 (let ((__tmp48252
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48251
                                        (let ()
                                          (declare (not safe))
                                          (cons _L11846_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48252 __tmp48251)))
                                (__tmp48249
                                 (let ()
                                   (declare (not safe))
                                   (cons _L11844_ '()))))
                            (declare (not safe))
                            (cons __tmp48250 __tmp48249))))
                     (declare (not safe))
                     (cons __tmp48253 __tmp48248))
                   (let ((__tmp48259 (gx#datum->syntax '#f 'equal?))
                         (__tmp48254
                          (let ((__tmp48256
                                 (let ((__tmp48258
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48257
                                        (let ()
                                          (declare (not safe))
                                          (cons _L11846_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48258 __tmp48257)))
                                (__tmp48255
                                 (let ()
                                   (declare (not safe))
                                   (cons _L11844_ '()))))
                            (declare (not safe))
                            (cons __tmp48256 __tmp48255))))
                     (declare (not safe))
                     (cons __tmp48259 __tmp48254))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1180011838_
                                               _hd1179711828_)
                                              (_g1178911807_ _g1179011811_))))
                                      (_g1178911807_ _g1179011811_))))
                              (_g1178911807_ _g1179011811_))))
                      (_g1178911807_ _g1179011811_)))))
          (_g1178811873_ _stx11786_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11877_)
        (let* ((_g1188111905_
                (lambda (_g1188211901_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1188211901_)))
               (_g1188011990_
                (lambda (_g1188211909_)
                  (if (gx#stx-pair? _g1188211909_)
                      (let ((_e1188511912_ (gx#syntax-e _g1188211909_)))
                        (let ((_hd1188611916_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1188511912_)))
                              (_tl1188711919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1188511912_))))
                          (if (gx#stx-pair? _tl1188711919_)
                              (let ((_e1188811922_
                                     (gx#syntax-e _tl1188711919_)))
                                (let ((_hd1188911926_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1188811922_)))
                                      (_tl1189011929_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1188811922_))))
                                  (if (gx#stx-pair/null? _tl1189011929_)
                                      (let ((_g48260_
                                             (gx#syntax-split-splice
                                              _tl1189011929_
                                              '0)))
                                        (begin
                                          (let ((_g48261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48260_)
                                                       (##vector-length
                                                        _g48260_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48261_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48261_)))
                                          (let ((_target1189111932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48260_ 0)))
                                                (_tl1189311935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48260_ 1))))
                                            (if (gx#stx-null? _tl1189311935_)
                                                (letrec ((_loop1189411938_
                                                          (lambda (_hd1189211942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1189811945_)
                    (if (gx#stx-pair? _hd1189211942_)
                        (let ((_e1189511948_ (gx#syntax-e _hd1189211942_)))
                          (let ((_lp-hd1189611952_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1189511948_)))
                                (_lp-tl1189711955_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1189511948_))))
                            (_loop1189411938_
                             _lp-tl1189711955_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1189611952_ _K1189811945_)))))
                        (let ((_K1189911958_ (reverse _K1189811945_)))
                          ((lambda (_L11962_ _L11964_)
                             (let ((__tmp48266
                                    (gx#datum->syntax '#f '~case-dispatch*))
                                   (__tmp48262
                                    (let ((__tmp48263
                                           (let ((__tmp48264
                                                  (let ((__tmp48265
                                                         (lambda (_g1198111984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1198211987_)
                   (let ()
                     (declare (not safe))
                     (cons _g1198111984_ _g1198211987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp48265
                                                            '()
                                                            _L11962_))))
                                             (declare (not safe))
                                             (cons _L11964_ __tmp48264))))
                                      (declare (not safe))
                                      (cons '0 __tmp48263))))
                               (declare (not safe))
                               (cons __tmp48266 __tmp48262)))
                           _K1189911958_
                           _hd1188911926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1189411938_
                                                   _target1189111932_
                                                   '()))
                                                (_g1188111905_
                                                 _g1188211909_)))))
                                      (_g1188111905_ _g1188211909_))))
                              (_g1188111905_ _g1188211909_))))
                      (_g1188111905_ _g1188211909_)))))
          (_g1188011990_ _$stx11877_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx11995_)
        (let* ((___stx4284042841_ _stx11995_)
               (_g1200212098_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4284042841_))))
          (let ((___kont4284342844_
                 (lambda (_L12575_ _L12577_)
                   (let ((__tmp48268 (gx#datum->syntax '#f 'quote))
                         (__tmp48267
                          (let () (declare (not safe)) (cons '#!void '()))))
                     (declare (not safe))
                     (cons __tmp48268 __tmp48267))))
                (___kont4284542846_
                 (lambda (_L12517_ _L12519_ _L12520_) _L12517_))
                (___kont4284742848_
                 (lambda (_L12414_ _L12416_ _L12417_ _L12418_)
                   (let* ((_g1243912447_
                           (lambda (_g1244012443_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1244012443_)))
                          (_g1243812466_
                           (lambda (_g1244012451_)
                             ((lambda (_L12454_)
                                (let ()
                                  (let ((__tmp48276 (gx#datum->syntax '#f 'if))
                                        (__tmp48269
                                         (let ((__tmp48272
                                                (let ((__tmp48275
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##fx=))
                                                      (__tmp48273
                                                       (let ((__tmp48274
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L12454_ '()))))
                 (declare (not safe))
                 (cons _L12417_ __tmp48274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48275
                                                        __tmp48273)))
                                               (__tmp48270
                                                (let ((__tmp48271
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L12414_ '()))))
                                                  (declare (not safe))
                                                  (cons _L12416_ __tmp48271))))
                                           (declare (not safe))
                                           (cons __tmp48272 __tmp48270))))
                                    (declare (not safe))
                                    (cons __tmp48276 __tmp48269))))
                              _g1244012451_))))
                     (_g1243812466_ (gx#stx-e _L12418_)))))
                (___kont4284942850_
                 (lambda (_L12264_ _L12266_ _L12267_ _L12268_ _L12269_)
                   (let* ((_g1229312308_
                           (lambda (_g1229412304_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1229412304_)))
                          (_g1229212353_
                           (lambda (_g1229412312_)
                             (if (gx#stx-pair? _g1229412312_)
                                 (let ((_e1229712315_
                                        (gx#syntax-e _g1229412312_)))
                                   (let ((_hd1229812319_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1229712315_)))
                                         (_tl1229912322_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1229712315_))))
                                     (if (gx#stx-pair? _tl1229912322_)
                                         (let ((_e1230012325_
                                                (gx#syntax-e _tl1229912322_)))
                                           (let ((_hd1230112329_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1230012325_)))
                                                 (_tl1230212332_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1230012325_))))
                                             (if (gx#stx-null? _tl1230212332_)
                                                 ((lambda (_L12335_ _L12337_)
                                                    (let ()
                                                      (let ((__tmp48293
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp48277
                                                             (let ((__tmp48289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48292 (gx#datum->syntax '#f '##fx=))
                                  (__tmp48290
                                   (let ((__tmp48291
                                          (let ()
                                            (declare (not safe))
                                            (cons _L12337_ '()))))
                                     (declare (not safe))
                                     (cons _L12268_ __tmp48291))))
                              (declare (not safe))
                              (cons __tmp48292 __tmp48290)))
                           (__tmp48278
                            (let ((__tmp48279
                                   (let ((__tmp48280
                                          (let ((__tmp48288
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp48281
                                                 (let ((__tmp48284
                                                        (let ((__tmp48287
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx=))
                                                              (__tmp48285
                                                               (let ((__tmp48286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L12335_ '()))))
                         (declare (not safe))
                         (cons _L12268_ __tmp48286))))
                  (declare (not safe))
                  (cons __tmp48287 __tmp48285)))
               (__tmp48282
                (let ((__tmp48283
                       (let () (declare (not safe)) (cons _L12264_ '()))))
                  (declare (not safe))
                  (cons _L12266_ __tmp48283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48284
                                                         __tmp48282))))
                                            (declare (not safe))
                                            (cons __tmp48288 __tmp48281))))
                                     (declare (not safe))
                                     (cons __tmp48280 '()))))
                              (declare (not safe))
                              (cons _L12267_ __tmp48279))))
                       (declare (not safe))
                       (cons __tmp48289 __tmp48278))))
                (declare (not safe))
                (cons __tmp48293 __tmp48277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1230112329_
                                                  _hd1229812319_)
                                                 (_g1229312308_
                                                  _g1229412312_))))
                                         (_g1229312308_ _g1229412312_))))
                                 (_g1229312308_ _g1229412312_)))))
                     (_g1229212353_
                      (list (gx#stx-e _L12269_)
                            (let ((__tmp48294 (gx#stx-e _L12269_)))
                              (declare (not safe))
                              (fx+ __tmp48294 '1)))))))
                (___kont4285142852_
                 (lambda (_L12165_ _L12167_ _L12168_)
                   (let ((__tmp48299
                          (gx#datum->syntax '#f '~case-dispatch-bsearch))
                         (__tmp48295
                          (let ((__tmp48296
                                 (let ((__tmp48297
                                        (let ((__tmp48298
                                               (lambda (_g1218812191_
                                                        _g1218912194_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1218812191_
                                                         _g1218912194_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp48298 '() _L12165_))))
                                   (declare (not safe))
                                   (cons _L12167_ __tmp48297))))
                            (declare (not safe))
                            (cons _L12168_ __tmp48296))))
                     (declare (not safe))
                     (cons __tmp48299 __tmp48295)))))
            (let ((___match4299742998_
                   (lambda (_e1207512105_
                            _hd1207612109_
                            _tl1207712112_
                            _e1207812115_
                            _hd1207912119_
                            _tl1208012122_
                            _e1208112125_
                            _hd1208212129_
                            _tl1208312132_
                            ___splice4285342854_
                            _target1208412135_
                            _tl1208612138_)
                     (letrec ((_loop1208712141_
                               (lambda (_hd1208512145_ _K1209112148_)
                                 (if (gx#stx-pair? _hd1208512145_)
                                     (let ((_e1208812151_
                                            (gx#syntax-e _hd1208512145_)))
                                       (let ((_lp-tl1209012158_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1208812151_)))
                                             (_lp-hd1208912155_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1208812151_))))
                                         (_loop1208712141_
                                          _lp-tl1209012158_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1208912155_
                                                  _K1209112148_)))))
                                     (let ((_K1209212161_
                                            (reverse _K1209112148_)))
                                       (___kont4285142852_
                                        _K1209212161_
                                        _hd1208212129_
                                        _hd1207912119_))))))
                       (_loop1208712141_ _target1208412135_ '())))))
              (if (gx#stx-pair? ___stx4284042841_)
                  (let ((_e1200612545_ (gx#syntax-e ___stx4284042841_)))
                    (let ((_tl1200812552_
                           (let () (declare (not safe)) (##cdr _e1200612545_)))
                          (_hd1200712549_
                           (let ()
                             (declare (not safe))
                             (##car _e1200612545_))))
                      (if (gx#stx-pair? _tl1200812552_)
                          (let ((_e1200912555_ (gx#syntax-e _tl1200812552_)))
                            (let ((_tl1201112562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1200912555_)))
                                  (_hd1201012559_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1200912555_))))
                              (if (gx#stx-pair? _tl1201112562_)
                                  (let ((_e1201212565_
                                         (gx#syntax-e _tl1201112562_)))
                                    (let ((_tl1201412572_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1201212565_)))
                                          (_hd1201312569_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1201212565_))))
                                      (if (gx#stx-null? _tl1201412572_)
                                          (___kont4284342844_
                                           _hd1201312569_
                                           _hd1201012559_)
                                          (if (gx#stx-pair? _tl1201412572_)
                                              (let ((_e1202712507_
                                                     (gx#syntax-e
                                                      _tl1201412572_)))
                                                (let ((_tl1202912514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1202712507_)))
                                                      (_hd1202812511_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1202712507_))))
                                                  (if (gx#stx-null?
                                                       _tl1202912514_)
                                                      (___kont4284542846_
                                                       _hd1202812511_
                                                       _hd1201312569_
                                                       _hd1201012559_)
                                                      (if (gx#stx-pair?
                                                           _tl1202912514_)
                                                          (let ((_e1204612404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1202912514_)))
                    (let ((_tl1204812411_
                           (let () (declare (not safe)) (##cdr _e1204612404_)))
                          (_hd1204712408_
                           (let ()
                             (declare (not safe))
                             (##car _e1204612404_))))
                      (if (gx#stx-null? _tl1204812411_)
                          (___kont4284742848_
                           _hd1204712408_
                           _hd1202812511_
                           _hd1201312569_
                           _hd1201012559_)
                          (if (gx#stx-pair? _tl1204812411_)
                              (let ((_e1206912254_
                                     (gx#syntax-e _tl1204812411_)))
                                (let ((_tl1207112261_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1206912254_)))
                                      (_hd1207012258_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1206912254_))))
                                  (if (gx#stx-null? _tl1207112261_)
                                      (___kont4284942850_
                                       _hd1207012258_
                                       _hd1204712408_
                                       _hd1202812511_
                                       _hd1201312569_
                                       _hd1201012559_)
                                      (if (gx#stx-pair/null? _tl1201412572_)
                                          (let ((___splice4285342854_
                                                 (gx#syntax-split-splice
                                                  _tl1201412572_
                                                  '0)))
                                            (let ((_tl1208612138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4285342854_
                                                      '1)))
                                                  (_target1208412135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4285342854_
                                                      '0))))
                                              (if (gx#stx-null? _tl1208612138_)
                                                  (___match4299742998_
                                                   _e1200612545_
                                                   _hd1200712549_
                                                   _tl1200812552_
                                                   _e1200912555_
                                                   _hd1201012559_
                                                   _tl1201112562_
                                                   _e1201212565_
                                                   _hd1201312569_
                                                   _tl1201412572_
                                                   ___splice4285342854_
                                                   _target1208412135_
                                                   _tl1208612138_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1200212098_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1200212098_))))))
                              (if (gx#stx-pair/null? _tl1201412572_)
                                  (let ((___splice4285342854_
                                         (gx#syntax-split-splice
                                          _tl1201412572_
                                          '0)))
                                    (let ((_tl1208612138_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4285342854_
                                              '1)))
                                          (_target1208412135_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4285342854_
                                              '0))))
                                      (if (gx#stx-null? _tl1208612138_)
                                          (___match4299742998_
                                           _e1200612545_
                                           _hd1200712549_
                                           _tl1200812552_
                                           _e1200912555_
                                           _hd1201012559_
                                           _tl1201112562_
                                           _e1201212565_
                                           _hd1201312569_
                                           _tl1201412572_
                                           ___splice4285342854_
                                           _target1208412135_
                                           _tl1208612138_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1200212098_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1200212098_)))))))
                  (if (gx#stx-pair/null? _tl1201412572_)
                      (let ((___splice4285342854_
                             (gx#syntax-split-splice _tl1201412572_ '0)))
                        (let ((_tl1208612138_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4285342854_ '1)))
                              (_target1208412135_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4285342854_ '0))))
                          (if (gx#stx-null? _tl1208612138_)
                              (___match4299742998_
                               _e1200612545_
                               _hd1200712549_
                               _tl1200812552_
                               _e1200912555_
                               _hd1201012559_
                               _tl1201112562_
                               _e1201212565_
                               _hd1201312569_
                               _tl1201412572_
                               ___splice4285342854_
                               _target1208412135_
                               _tl1208612138_)
                              (let () (declare (not safe)) (_g1200212098_)))))
                      (let () (declare (not safe)) (_g1200212098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1201412572_)
                                                  (let ((___splice4285342854_
                                                         (gx#syntax-split-splice
                                                          _tl1201412572_
                                                          '0)))
                                                    (let ((_tl1208612138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4285342854_
                                                              '1)))
                                                          (_target1208412135_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4285342854_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1208612138_)
                                                          (___match4299742998_
                                                           _e1200612545_
                                                           _hd1200712549_
                                                           _tl1200812552_
                                                           _e1200912555_
                                                           _hd1201012559_
                                                           _tl1201112562_
                                                           _e1201212565_
                                                           _hd1201312569_
                                                           _tl1201412572_
                                                           ___splice4285342854_
                                                           _target1208412135_
                                                           _tl1208612138_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1200212098_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1200212098_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1200212098_)))))
                          (let () (declare (not safe)) (_g1200212098_)))))
                  (let () (declare (not safe)) (_g1200212098_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12597_)
        (letrec ((_split12600_
                  (lambda (_lst12961_ _mid12963_)
                    (let _lp12965_ ((_i12968_ '0)
                                    (_rest12970_ _lst12961_)
                                    (_left12971_ '()))
                      (if (fx< _i12968_ _mid12963_)
                          (_lp12965_
                           (let () (declare (not safe)) (fx+ _i12968_ '1))
                           (cdr _rest12970_)
                           (let ((__tmp48300 (car _rest12970_)))
                             (declare (not safe))
                             (cons __tmp48300 _left12971_)))
                          (values (reverse _left12971_) _rest12970_))))))
          (let* ((_g1260312631_
                  (lambda (_g1260412627_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1260412627_)))
                 (_g1260212957_
                  (lambda (_g1260412635_)
                    (if (gx#stx-pair? _g1260412635_)
                        (let ((_e1260812638_ (gx#syntax-e _g1260412635_)))
                          (let ((_hd1260912642_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1260812638_)))
                                (_tl1261012645_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1260812638_))))
                            (if (gx#stx-pair? _tl1261012645_)
                                (let ((_e1261112648_
                                       (gx#syntax-e _tl1261012645_)))
                                  (let ((_hd1261212652_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1261112648_)))
                                        (_tl1261312655_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1261112648_))))
                                    (if (gx#stx-pair? _tl1261312655_)
                                        (let ((_e1261412658_
                                               (gx#syntax-e _tl1261312655_)))
                                          (let ((_hd1261512662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1261412658_)))
                                                (_tl1261612665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1261412658_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1261612665_)
                                                (let ((_g48301_
                                                       (gx#syntax-split-splice
                                                        _tl1261612665_
                                                        '0)))
                                                  (begin
                                                    (let ((_g48302_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g48301_)
                         (##vector-length _g48301_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g48302_ 2)))
                  (error "Context expects 2 values" _g48302_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1261712668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48301_
                                                              0)))
                                                          (_tl1261912671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48301_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1261912671_)
                                                          (letrec ((_loop1262012674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1261812678_ _K1262412681_)
                              (if (gx#stx-pair? _hd1261812678_)
                                  (let ((_e1262112684_
                                         (gx#syntax-e _hd1261812678_)))
                                    (let ((_lp-hd1262212688_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1262112684_)))
                                          (_lp-tl1262312691_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1262112684_))))
                                      (_loop1262012674_
                                       _lp-tl1262312691_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1262212688_
                                               _K1262412681_)))))
                                  (let ((_K1262512694_
                                         (reverse _K1262412681_)))
                                    ((lambda (_L12698_ _L12700_ _L12701_)
                                       (let* ((_len12731_
                                               (length (let ((__tmp48303
                                                              (lambda (_g1272212725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1272312728_)
                        (let ()
                          (declare (not safe))
                          (cons _g1272212725_ _g1272312728_)))))
                 (declare (not safe))
                 (foldr1 __tmp48303 '() _L12698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid12734_
                                               (quotient _len12731_ '2))
                                              (_g48304_
                                               (_split12600_
                                                (let ((__tmp48306
                                                       (lambda (_g1273612739_
                                                                _g1273712742_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1273612739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1273712742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp48306
                                                          '()
                                                          _L12698_))
                                                _mid12734_)))
                                         (begin
                                           (let ((_g48305_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48304_)
                                                        (##vector-length
                                                         _g48304_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48305_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48305_)))
                                           (let ((_left12745_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48304_ 0)))
                                                 (_right12747_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48304_
                                                     1))))
                                             (let ()
                                               (let* ((_g1275112792_
                                                       (lambda (_g1275212788_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1275212788_)))
                                                      (_g1275012953_
                                                       (lambda (_g1275212796_)
                                                         (if (gx#stx-pair?
                                                              _g1275212796_)
                                                             (let ((_e1275712799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1275212796_)))
                       (let ((_hd1275812803_
                              (let ()
                                (declare (not safe))
                                (##car _e1275712799_)))
                             (_tl1275912806_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1275712799_))))
                         (if (gx#stx-pair? _tl1275912806_)
                             (let ((_e1276012809_
                                    (gx#syntax-e _tl1275912806_)))
                               (let ((_hd1276112813_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1276012809_)))
                                     (_tl1276212816_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1276012809_))))
                                 (if (gx#stx-pair/null? _hd1276112813_)
                                     (let ((_g48307_
                                            (gx#syntax-split-splice
                                             _hd1276112813_
                                             '0)))
                                       (begin
                                         (let ((_g48308_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48307_)
                                                      (##vector-length
                                                       _g48307_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48308_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48308_)))
                                         (let ((_target1276312819_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48307_ 0)))
                                               (_tl1276512822_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48307_ 1))))
                                           (if (gx#stx-null? _tl1276512822_)
                                               (letrec ((_loop1276612825_
                                                         (lambda (_hd1276412829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1277012832_)
                   (if (gx#stx-pair? _hd1276412829_)
                       (let ((_e1276712835_ (gx#syntax-e _hd1276412829_)))
                         (let ((_lp-hd1276812839_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1276712835_)))
                               (_lp-tl1276912842_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1276712835_))))
                           (_loop1276612825_
                            _lp-tl1276912842_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1276812839_ _K-left1277012832_)))))
                       (let ((_K-left1277112845_ (reverse _K-left1277012832_)))
                         (if (gx#stx-pair? _tl1276212816_)
                             (let ((_e1277212849_
                                    (gx#syntax-e _tl1276212816_)))
                               (let ((_hd1277312853_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1277212849_)))
                                     (_tl1277412856_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1277212849_))))
                                 (if (gx#stx-pair/null? _hd1277312853_)
                                     (let ((_g48309_
                                            (gx#syntax-split-splice
                                             _hd1277312853_
                                             '0)))
                                       (begin
                                         (let ((_g48310_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48309_)
                                                      (##vector-length
                                                       _g48309_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48310_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48310_)))
                                         (let ((_target1277512859_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48309_ 0)))
                                               (_tl1277712862_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48309_ 1))))
                                           (if (gx#stx-null? _tl1277712862_)
                                               (letrec ((_loop1277812865_
                                                         (lambda (_hd1277612869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1278212872_)
                   (if (gx#stx-pair? _hd1277612869_)
                       (let ((_e1277912875_ (gx#syntax-e _hd1277612869_)))
                         (let ((_lp-hd1278012879_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1277912875_)))
                               (_lp-tl1278112882_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1277912875_))))
                           (_loop1277812865_
                            _lp-tl1278112882_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1278012879_ _K-right1278212872_)))))
                       (let ((_K-right1278312885_
                              (reverse _K-right1278212872_)))
                         (if (gx#stx-pair? _tl1277412856_)
                             (let ((_e1278412889_
                                    (gx#syntax-e _tl1277412856_)))
                               (let ((_hd1278512893_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1278412889_)))
                                     (_tl1278612896_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1278412889_))))
                                 (if (gx#stx-null? _tl1278612896_)
                                     ((lambda (_L12899_
                                               _L12901_
                                               _L12902_
                                               _L12903_)
                                        (let ()
                                          (let ((__tmp48330
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp48311
                                                 (let ((__tmp48326
                                                        (let ((__tmp48329
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx<))
                                                              (__tmp48327
                                                               (let ((__tmp48328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L12899_ '()))))
                         (declare (not safe))
                         (cons _L12700_ __tmp48328))))
                  (declare (not safe))
                  (cons __tmp48329 __tmp48327)))
               (__tmp48312
                (let ((__tmp48320
                       (let ((__tmp48325
                              (gx#datum->syntax '#f '~case-dispatch*))
                             (__tmp48321
                              (let ((__tmp48322
                                     (let ((__tmp48323
                                            (let ((__tmp48324
                                                   (lambda (_g1293612941_
                                                            _g1293712944_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1293612941_
                                                             _g1293712944_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp48324
                                                      '()
                                                      _L12902_))))
                                       (declare (not safe))
                                       (cons _L12700_ __tmp48323))))
                                (declare (not safe))
                                (cons _L12701_ __tmp48322))))
                         (declare (not safe))
                         (cons __tmp48325 __tmp48321)))
                      (__tmp48313
                       (let ((__tmp48314
                              (let ((__tmp48319
                                     (gx#datum->syntax '#f '~case-dispatch*))
                                    (__tmp48315
                                     (let ((__tmp48316
                                            (let ((__tmp48317
                                                   (let ((__tmp48318
                                                          (lambda (_g1293812947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1293912950_)
                    (let ()
                      (declare (not safe))
                      (cons _g1293812947_ _g1293912950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp48318
                                                             '()
                                                             _L12901_))))
                                              (declare (not safe))
                                              (cons _L12700_ __tmp48317))))
                                       (declare (not safe))
                                       (cons _L12899_ __tmp48316))))
                                (declare (not safe))
                                (cons __tmp48319 __tmp48315))))
                         (declare (not safe))
                         (cons __tmp48314 '()))))
                  (declare (not safe))
                  (cons __tmp48320 __tmp48313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48326
                                                         __tmp48312))))
                                            (declare (not safe))
                                            (cons __tmp48330 __tmp48311))))
                                      _hd1278512893_
                                      _K-right1278312885_
                                      _K-left1277112845_
                                      _hd1275812803_)
                                     (_g1275112792_ _g1275212796_))))
                             (_g1275112792_ _g1275212796_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1277812865_
                                                  _target1277512859_
                                                  '()))
                                               (_g1275112792_
                                                _g1275212796_)))))
                                     (_g1275112792_ _g1275212796_))))
                             (_g1275112792_ _g1275212796_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1276612825_
                                                  _target1276312819_
                                                  '()))
                                               (_g1275112792_
                                                _g1275212796_)))))
                                     (_g1275112792_ _g1275212796_))))
                             (_g1275112792_ _g1275212796_))))
                     (_g1275112792_ _g1275212796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1275012953_
                                                  (list _mid12734_
                                                        _left12745_
                                                        _right12747_
                                                        (fx+ _mid12734_
                                                             (gx#stx-e
                                                              _L12701_))))))))))
                                     _K1262512694_
                                     _hd1261512662_
                                     _hd1261212652_))))))
                    (_loop1262012674_ _target1261712668_ '()))
                  (_g1260312631_ _g1260412635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1260312631_
                                                 _g1260412635_))))
                                        (_g1260312631_ _g1260412635_))))
                                (_g1260312631_ _g1260412635_))))
                        (_g1260312631_ _g1260412635_)))))
            (_g1260212957_ _stx12597_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12977_)
        (let* ((_g1298113052_
                (lambda (_g1298213048_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1298213048_)))
               (_g1298013341_
                (lambda (_g1298213056_)
                  (if (gx#stx-pair? _g1298213056_)
                      (let ((_e1298913059_ (gx#syntax-e _g1298213056_)))
                        (let ((_hd1299013063_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1298913059_)))
                              (_tl1299113066_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1298913059_))))
                          (if (gx#stx-pair? _tl1299113066_)
                              (let ((_e1299213069_
                                     (gx#syntax-e _tl1299113066_)))
                                (let ((_hd1299313073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1299213069_)))
                                      (_tl1299413076_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1299213069_))))
                                  (if (gx#stx-pair/null? _hd1299313073_)
                                      (let ((_g48331_
                                             (gx#syntax-split-splice
                                              _hd1299313073_
                                              '0)))
                                        (begin
                                          (let ((_g48332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48331_)
                                                       (##vector-length
                                                        _g48331_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48332_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48332_)))
                                          (let ((_target1299513079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48331_ 0)))
                                                (_tl1299713082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48331_ 1))))
                                            (if (gx#stx-null? _tl1299713082_)
                                                (letrec ((_loop1299813085_
                                                          (lambda (_hd1299613089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1300213092_
                           _init1300313094_
                           _var1300413096_)
                    (if (gx#stx-pair? _hd1299613089_)
                        (let ((_e1299913099_ (gx#syntax-e _hd1299613089_)))
                          (let ((_lp-hd1300013103_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1299913099_)))
                                (_lp-tl1300113106_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1299913099_))))
                            (if (gx#stx-pair? _lp-hd1300013103_)
                                (let ((_e1300813109_
                                       (gx#syntax-e _lp-hd1300013103_)))
                                  (let ((_hd1300913113_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1300813109_)))
                                        (_tl1301013116_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1300813109_))))
                                    (if (gx#stx-pair? _tl1301013116_)
                                        (let ((_e1301113119_
                                               (gx#syntax-e _tl1301013116_)))
                                          (let ((_hd1301213123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1301113119_)))
                                                (_tl1301313126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1301113119_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1301313126_)
                                                (let ((_g48333_
                                                       (gx#syntax-split-splice
                                                        _tl1301313126_
                                                        '0)))
                                                  (begin
                                                    (let ((_g48334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g48333_)
                         (##vector-length _g48333_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g48334_ 2)))
                  (error "Context expects 2 values" _g48334_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1301413129_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48333_
                                                              0)))
                                                          (_tl1301613132_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48333_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1301613132_)
                                                          (letrec ((_loop1301713135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1301513139_ _step1302113142_)
                              (if (gx#stx-pair? _hd1301513139_)
                                  (let ((_e1301813145_
                                         (gx#syntax-e _hd1301513139_)))
                                    (let ((_lp-hd1301913149_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1301813145_)))
                                          (_lp-tl1302013152_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1301813145_))))
                                      (_loop1301713135_
                                       _lp-tl1302013152_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1301913149_
                                               _step1302113142_)))))
                                  (let ((_step1302213155_
                                         (reverse _step1302113142_)))
                                    (_loop1299813085_
                                     _lp-tl1300113106_
                                     (let ()
                                       (declare (not safe))
                                       (cons _step1302213155_
                                             _step1300213092_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1301213123_ _init1300313094_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1300913113_
                                             _var1300413096_))))))))
                    (_loop1301713135_ _target1301413129_ '()))
                  (_g1298113052_ _g1298213056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1298113052_
                                                 _g1298213056_))))
                                        (_g1298113052_ _g1298213056_))))
                                (_g1298113052_ _g1298213056_))))
                        (let ((_step1300513159_ (reverse _step1300213092_))
                              (_init1300613162_ (reverse _init1300313094_))
                              (_var1300713164_ (reverse _var1300413096_)))
                          (if (gx#stx-pair? _tl1299413076_)
                              (let ((_e1302313167_
                                     (gx#syntax-e _tl1299413076_)))
                                (let ((_hd1302413171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1302313167_)))
                                      (_tl1302513174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1302313167_))))
                                  (if (gx#stx-pair? _hd1302413171_)
                                      (let ((_e1302613177_
                                             (gx#syntax-e _hd1302413171_)))
                                        (let ((_hd1302713181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1302613177_)))
                                              (_tl1302813184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1302613177_))))
                                          (if (gx#stx-pair/null?
                                               _tl1302813184_)
                                              (let ((_g48335_
                                                     (gx#syntax-split-splice
                                                      _tl1302813184_
                                                      '0)))
                                                (begin
                                                  (let ((_g48336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g48335_)
                                                               (##vector-length
                                                                _g48335_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g48336_ 2)))
                (error "Context expects 2 values" _g48336_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1302913187_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48335_
                                                            0)))
                                                        (_tl1303113190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48335_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1303113190_)
                                                        (letrec ((_loop1303213193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1303013197_ _fini1303613200_)
                            (if (gx#stx-pair? _hd1303013197_)
                                (let ((_e1303313203_
                                       (gx#syntax-e _hd1303013197_)))
                                  (let ((_lp-hd1303413207_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1303313203_)))
                                        (_lp-tl1303513210_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1303313203_))))
                                    (_loop1303213193_
                                     _lp-tl1303513210_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1303413207_
                                             _fini1303613200_)))))
                                (let ((_fini1303713213_
                                       (reverse _fini1303613200_)))
                                  (if (gx#stx-pair/null? _tl1302513174_)
                                      (let ((_g48337_
                                             (gx#syntax-split-splice
                                              _tl1302513174_
                                              '0)))
                                        (begin
                                          (let ((_g48338_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48337_)
                                                       (##vector-length
                                                        _g48337_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48338_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48338_)))
                                          (let ((_target1303813217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48337_ 0)))
                                                (_tl1304013220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48337_ 1))))
                                            (if (gx#stx-null? _tl1304013220_)
                                                (letrec ((_loop1304113223_
                                                          (lambda (_hd1303913227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1304513230_)
                    (if (gx#stx-pair? _hd1303913227_)
                        (let ((_e1304213233_ (gx#syntax-e _hd1303913227_)))
                          (let ((_lp-hd1304313237_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1304213233_)))
                                (_lp-tl1304413240_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1304213233_))))
                            (_loop1304113223_
                             _lp-tl1304413240_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1304313237_ _body1304513230_)))))
                        (let ((_body1304613243_ (reverse _body1304513230_)))
                          ((lambda (_L13247_
                                    _L13249_
                                    _L13250_
                                    _L13251_
                                    _L13252_
                                    _L13253_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (let ((__tmp48339
                                         (lambda (_g1328613289_ _g1328713292_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1328613289_
                                                   _g1328713292_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp48339 '() _L13253_)))
                                 (let ((__tmp48372 (gx#datum->syntax '#f 'let))
                                       (__tmp48340
                                        (let ((__tmp48371
                                               (gx#datum->syntax '#f '$loop))
                                              (__tmp48341
                                               (let ((__tmp48367
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _L13252_
                                                         _L13253_)
                                                        (let ((__tmp48368
                                                               (lambda (_g1329413307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1329513310_
                                _g1329613312_)
                         (let ((__tmp48369
                                (let ((__tmp48370
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1329413307_ '()))))
                                  (declare (not safe))
                                  (cons _g1329513310_ __tmp48370))))
                           (declare (not safe))
                           (cons __tmp48369 _g1329613312_)))))
                  (declare (not safe))
                  (foldr2 __tmp48368 '() _L13252_ _L13253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48342
                                                      (let ((__tmp48343
                                                             (let ((__tmp48366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'if))
                           (__tmp48344
                            (let ((__tmp48345
                                   (let ((__tmp48361
                                          (let ((__tmp48365
                                                 (gx#datum->syntax '#f 'begin))
                                                (__tmp48362
                                                 (let ((__tmp48363
                                                        (let ((__tmp48364
                                                               (lambda (_g1329713315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1329813318_)
                         (let ()
                           (declare (not safe))
                           (cons _g1329713315_ _g1329813318_)))))
                  (declare (not safe))
                  (foldr1 __tmp48364 '() _L13249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '#!void __tmp48363))))
                                            (declare (not safe))
                                            (cons __tmp48365 __tmp48362)))
                                         (__tmp48346
                                          (let ((__tmp48347
                                                 (let ((__tmp48360
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp48348
                                                        (let ((__tmp48359
                                                               (lambda (_g1329913321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1330013324_)
                         (let ()
                           (declare (not safe))
                           (cons _g1329913321_ _g1330013324_))))
                      (__tmp48349
                       (let ((__tmp48350
                              (let ((__tmp48358 (gx#datum->syntax '#f '$loop))
                                    (__tmp48351
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L13251_
                                        _L13253_)
                                       (let ((__tmp48352
                                              (lambda (_g1330113327_
                                                       _g1330213330_
                                                       _g1330313332_)
                                                (let ((__tmp48353
                                                       (let ((__tmp48357
                                                              (gx#datum->syntax
                                                               '#f
                                                               'begin))
                                                             (__tmp48354
                                                              (let ((__tmp48355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48356
                                    (lambda (_g1330413335_ _g1330513338_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1330413335_ _g1330513338_)))))
                               (declare (not safe))
                               (foldr1 __tmp48356 '() _g1330113327_))))
                        (declare (not safe))
                        (cons _g1330213330_ __tmp48355))))
                 (declare (not safe))
                 (cons __tmp48357 __tmp48354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48353
                                                        _g1330313332_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp48352
                                                 '()
                                                 _L13251_
                                                 _L13253_)))))
                                (declare (not safe))
                                (cons __tmp48358 __tmp48351))))
                         (declare (not safe))
                         (cons __tmp48350 '()))))
                  (declare (not safe))
                  (foldr1 __tmp48359 __tmp48349 _L13247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48360
                                                         __tmp48348))))
                                            (declare (not safe))
                                            (cons __tmp48347 '()))))
                                     (declare (not safe))
                                     (cons __tmp48361 __tmp48346))))
                              (declare (not safe))
                              (cons _L13250_ __tmp48345))))
                       (declare (not safe))
                       (cons __tmp48366 __tmp48344))))
                (declare (not safe))
                (cons __tmp48343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48367
                                                       __tmp48342))))
                                          (declare (not safe))
                                          (cons __tmp48371 __tmp48341))))
                                   (declare (not safe))
                                   (cons __tmp48372 __tmp48340))
                                 (_g1298113052_ _g1298213056_)))
                           _body1304613243_
                           _fini1303713213_
                           _hd1302713181_
                           _step1300513159_
                           _init1300613162_
                           _var1300713164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1304113223_
                                                   _target1303813217_
                                                   '()))
                                                (_g1298113052_
                                                 _g1298213056_)))))
                                      (_g1298113052_ _g1298213056_)))))))
                  (_loop1303213193_ _target1302913187_ '()))
                (_g1298113052_ _g1298213056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1298113052_ _g1298213056_))))
                                      (_g1298113052_ _g1298213056_))))
                              (_g1298113052_ _g1298213056_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1299813085_
                                                   _target1299513079_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1298113052_
                                                 _g1298213056_)))))
                                      (_g1298113052_ _g1298213056_))))
                              (_g1298113052_ _g1298213056_))))
                      (_g1298113052_ _g1298213056_)))))
          (_g1298013341_ _$stx12977_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13349_)
        (let* ((_g1335313376_
                (lambda (_g1335413372_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1335413372_)))
               (_g1335213447_
                (lambda (_g1335413380_)
                  (if (gx#stx-pair? _g1335413380_)
                      (let ((_e1335913383_ (gx#syntax-e _g1335413380_)))
                        (let ((_hd1336013387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1335913383_)))
                              (_tl1336113390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1335913383_))))
                          (if (gx#stx-pair? _tl1336113390_)
                              (let ((_e1336213393_
                                     (gx#syntax-e _tl1336113390_)))
                                (let ((_hd1336313397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1336213393_)))
                                      (_tl1336413400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1336213393_))))
                                  (if (gx#stx-pair? _tl1336413400_)
                                      (let ((_e1336513403_
                                             (gx#syntax-e _tl1336413400_)))
                                        (let ((_hd1336613407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1336513403_)))
                                              (_tl1336713410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1336513403_))))
                                          (if (gx#stx-pair? _hd1336613407_)
                                              (let ((_e1336813413_
                                                     (gx#syntax-e
                                                      _hd1336613407_)))
                                                (let ((_hd1336913417_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1336813413_)))
                                                      (_tl1337013420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1336813413_))))
                                                  ((lambda (_L13423_
                                                            _L13425_
                                                            _L13426_
                                                            _L13427_)
                                                     (let ((__tmp48379
                                                            (gx#datum->syntax
                                                             '#f
                                                             'do))
                                                           (__tmp48373
                                                            (let ((__tmp48374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48375
                                  (let ((__tmp48376
                                         (let ((__tmp48378
                                                (gx#datum->syntax '#f 'not))
                                               (__tmp48377
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13426_ '()))))
                                           (declare (not safe))
                                           (cons __tmp48378 __tmp48377))))
                                    (declare (not safe))
                                    (cons __tmp48376 _L13425_))))
                             (declare (not safe))
                             (cons __tmp48375 _L13423_))))
                      (declare (not safe))
                      (cons _L13427_ __tmp48374))))
               (declare (not safe))
               (cons __tmp48379 __tmp48373)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1336713410_
                                                   _tl1337013420_
                                                   _hd1336913417_
                                                   _hd1336313397_)))
                                              (_g1335313376_ _g1335413380_))))
                                      (_g1335313376_ _g1335413380_))))
                              (_g1335313376_ _g1335413380_))))
                      (_g1335313376_ _g1335413380_)))))
          (_g1335213447_ _$stx13349_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13451_)
        (let* ((___stx4300043001_ _$stx13451_)
               (_g1345613487_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4300043001_))))
          (let ((___kont4300343004_ (lambda (_L13599_) _L13599_))
                (___kont4300543006_
                 (lambda (_L13544_ _L13546_)
                   (let ((__tmp48394 (gx#datum->syntax '#f 'let))
                         (__tmp48380
                          (let ((__tmp48391
                                 (let ((__tmp48393 (gx#datum->syntax '#f '$r))
                                       (__tmp48392
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13546_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48393 __tmp48392)))
                                (__tmp48381
                                 (let ((__tmp48384
                                        (let ((__tmp48390
                                               (gx#datum->syntax
                                                '#f
                                                '%#expression))
                                              (__tmp48385
                                               (let ((__tmp48386
                                                      (let ((__tmp48389
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp48387
                                                             (let ((__tmp48388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1356313566_ _g1356413569_)
                              (let ()
                                (declare (not safe))
                                (cons _g1356313566_ _g1356413569_)))))
                       (declare (not safe))
                       (foldr1 __tmp48388 '() _L13544_))))
                (declare (not safe))
                (cons __tmp48389 __tmp48387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48386 '()))))
                                          (declare (not safe))
                                          (cons __tmp48390 __tmp48385)))
                                       (__tmp48382
                                        (let ((__tmp48383
                                               (gx#datum->syntax '#f '$r)))
                                          (declare (not safe))
                                          (cons __tmp48383 '()))))
                                   (declare (not safe))
                                   (cons __tmp48384 __tmp48382))))
                            (declare (not safe))
                            (cons __tmp48391 __tmp48381))))
                     (declare (not safe))
                     (cons __tmp48394 __tmp48380)))))
            (let ((___match4304343044_
                   (lambda (_e1346713494_
                            _hd1346813498_
                            _tl1346913501_
                            _e1347013504_
                            _hd1347113508_
                            _tl1347213511_
                            ___splice4300743008_
                            _target1347313514_
                            _tl1347513517_)
                     (letrec ((_loop1347613520_
                               (lambda (_hd1347413524_ _rest1348013527_)
                                 (if (gx#stx-pair? _hd1347413524_)
                                     (let ((_e1347713530_
                                            (gx#syntax-e _hd1347413524_)))
                                       (let ((_lp-tl1347913537_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1347713530_)))
                                             (_lp-hd1347813534_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1347713530_))))
                                         (_loop1347613520_
                                          _lp-tl1347913537_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1347813534_
                                                  _rest1348013527_)))))
                                     (let ((_rest1348113540_
                                            (reverse _rest1348013527_)))
                                       (___kont4300543006_
                                        _rest1348113540_
                                        _hd1347113508_))))))
                       (_loop1347613520_ _target1347313514_ '())))))
              (if (gx#stx-pair? ___stx4300043001_)
                  (let ((_e1345913579_ (gx#syntax-e ___stx4300043001_)))
                    (let ((_tl1346113586_
                           (let () (declare (not safe)) (##cdr _e1345913579_)))
                          (_hd1346013583_
                           (let ()
                             (declare (not safe))
                             (##car _e1345913579_))))
                      (if (gx#stx-pair? _tl1346113586_)
                          (let ((_e1346213589_ (gx#syntax-e _tl1346113586_)))
                            (let ((_tl1346413596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1346213589_)))
                                  (_hd1346313593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1346213589_))))
                              (if (gx#stx-null? _tl1346413596_)
                                  (___kont4300343004_ _hd1346313593_)
                                  (if (gx#stx-pair/null? _tl1346413596_)
                                      (let ((___splice4300743008_
                                             (gx#syntax-split-splice
                                              _tl1346413596_
                                              '0)))
                                        (let ((_tl1347513517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4300743008_
                                                  '1)))
                                              (_target1347313514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4300743008_
                                                  '0))))
                                          (if (gx#stx-null? _tl1347513517_)
                                              (___match4304343044_
                                               _e1345913579_
                                               _hd1346013583_
                                               _tl1346113586_
                                               _e1346213589_
                                               _hd1346313593_
                                               _tl1346413596_
                                               ___splice4300743008_
                                               _target1347313514_
                                               _tl1347513517_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1345613487_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1345613487_))))))
                          (let () (declare (not safe)) (_g1345613487_)))))
                  (let () (declare (not safe)) (_g1345613487_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13617_)
        (let* ((___stx4304643047_ _$stx13617_)
               (_g1362313676_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4304643047_))))
          (let ((___kont4304943050_
                 (lambda (_L13878_ _L13880_)
                   (let ((__tmp48400 (gx#datum->syntax '#f 'letrec))
                         (__tmp48395
                          (let ((__tmp48397
                                 (let ((__tmp48398
                                        (let ((__tmp48399
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L13878_ '()))))
                                          (declare (not safe))
                                          (cons _L13880_ __tmp48399))))
                                   (declare (not safe))
                                   (cons __tmp48398 '())))
                                (__tmp48396
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13880_ '()))))
                            (declare (not safe))
                            (cons __tmp48397 __tmp48396))))
                     (declare (not safe))
                     (cons __tmp48400 __tmp48395))))
                (___kont4305143052_
                 (lambda (_L13822_ _L13824_)
                   (let ((__tmp48408 (gx#datum->syntax '#f 'letrec-values))
                         (__tmp48401
                          (let ((__tmp48405
                                 (let ((__tmp48406
                                        (let ((__tmp48407
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L13822_ '()))))
                                          (declare (not safe))
                                          (cons _L13824_ __tmp48407))))
                                   (declare (not safe))
                                   (cons __tmp48406 '())))
                                (__tmp48402
                                 (let ((__tmp48403
                                        (let ((__tmp48404
                                               (gx#datum->syntax '#f 'values)))
                                          (declare (not safe))
                                          (cons __tmp48404 _L13824_))))
                                   (declare (not safe))
                                   (cons __tmp48403 '()))))
                            (declare (not safe))
                            (cons __tmp48405 __tmp48402))))
                     (declare (not safe))
                     (cons __tmp48408 __tmp48401))))
                (___kont4305343054_
                 (lambda (_L13743_ _L13745_ _L13746_)
                   (let ((__tmp48419 (gx#datum->syntax '#f 'letrec))
                         (__tmp48409
                          (let ((__tmp48411
                                 (let ((__tmp48412
                                        (let ((__tmp48413
                                               (let ((__tmp48414
                                                      (let ((__tmp48418
                                                             (gx#datum->syntax
                                                              '#f
                                                              'lambda))
                                                            (__tmp48415
                                                             (let ((__tmp48416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48417
                                   (lambda (_g1376613769_ _g1376713772_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1376613769_ _g1376713772_)))))
                              (declare (not safe))
                              (foldr1 __tmp48417 '() _L13743_))))
                       (declare (not safe))
                       (cons _L13745_ __tmp48416))))
                (declare (not safe))
                (cons __tmp48418 __tmp48415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48414 '()))))
                                          (declare (not safe))
                                          (cons _L13746_ __tmp48413))))
                                   (declare (not safe))
                                   (cons __tmp48412 '())))
                                (__tmp48410
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13746_ '()))))
                            (declare (not safe))
                            (cons __tmp48411 __tmp48410))))
                     (declare (not safe))
                     (cons __tmp48419 __tmp48409)))))
            (let* ((___match4313343134_
                    (lambda (_e1365313683_
                             _hd1365413687_
                             _tl1365513690_
                             _e1365613693_
                             _hd1365713697_
                             _tl1365813700_
                             _e1365913703_
                             _hd1366013707_
                             _tl1366113710_
                             ___splice4305543056_
                             _target1366213713_
                             _tl1366413716_)
                      (letrec ((_loop1366513719_
                                (lambda (_hd1366313723_ _body1366913726_)
                                  (if (gx#stx-pair? _hd1366313723_)
                                      (let ((_e1366613729_
                                             (gx#syntax-e _hd1366313723_)))
                                        (let ((_lp-tl1366813736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1366613729_)))
                                              (_lp-hd1366713733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1366613729_))))
                                          (_loop1366513719_
                                           _lp-tl1366813736_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1366713733_
                                                   _body1366913726_)))))
                                      (let ((_body1367013739_
                                             (reverse _body1366913726_)))
                                        (let ((_L13743_ _body1367013739_)
                                              (_L13745_ _tl1366113710_)
                                              (_L13746_ _hd1366013707_))
                                          (if (gx#identifier? _L13746_)
                                              (___kont4305343054_
                                               _L13743_
                                               _L13745_
                                               _L13746_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1362313676_)))))))))
                        (_loop1366513719_ _target1366213713_ '()))))
                   (___match4310743108_
                    (lambda (_e1363813782_
                             _hd1363913786_
                             _tl1364013789_
                             _e1364113792_
                             _hd1364213796_
                             _tl1364313799_
                             _e1364413802_
                             _hd1364513806_
                             _tl1364613809_
                             _e1364713812_
                             _hd1364813816_
                             _tl1364913819_)
                      (let ((_L13822_ _hd1364813816_)
                            (_L13824_ _tl1364613809_))
                        (if (gx#identifier-list? _L13824_)
                            (___kont4305143052_ _L13822_ _L13824_)
                            (if (gx#stx-pair/null? _tl1364313799_)
                                (let ((___splice4305543056_
                                       (gx#syntax-split-splice
                                        _tl1364313799_
                                        '0)))
                                  (let ((_tl1366413716_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4305543056_
                                            '1)))
                                        (_target1366213713_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4305543056_
                                            '0))))
                                    (if (gx#stx-null? _tl1366413716_)
                                        (___match4313343134_
                                         _e1363813782_
                                         _hd1363913786_
                                         _tl1364013789_
                                         _e1364113792_
                                         _hd1364213796_
                                         _tl1364313799_
                                         _e1364413802_
                                         _hd1364513806_
                                         _tl1364613809_
                                         ___splice4305543056_
                                         _target1366213713_
                                         _tl1366413716_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1362313676_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1362313676_)))))))
                   (___match4307743078_
                    (lambda (_e1362713848_
                             _hd1362813852_
                             _tl1362913855_
                             _e1363013858_
                             _hd1363113862_
                             _tl1363213865_
                             _e1363313868_
                             _hd1363413872_
                             _tl1363513875_)
                      (let ((_L13878_ _hd1363413872_)
                            (_L13880_ _hd1363113862_))
                        (if (gx#identifier? _L13880_)
                            (___kont4304943050_ _L13878_ _L13880_)
                            (if (gx#stx-pair? _hd1363113862_)
                                (let ((_e1364413802_
                                       (gx#syntax-e _hd1363113862_)))
                                  (let ((_tl1364613809_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1364413802_)))
                                        (_hd1364513806_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1364413802_))))
                                    (if (gx#identifier? _hd1364513806_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g48420_|
                                             _hd1364513806_)
                                            (___match4310743108_
                                             _e1362713848_
                                             _hd1362813852_
                                             _tl1362913855_
                                             _e1363013858_
                                             _hd1363113862_
                                             _tl1363213865_
                                             _e1364413802_
                                             _hd1364513806_
                                             _tl1364613809_
                                             _e1363313868_
                                             _hd1363413872_
                                             _tl1363513875_)
                                            (if (gx#stx-pair/null?
                                                 _tl1363213865_)
                                                (let ((___splice4305543056_
                                                       (gx#syntax-split-splice
                                                        _tl1363213865_
                                                        '0)))
                                                  (let ((_tl1366413716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4305543056_
                                                            '1)))
                                                        (_target1366213713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4305543056_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1366413716_)
                                                        (___match4313343134_
                                                         _e1362713848_
                                                         _hd1362813852_
                                                         _tl1362913855_
                                                         _e1363013858_
                                                         _hd1363113862_
                                                         _tl1363213865_
                                                         _e1364413802_
                                                         _hd1364513806_
                                                         _tl1364613809_
                                                         ___splice4305543056_
                                                         _target1366213713_
                                                         _tl1366413716_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1362313676_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1362313676_))))
                                        (if (gx#stx-pair/null? _tl1363213865_)
                                            (let ((___splice4305543056_
                                                   (gx#syntax-split-splice
                                                    _tl1363213865_
                                                    '0)))
                                              (let ((_tl1366413716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4305543056_
                                                        '1)))
                                                    (_target1366213713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4305543056_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1366413716_)
                                                    (___match4313343134_
                                                     _e1362713848_
                                                     _hd1362813852_
                                                     _tl1362913855_
                                                     _e1363013858_
                                                     _hd1363113862_
                                                     _tl1363213865_
                                                     _e1364413802_
                                                     _hd1364513806_
                                                     _tl1364613809_
                                                     ___splice4305543056_
                                                     _target1366213713_
                                                     _tl1366413716_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1362313676_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1362313676_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1362313676_))))))))
              (if (gx#stx-pair? ___stx4304643047_)
                  (let ((_e1362713848_ (gx#syntax-e ___stx4304643047_)))
                    (let ((_tl1362913855_
                           (let () (declare (not safe)) (##cdr _e1362713848_)))
                          (_hd1362813852_
                           (let ()
                             (declare (not safe))
                             (##car _e1362713848_))))
                      (if (gx#stx-pair? _tl1362913855_)
                          (let ((_e1363013858_ (gx#syntax-e _tl1362913855_)))
                            (let ((_tl1363213865_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1363013858_)))
                                  (_hd1363113862_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1363013858_))))
                              (if (gx#stx-pair? _tl1363213865_)
                                  (let ((_e1363313868_
                                         (gx#syntax-e _tl1363213865_)))
                                    (let ((_tl1363513875_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1363313868_)))
                                          (_hd1363413872_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1363313868_))))
                                      (if (gx#stx-null? _tl1363513875_)
                                          (___match4307743078_
                                           _e1362713848_
                                           _hd1362813852_
                                           _tl1362913855_
                                           _e1363013858_
                                           _hd1363113862_
                                           _tl1363213865_
                                           _e1363313868_
                                           _hd1363413872_
                                           _tl1363513875_)
                                          (if (gx#stx-pair? _hd1363113862_)
                                              (let ((_e1364413802_
                                                     (gx#syntax-e
                                                      _hd1363113862_)))
                                                (let ((_tl1364613809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1364413802_)))
                                                      (_hd1364513806_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1364413802_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1363213865_)
                                                      (let ((___splice4305543056_
                                                             (gx#syntax-split-splice
                                                              _tl1363213865_
                                                              '0)))
                                                        (let ((_tl1366413716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4305543056_ '1)))
                      (_target1366213713_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4305543056_ '0))))
                  (if (gx#stx-null? _tl1366413716_)
                      (___match4313343134_
                       _e1362713848_
                       _hd1362813852_
                       _tl1362913855_
                       _e1363013858_
                       _hd1363113862_
                       _tl1363213865_
                       _e1364413802_
                       _hd1364513806_
                       _tl1364613809_
                       ___splice4305543056_
                       _target1366213713_
                       _tl1366413716_)
                      (let () (declare (not safe)) (_g1362313676_)))))
              (let () (declare (not safe)) (_g1362313676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1362313676_))))))
                                  (if (gx#stx-pair? _hd1363113862_)
                                      (let ((_e1364413802_
                                             (gx#syntax-e _hd1363113862_)))
                                        (let ((_tl1364613809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1364413802_)))
                                              (_hd1364513806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1364413802_))))
                                          (if (gx#stx-pair/null?
                                               _tl1363213865_)
                                              (let ((___splice4305543056_
                                                     (gx#syntax-split-splice
                                                      _tl1363213865_
                                                      '0)))
                                                (let ((_tl1366413716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4305543056_
                                                          '1)))
                                                      (_target1366213713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4305543056_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1366413716_)
                                                      (___match4313343134_
                                                       _e1362713848_
                                                       _hd1362813852_
                                                       _tl1362913855_
                                                       _e1363013858_
                                                       _hd1363113862_
                                                       _tl1363213865_
                                                       _e1364413802_
                                                       _hd1364513806_
                                                       _tl1364613809_
                                                       ___splice4305543056_
                                                       _target1366213713_
                                                       _tl1366413716_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1362313676_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1362313676_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1362313676_))))))
                          (let () (declare (not safe)) (_g1362313676_)))))
                  (let () (declare (not safe)) (_g1362313676_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13900_)
        (letrec ((_let-bind?13903_
                  (lambda (_x14826_)
                    (let* ((___stx4313643137_ _x14826_)
                           (_g1483114850_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4313643137_))))
                      (let ((___kont4313943140_
                             (lambda (_L14918_ _L14920_)
                               (_let-head?13906_ _L14920_)))
                            (___kont4314143142_ (lambda (_L14878_) '#t))
                            (___kont4314343144_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx4313643137_)
                            (let ((_e1483514898_
                                   (gx#syntax-e ___stx4313643137_)))
                              (let ((_tl1483714905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1483514898_)))
                                    (_hd1483614902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1483514898_))))
                                (if (gx#stx-pair? _tl1483714905_)
                                    (let ((_e1483814908_
                                           (gx#syntax-e _tl1483714905_)))
                                      (let ((_tl1484014915_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1483814908_)))
                                            (_hd1483914912_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1483814908_))))
                                        (if (gx#stx-null? _tl1484014915_)
                                            (___kont4313943140_
                                             _hd1483914912_
                                             _hd1483614902_)
                                            (___kont4314343144_))))
                                    (if (gx#stx-null? _tl1483714905_)
                                        (___kont4314143142_ _hd1483614902_)
                                        (___kont4314343144_)))))
                            (___kont4314343144_))))))
                 (_let-bind13905_
                  (lambda (_x14728_)
                    (let* ((___stx4317043171_ _x14728_)
                           (_g1473214751_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4317043171_))))
                      (let ((___kont4317343174_
                             (lambda (_L14807_ _L14809_) _x14728_))
                            (___kont4317543176_
                             (lambda (_L14768_)
                               (let ((__tmp48422 (gx#datum->syntax '#f '_))
                                     (__tmp48421
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14768_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48422 __tmp48421)))))
                        (if (gx#stx-pair? ___stx4317043171_)
                            (let ((_e1473614787_
                                   (gx#syntax-e ___stx4317043171_)))
                              (let ((_tl1473814794_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1473614787_)))
                                    (_hd1473714791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1473614787_))))
                                (if (gx#stx-pair? _tl1473814794_)
                                    (let ((_e1473914797_
                                           (gx#syntax-e _tl1473814794_)))
                                      (let ((_tl1474114804_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1473914797_)))
                                            (_hd1474014801_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1473914797_))))
                                        (if (gx#stx-null? _tl1474114804_)
                                            (___kont4317343174_
                                             _hd1474014801_
                                             _hd1473714791_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1473214751_)))))
                                    (if (gx#stx-null? _tl1473814794_)
                                        (___kont4317543176_ _hd1473714791_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1473214751_))))))
                            (let () (declare (not safe)) (_g1473214751_)))))))
                 (_let-head?13906_
                  (lambda (_x14668_)
                    (let* ((___stx4320243203_ _x14668_)
                           (_g1467214683_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4320243203_))))
                      (let ((___kont4320543206_
                             (lambda (_L14711_)
                               (gx#stx-andmap gx#identifier? _L14711_)))
                            (___kont4320743208_
                             (lambda () (gx#identifier? _x14668_))))
                        (if (gx#stx-pair? ___stx4320243203_)
                            (let ((_e1467514701_
                                   (gx#syntax-e ___stx4320243203_)))
                              (let ((_tl1467714708_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1467514701_)))
                                    (_hd1467614705_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1467514701_))))
                                (if (gx#identifier? _hd1467614705_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g48423_|
                                         _hd1467614705_)
                                        (___kont4320543206_ _tl1467714708_)
                                        (___kont4320743208_))
                                    (___kont4320743208_))))
                            (___kont4320743208_))))))
                 (_let-head13907_
                  (lambda (_x14608_)
                    (let* ((___stx4322243223_ _x14608_)
                           (_g1461214623_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4322243223_))))
                      (let ((___kont4322543226_ (lambda (_L14651_) _L14651_))
                            (___kont4322743228_ (lambda () (list _x14608_))))
                        (if (gx#stx-pair? ___stx4322243223_)
                            (let ((_e1461514641_
                                   (gx#syntax-e ___stx4322243223_)))
                              (let ((_tl1461714648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1461514641_)))
                                    (_hd1461614645_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1461514641_))))
                                (if (gx#identifier? _hd1461614645_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g48424_|
                                         _hd1461614645_)
                                        (___kont4322543226_ _tl1461714648_)
                                        (___kont4322743228_))
                                    (___kont4322743228_))))
                            (___kont4322743228_)))))))
          (let* ((___stx4324243243_ _stx13900_)
                 (_g1391113983_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4324243243_))))
            (let ((___kont4324543246_
                   (lambda (_L14581_ _L14583_ _L14584_ _L14585_)
                     (let ((__tmp48425
                            (let ((__tmp48426
                                   (let ((__tmp48427
                                          (let ((__tmp48428
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L14583_ '()))))
                                            (declare (not safe))
                                            (cons _L14584_ __tmp48428))))
                                     (declare (not safe))
                                     (cons __tmp48427 '()))))
                              (declare (not safe))
                              (cons __tmp48426 _L14581_))))
                       (declare (not safe))
                       (cons _L14585_ __tmp48425))))
                  (___kont4324743248_
                   (lambda (_L14503_ _L14505_)
                     (let ((__tmp48436 (gx#datum->syntax '#f 'and))
                           (__tmp48429
                            (let ((__tmp48430
                                   (let ((__tmp48431
                                          (let ((__tmp48435
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp48432
                                                 (let ((__tmp48433
                                                        (let ((__tmp48434
                                                               (lambda (_g1452514528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1452614531_)
                         (let ()
                           (declare (not safe))
                           (cons _g1452514528_ _g1452614531_)))))
                  (declare (not safe))
                  (foldr1 __tmp48434 '() _L14503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp48433))))
                                            (declare (not safe))
                                            (cons __tmp48435 __tmp48432))))
                                     (declare (not safe))
                                     (cons __tmp48431 '()))))
                              (declare (not safe))
                              (cons _L14505_ __tmp48430))))
                       (declare (not safe))
                       (cons __tmp48436 __tmp48429))))
                  (___kont4325143252_
                   (lambda (_L14070_ _L14072_)
                     (let* ((_g1410314129_
                             (lambda (_g1410414125_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1410414125_)))
                            (_g1410214414_
                             (lambda (_g1410414133_)
                               (if (gx#stx-pair/null? _g1410414133_)
                                   (let ((_g48437_
                                          (gx#syntax-split-splice
                                           _g1410414133_
                                           '0)))
                                     (begin
                                       (let ((_g48438_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g48437_)
                                                    (##vector-length _g48437_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g48438_ 2)))
                                             (error "Context expects 2 values"
                                                    _g48438_)))
                                       (let ((_target1410714136_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48437_ 0)))
                                             (_tl1410914139_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48437_ 1))))
                                         (if (gx#stx-null? _tl1410914139_)
                                             (letrec ((_loop1411014142_
                                                       (lambda (_hd1410814146_
                                                                _e1411414149_
                                                                _hd1411514151_)
                                                         (if (gx#stx-pair?
                                                              _hd1410814146_)
                                                             (let ((_e1411114154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1410814146_)))
                       (let ((_lp-hd1411214158_
                              (let ()
                                (declare (not safe))
                                (##car _e1411114154_)))
                             (_lp-tl1411314161_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1411114154_))))
                         (if (gx#stx-pair? _lp-hd1411214158_)
                             (let ((_e1411814164_
                                    (gx#syntax-e _lp-hd1411214158_)))
                               (let ((_hd1411914168_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1411814164_)))
                                     (_tl1412014171_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1411814164_))))
                                 (if (gx#stx-pair? _tl1412014171_)
                                     (let ((_e1412114174_
                                            (gx#syntax-e _tl1412014171_)))
                                       (let ((_hd1412214178_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1412114174_)))
                                             (_tl1412314181_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1412114174_))))
                                         (if (gx#stx-null? _tl1412314181_)
                                             (_loop1411014142_
                                              _lp-tl1411314161_
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1412214178_
                                                      _e1411414149_))
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1411914168_
                                                      _hd1411514151_)))
                                             (_g1410314129_ _g1410414133_))))
                                     (_g1410314129_ _g1410414133_))))
                             (_g1410314129_ _g1410414133_))))
                     (let ((_e1411614184_ (reverse _e1411414149_))
                           (_hd1411714187_ (reverse _hd1411514151_)))
                       ((lambda (_L14190_ _L14192_)
                          (let ()
                            (let* ((_g1420814225_
                                    (lambda (_g1420914221_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1420914221_)))
                                   (_g1420714402_
                                    (lambda (_g1420914229_)
                                      (if (gx#stx-pair/null? _g1420914229_)
                                          (let ((_g48439_
                                                 (gx#syntax-split-splice
                                                  _g1420914229_
                                                  '0)))
                                            (begin
                                              (let ((_g48440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g48439_)
                                                           (##vector-length
                                                            _g48439_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g48440_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g48440_)))
                                              (let ((_target1421114232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48439_
                                                        0)))
                                                    (_tl1421314235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48439_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1421314235_)
                                                    (letrec ((_loop1421414238_
                                                              (lambda (_hd1421214242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1421814245_)
                        (if (gx#stx-pair? _hd1421214242_)
                            (let ((_e1421514248_ (gx#syntax-e _hd1421214242_)))
                              (let ((_lp-hd1421614252_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1421514248_)))
                                    (_lp-tl1421714255_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1421514248_))))
                                (_loop1421414238_
                                 _lp-tl1421714255_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1421614252_ _$e1421814245_)))))
                            (let ((_$e1421914258_ (reverse _$e1421814245_)))
                              ((lambda (_L14262_)
                                 (let ()
                                   (let* ((_g1427914296_
                                           (lambda (_g1428014292_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1428014292_)))
                                          (_g1427814390_
                                           (lambda (_g1428014300_)
                                             (if (gx#stx-pair/null?
                                                  _g1428014300_)
                                                 (let ((_g48441_
                                                        (gx#syntax-split-splice
                                                         _g1428014300_
                                                         '0)))
                                                   (begin
                                                     (let ((_g48442_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g48441_)
                          (##vector-length _g48441_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g48442_ 2)))
                   (error "Context expects 2 values" _g48442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1428214303_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48441_
                                                               0)))
                                                           (_tl1428414306_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48441_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1428414306_)
                                                           (letrec ((_loop1428514309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1428314313_ _hd-bind1428914316_)
                               (if (gx#stx-pair? _hd1428314313_)
                                   (let ((_e1428614319_
                                          (gx#syntax-e _hd1428314313_)))
                                     (let ((_lp-hd1428714323_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1428614319_)))
                                           (_lp-tl1428814326_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1428614319_))))
                                       (_loop1428514309_
                                        _lp-tl1428814326_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd1428714323_
                                                _hd-bind1428914316_)))))
                                   (let ((_hd-bind1429014329_
                                          (reverse _hd-bind1428914316_)))
                                     ((lambda (_L14333_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp48464
                                                   (gx#datum->syntax
                                                    '#f
                                                    'let-values))
                                                  (__tmp48443
                                                   (let ((__tmp48459
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _L14190_
                                                             _L14262_)
                                                            (let ((__tmp48460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1435114362_ _g1435214365_ _g1435314367_)
                             (let ((__tmp48461
                                    (let ((__tmp48463
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1435214365_ '())))
                                          (__tmp48462
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1435114362_ '()))))
                                      (declare (not safe))
                                      (cons __tmp48463 __tmp48462))))
                               (declare (not safe))
                               (cons __tmp48461 _g1435314367_)))))
                      (declare (not safe))
                      (foldr2 __tmp48460 '() _L14190_ _L14262_))))
                 (__tmp48444
                  (let ((__tmp48445
                         (let ((__tmp48458 (gx#datum->syntax '#f 'and))
                               (__tmp48446
                                (let ((__tmp48457
                                       (lambda (_g1435414370_ _g1435514373_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1435414370_
                                                 _g1435514373_))))
                                      (__tmp48447
                                       (let ((__tmp48448
                                              (let ((__tmp48456
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let-values))
                                                    (__tmp48449
                                                     (let ((__tmp48452
                                                            (begin
                                                              (gx#syntax-check-splice-targets
                                                               _L14262_
                                                               _L14333_)
                                                              (let ((__tmp48453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1435614376_
                                      _g1435714379_
                                      _g1435814381_)
                               (let ((__tmp48454
                                      (let ((__tmp48455
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1435614376_ '()))))
                                        (declare (not safe))
                                        (cons _g1435714379_ __tmp48455))))
                                 (declare (not safe))
                                 (cons __tmp48454 _g1435814381_)))))
                        (declare (not safe))
                        (foldr2 __tmp48453 '() _L14262_ _L14333_))))
                   (__tmp48450
                    (let ((__tmp48451
                           (lambda (_g1435914384_ _g1436014387_)
                             (let ()
                               (declare (not safe))
                               (cons _g1435914384_ _g1436014387_)))))
                      (declare (not safe))
                      (foldr1 __tmp48451 '() _L14070_))))
               (declare (not safe))
               (cons __tmp48452 __tmp48450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48456 __tmp48449))))
                                         (declare (not safe))
                                         (cons __tmp48448 '()))))
                                  (declare (not safe))
                                  (foldr1 __tmp48457 __tmp48447 _L14262_))))
                           (declare (not safe))
                           (cons __tmp48458 __tmp48446))))
                    (declare (not safe))
                    (cons __tmp48445 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48459
                                                           __tmp48444))))
                                              (declare (not safe))
                                              (cons __tmp48464 __tmp48443)))))
                                      _hd-bind1429014329_))))))
                     (_loop1428514309_ _target1428214303_ '()))
                   (_g1427914296_ _g1428014300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1427914296_
                                                  _g1428014300_)))))
                                     (_g1427814390_
                                      (gx#stx-map
                                       _let-head13907_
                                       (let ((__tmp48465
                                              (lambda (_g1439314396_
                                                       _g1439414399_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1439314396_
                                                        _g1439414399_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48465 '() _L14192_)))))))
                               _$e1421914258_))))))
              (_loop1421414238_ _target1421114232_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1420814225_
                                                     _g1420914229_)))))
                                          (_g1420814225_ _g1420914229_)))))
                              (_g1420714402_
                               (gx#gentemps
                                (let ((__tmp48466
                                       (lambda (_g1440514408_ _g1440614411_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1440514408_
                                                 _g1440614411_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp48466 '() _L14192_)))))))
                        _e1411614184_
                        _hd1411714187_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1411014142_
                                                _target1410714136_
                                                '()
                                                '()))
                                             (_g1410314129_ _g1410414133_)))))
                                   (_g1410314129_ _g1410414133_)))))
                       (_g1410214414_
                        (gx#stx-map
                         _let-bind13905_
                         (let ((__tmp48467
                                (lambda (_g1441714420_ _g1441814423_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1441714420_ _g1441814423_)))))
                           (declare (not safe))
                           (foldr1 __tmp48467 '() _L14072_))))))))
              (let* ((___match4333943340_
                      (lambda (_e1395413990_
                               _hd1395513994_
                               _tl1395613997_
                               _e1395714000_
                               _hd1395814004_
                               _tl1395914007_
                               ___splice4325343254_
                               _target1396014010_
                               _tl1396214013_)
                        (letrec ((_loop1396314016_
                                  (lambda (_hd1396114020_ _bind1396714023_)
                                    (if (gx#stx-pair? _hd1396114020_)
                                        (let ((_e1396414026_
                                               (gx#syntax-e _hd1396114020_)))
                                          (let ((_lp-tl1396614033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1396414026_)))
                                                (_lp-hd1396514030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1396414026_))))
                                            (_loop1396314016_
                                             _lp-tl1396614033_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1396514030_
                                                     _bind1396714023_)))))
                                        (let ((_bind1396814036_
                                               (reverse _bind1396714023_)))
                                          (if (gx#stx-pair/null?
                                               _tl1395914007_)
                                              (let ((___splice4325543256_
                                                     (gx#syntax-split-splice
                                                      _tl1395914007_
                                                      '0)))
                                                (let ((_tl1397114043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4325543256_
                                                          '1)))
                                                      (_target1396914040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4325543256_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1397114043_)
                                                      (letrec ((_loop1397214046_
                                                                (lambda (_hd1397014050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1397614053_)
                          (if (gx#stx-pair? _hd1397014050_)
                              (let ((_e1397314056_
                                     (gx#syntax-e _hd1397014050_)))
                                (let ((_lp-tl1397514063_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1397314056_)))
                                      (_lp-hd1397414060_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1397314056_))))
                                  (_loop1397214046_
                                   _lp-tl1397514063_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd1397414060_
                                           _body1397614053_)))))
                              (let ((_body1397714066_
                                     (reverse _body1397614053_)))
                                (let ((_L14070_ _body1397714066_)
                                      (_L14072_ _bind1396814036_))
                                  (if (gx#stx-andmap
                                       _let-bind?13903_
                                       (let ((__tmp48468
                                              (lambda (_g1409414097_
                                                       _g1409514100_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1409414097_
                                                        _g1409514100_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48468 '() _L14072_)))
                                      (___kont4325143252_ _L14070_ _L14072_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1391113983_)))))))))
                (_loop1397214046_ _target1396914040_ '()))
              (let () (declare (not safe)) (_g1391113983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1391113983_))))))))
                          (_loop1396314016_ _target1396014010_ '()))))
                     (___match4331943320_
                      (lambda (_e1393114433_
                               _hd1393214437_
                               _tl1393314440_
                               _e1393414443_
                               _hd1393514447_
                               _tl1393614450_
                               _e1393714453_
                               _hd1393814457_
                               _tl1393914460_
                               _e1394014463_
                               _hd1394114467_
                               _tl1394214470_
                               ___splice4324943250_
                               _target1394314473_
                               _tl1394514476_)
                        (letrec ((_loop1394614479_
                                  (lambda (_hd1394414483_ _body1395014486_)
                                    (if (gx#stx-pair? _hd1394414483_)
                                        (let ((_e1394714489_
                                               (gx#syntax-e _hd1394414483_)))
                                          (let ((_lp-tl1394914496_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1394714489_)))
                                                (_lp-hd1394814493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1394714489_))))
                                            (_loop1394614479_
                                             _lp-tl1394914496_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1394814493_
                                                     _body1395014486_)))))
                                        (let ((_body1395114499_
                                               (reverse _body1395014486_)))
                                          (___kont4324743248_
                                           _body1395114499_
                                           _hd1394114467_))))))
                          (_loop1394614479_ _target1394314473_ '()))))
                     (___match4328343284_
                      (lambda (_e1391714541_
                               _hd1391814545_
                               _tl1391914548_
                               _e1392014551_
                               _hd1392114555_
                               _tl1392214558_
                               _e1392314561_
                               _hd1392414565_
                               _tl1392514568_
                               _e1392614571_
                               _hd1392714575_
                               _tl1392814578_)
                        (let ((_L14581_ _tl1392214558_)
                              (_L14583_ _hd1392714575_)
                              (_L14584_ _hd1392414565_)
                              (_L14585_ _hd1391814545_))
                          (if (_let-head?13906_ _L14584_)
                              (___kont4324543246_
                               _L14581_
                               _L14583_
                               _L14584_
                               _L14585_)
                              (if (gx#stx-pair? _hd1392414565_)
                                  (let ((_e1394014463_
                                         (gx#syntax-e _hd1392414565_)))
                                    (let ((_tl1394214470_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1394014463_)))
                                          (_hd1394114467_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1394014463_))))
                                      (if (gx#stx-pair/null? _hd1392114555_)
                                          (let ((___splice4325343254_
                                                 (gx#syntax-split-splice
                                                  _hd1392114555_
                                                  '0)))
                                            (let ((_tl1396214013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4325343254_
                                                      '1)))
                                                  (_target1396014010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4325343254_
                                                      '0))))
                                              (if (gx#stx-null? _tl1396214013_)
                                                  (___match4333943340_
                                                   _e1391714541_
                                                   _hd1391814545_
                                                   _tl1391914548_
                                                   _e1392014551_
                                                   _hd1392114555_
                                                   _tl1392214558_
                                                   ___splice4325343254_
                                                   _target1396014010_
                                                   _tl1396214013_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1391113983_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1391113983_)))))
                                  (if (gx#stx-pair/null? _hd1392114555_)
                                      (let ((___splice4325343254_
                                             (gx#syntax-split-splice
                                              _hd1392114555_
                                              '0)))
                                        (let ((_tl1396214013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4325343254_
                                                  '1)))
                                              (_target1396014010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4325343254_
                                                  '0))))
                                          (if (gx#stx-null? _tl1396214013_)
                                              (___match4333943340_
                                               _e1391714541_
                                               _hd1391814545_
                                               _tl1391914548_
                                               _e1392014551_
                                               _hd1392114555_
                                               _tl1392214558_
                                               ___splice4325343254_
                                               _target1396014010_
                                               _tl1396214013_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1391113983_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1391113983_)))))))))
                (if (gx#stx-pair? ___stx4324243243_)
                    (let ((_e1391714541_ (gx#syntax-e ___stx4324243243_)))
                      (let ((_tl1391914548_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1391714541_)))
                            (_hd1391814545_
                             (let ()
                               (declare (not safe))
                               (##car _e1391714541_))))
                        (if (gx#stx-pair? _tl1391914548_)
                            (let ((_e1392014551_ (gx#syntax-e _tl1391914548_)))
                              (let ((_tl1392214558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1392014551_)))
                                    (_hd1392114555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1392014551_))))
                                (if (gx#stx-pair? _hd1392114555_)
                                    (let ((_e1392314561_
                                           (gx#syntax-e _hd1392114555_)))
                                      (let ((_tl1392514568_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1392314561_)))
                                            (_hd1392414565_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1392314561_))))
                                        (if (gx#stx-pair? _tl1392514568_)
                                            (let ((_e1392614571_
                                                   (gx#syntax-e
                                                    _tl1392514568_)))
                                              (let ((_tl1392814578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1392614571_)))
                                                    (_hd1392714575_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1392614571_))))
                                                (if (gx#stx-null?
                                                     _tl1392814578_)
                                                    (___match4328343284_
                                                     _e1391714541_
                                                     _hd1391814545_
                                                     _tl1391914548_
                                                     _e1392014551_
                                                     _hd1392114555_
                                                     _tl1392214558_
                                                     _e1392314561_
                                                     _hd1392414565_
                                                     _tl1392514568_
                                                     _e1392614571_
                                                     _hd1392714575_
                                                     _tl1392814578_)
                                                    (if (gx#stx-pair?
                                                         _hd1392414565_)
                                                        (let ((_e1394014463_
                                                               (gx#syntax-e
                                                                _hd1392414565_)))
                                                          (let ((_tl1394214470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1394014463_)))
                        (_hd1394114467_
                         (let () (declare (not safe)) (##car _e1394014463_))))
                    (if (gx#stx-pair/null? _hd1392114555_)
                        (let ((___splice4325343254_
                               (gx#syntax-split-splice _hd1392114555_ '0)))
                          (let ((_tl1396214013_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4325343254_ '1)))
                                (_target1396014010_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4325343254_ '0))))
                            (if (gx#stx-null? _tl1396214013_)
                                (___match4333943340_
                                 _e1391714541_
                                 _hd1391814545_
                                 _tl1391914548_
                                 _e1392014551_
                                 _hd1392114555_
                                 _tl1392214558_
                                 ___splice4325343254_
                                 _target1396014010_
                                 _tl1396214013_)
                                (let ()
                                  (declare (not safe))
                                  (_g1391113983_)))))
                        (let () (declare (not safe)) (_g1391113983_)))))
                (if (gx#stx-pair/null? _hd1392114555_)
                    (let ((___splice4325343254_
                           (gx#syntax-split-splice _hd1392114555_ '0)))
                      (let ((_tl1396214013_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4325343254_ '1)))
                            (_target1396014010_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4325343254_ '0))))
                        (if (gx#stx-null? _tl1396214013_)
                            (___match4333943340_
                             _e1391714541_
                             _hd1391814545_
                             _tl1391914548_
                             _e1392014551_
                             _hd1392114555_
                             _tl1392214558_
                             ___splice4325343254_
                             _target1396014010_
                             _tl1396214013_)
                            (let () (declare (not safe)) (_g1391113983_)))))
                    (let () (declare (not safe)) (_g1391113983_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1392414565_)
                                                (let ((_e1394014463_
                                                       (gx#syntax-e
                                                        _hd1392414565_)))
                                                  (let ((_tl1394214470_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1394014463_)))
                                                        (_hd1394114467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1394014463_))))
                                                    (if (gx#stx-null?
                                                         _tl1394214470_)
                                                        (if (gx#stx-null?
                                                             _tl1392514568_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1392214558_)
                        (let ((___splice4324943250_
                               (gx#syntax-split-splice _tl1392214558_ '0)))
                          (let ((_tl1394514476_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4324943250_ '1)))
                                (_target1394314473_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4324943250_ '0))))
                            (if (gx#stx-null? _tl1394514476_)
                                (___match4331943320_
                                 _e1391714541_
                                 _hd1391814545_
                                 _tl1391914548_
                                 _e1392014551_
                                 _hd1392114555_
                                 _tl1392214558_
                                 _e1392314561_
                                 _hd1392414565_
                                 _tl1392514568_
                                 _e1394014463_
                                 _hd1394114467_
                                 _tl1394214470_
                                 ___splice4324943250_
                                 _target1394314473_
                                 _tl1394514476_)
                                (if (gx#stx-pair/null? _hd1392114555_)
                                    (let ((___splice4325343254_
                                           (gx#syntax-split-splice
                                            _hd1392114555_
                                            '0)))
                                      (let ((_tl1396214013_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4325343254_
                                                '1)))
                                            (_target1396014010_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4325343254_
                                                '0))))
                                        (if (gx#stx-null? _tl1396214013_)
                                            (___match4333943340_
                                             _e1391714541_
                                             _hd1391814545_
                                             _tl1391914548_
                                             _e1392014551_
                                             _hd1392114555_
                                             _tl1392214558_
                                             ___splice4325343254_
                                             _target1396014010_
                                             _tl1396214013_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1391113983_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1391113983_))))))
                        (if (gx#stx-pair/null? _hd1392114555_)
                            (let ((___splice4325343254_
                                   (gx#syntax-split-splice _hd1392114555_ '0)))
                              (let ((_tl1396214013_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4325343254_ '1)))
                                    (_target1396014010_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4325343254_
                                        '0))))
                                (if (gx#stx-null? _tl1396214013_)
                                    (___match4333943340_
                                     _e1391714541_
                                     _hd1391814545_
                                     _tl1391914548_
                                     _e1392014551_
                                     _hd1392114555_
                                     _tl1392214558_
                                     ___splice4325343254_
                                     _target1396014010_
                                     _tl1396214013_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1391113983_)))))
                            (let () (declare (not safe)) (_g1391113983_))))
                    (if (gx#stx-pair/null? _hd1392114555_)
                        (let ((___splice4325343254_
                               (gx#syntax-split-splice _hd1392114555_ '0)))
                          (let ((_tl1396214013_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4325343254_ '1)))
                                (_target1396014010_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4325343254_ '0))))
                            (if (gx#stx-null? _tl1396214013_)
                                (___match4333943340_
                                 _e1391714541_
                                 _hd1391814545_
                                 _tl1391914548_
                                 _e1392014551_
                                 _hd1392114555_
                                 _tl1392214558_
                                 ___splice4325343254_
                                 _target1396014010_
                                 _tl1396214013_)
                                (let ()
                                  (declare (not safe))
                                  (_g1391113983_)))))
                        (let () (declare (not safe)) (_g1391113983_))))
                (if (gx#stx-pair/null? _hd1392114555_)
                    (let ((___splice4325343254_
                           (gx#syntax-split-splice _hd1392114555_ '0)))
                      (let ((_tl1396214013_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4325343254_ '1)))
                            (_target1396014010_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4325343254_ '0))))
                        (if (gx#stx-null? _tl1396214013_)
                            (___match4333943340_
                             _e1391714541_
                             _hd1391814545_
                             _tl1391914548_
                             _e1392014551_
                             _hd1392114555_
                             _tl1392214558_
                             ___splice4325343254_
                             _target1396014010_
                             _tl1396214013_)
                            (let () (declare (not safe)) (_g1391113983_)))))
                    (let () (declare (not safe)) (_g1391113983_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1392114555_)
                                                    (let ((___splice4325343254_
                                                           (gx#syntax-split-splice
                                                            _hd1392114555_
                                                            '0)))
                                                      (let ((_tl1396214013_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4325343254_ '1)))
                    (_target1396014010_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4325343254_ '0))))
                (if (gx#stx-null? _tl1396214013_)
                    (___match4333943340_
                     _e1391714541_
                     _hd1391814545_
                     _tl1391914548_
                     _e1392014551_
                     _hd1392114555_
                     _tl1392214558_
                     ___splice4325343254_
                     _target1396014010_
                     _tl1396214013_)
                    (let () (declare (not safe)) (_g1391113983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1391113983_)))))))
                                    (if (gx#stx-pair/null? _hd1392114555_)
                                        (let ((___splice4325343254_
                                               (gx#syntax-split-splice
                                                _hd1392114555_
                                                '0)))
                                          (let ((_tl1396214013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4325343254_
                                                    '1)))
                                                (_target1396014010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4325343254_
                                                    '0))))
                                            (if (gx#stx-null? _tl1396214013_)
                                                (___match4333943340_
                                                 _e1391714541_
                                                 _hd1391814545_
                                                 _tl1391914548_
                                                 _e1392014551_
                                                 _hd1392114555_
                                                 _tl1392214558_
                                                 ___splice4325343254_
                                                 _target1396014010_
                                                 _tl1396214013_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1391113983_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1391113983_))))))
                            (let () (declare (not safe)) (_g1391113983_)))))
                    (let () (declare (not safe)) (_g1391113983_)))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14943_)
        (let* ((___stx4334243343_ _$stx14943_)
               (_g1494915000_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4334243343_))))
          (let ((___kont4334543346_ (lambda () '#t))
                (___kont4334743348_
                 (lambda (_L15158_)
                   (let ((__tmp48472 (gx#datum->syntax '#f 'let))
                         (__tmp48469
                          (let ((__tmp48470
                                 (let ((__tmp48471
                                        (lambda (_g1517415177_ _g1517515180_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1517415177_
                                                  _g1517515180_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp48471 '() _L15158_))))
                            (declare (not safe))
                            (cons '() __tmp48470))))
                     (declare (not safe))
                     (cons __tmp48472 __tmp48469))))
                (___kont4335143352_
                 (lambda (_L15067_ _L15069_ _L15070_ _L15071_)
                   (let ((__tmp48480 (gx#datum->syntax '#f 'alet))
                         (__tmp48473
                          (let ((__tmp48479
                                 (let ()
                                   (declare (not safe))
                                   (cons _L15070_ '())))
                                (__tmp48474
                                 (let ((__tmp48475
                                        (let ((__tmp48476
                                               (let ((__tmp48477
                                                      (let ((__tmp48478
                                                             (lambda (_g1509215095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1509315098_)
                       (let ()
                         (declare (not safe))
                         (cons _g1509215095_ _g1509315098_)))))
                (declare (not safe))
                (foldr1 __tmp48478 '() _L15067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L15069_ __tmp48477))))
                                          (declare (not safe))
                                          (cons _L15071_ __tmp48476))))
                                   (declare (not safe))
                                   (cons __tmp48475 '()))))
                            (declare (not safe))
                            (cons __tmp48479 __tmp48474))))
                     (declare (not safe))
                     (cons __tmp48480 __tmp48473)))))
            (let* ((___match4341943420_
                    (lambda (_e1497715007_
                             _hd1497815011_
                             _tl1497915014_
                             _e1498015017_
                             _hd1498115021_
                             _tl1498215024_
                             _e1498315027_
                             _hd1498415031_
                             _tl1498515034_
                             ___splice4335343354_
                             _target1498615037_
                             _tl1498815040_)
                      (letrec ((_loop1498915043_
                                (lambda (_hd1498715047_ _body1499315050_)
                                  (if (gx#stx-pair? _hd1498715047_)
                                      (let ((_e1499015053_
                                             (gx#syntax-e _hd1498715047_)))
                                        (let ((_lp-tl1499215060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1499015053_)))
                                              (_lp-hd1499115057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1499015053_))))
                                          (_loop1498915043_
                                           _lp-tl1499215060_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1499115057_
                                                   _body1499315050_)))))
                                      (let ((_body1499415063_
                                             (reverse _body1499315050_)))
                                        (___kont4335143352_
                                         _body1499415063_
                                         _tl1498515034_
                                         _hd1498415031_
                                         _hd1497815011_))))))
                        (_loop1498915043_ _target1498615037_ '()))))
                   (___match4339343394_
                    (lambda (_e1495815108_
                             _hd1495915112_
                             _tl1496015115_
                             _e1496115118_
                             _hd1496215122_
                             _tl1496315125_
                             ___splice4334943350_
                             _target1496415128_
                             _tl1496615131_)
                      (letrec ((_loop1496715134_
                                (lambda (_hd1496515138_ _body1497115141_)
                                  (if (gx#stx-pair? _hd1496515138_)
                                      (let ((_e1496815144_
                                             (gx#syntax-e _hd1496515138_)))
                                        (let ((_lp-tl1497015151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1496815144_)))
                                              (_lp-hd1496915148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1496815144_))))
                                          (_loop1496715134_
                                           _lp-tl1497015151_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1496915148_
                                                   _body1497115141_)))))
                                      (let ((_body1497215154_
                                             (reverse _body1497115141_)))
                                        (___kont4334743348_
                                         _body1497215154_))))))
                        (_loop1496715134_ _target1496415128_ '())))))
              (if (gx#stx-pair? ___stx4334243343_)
                  (let ((_e1495115190_ (gx#syntax-e ___stx4334243343_)))
                    (let ((_tl1495315197_
                           (let () (declare (not safe)) (##cdr _e1495115190_)))
                          (_hd1495215194_
                           (let ()
                             (declare (not safe))
                             (##car _e1495115190_))))
                      (if (gx#stx-pair? _tl1495315197_)
                          (let ((_e1495415200_ (gx#syntax-e _tl1495315197_)))
                            (let ((_tl1495615207_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1495415200_)))
                                  (_hd1495515204_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1495415200_))))
                              (if (gx#stx-null? _hd1495515204_)
                                  (if (gx#stx-null? _tl1495615207_)
                                      (___kont4334543346_)
                                      (if (gx#stx-pair/null? _tl1495615207_)
                                          (let ((___splice4334943350_
                                                 (gx#syntax-split-splice
                                                  _tl1495615207_
                                                  '0)))
                                            (let ((_tl1496615131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4334943350_
                                                      '1)))
                                                  (_target1496415128_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4334943350_
                                                      '0))))
                                              (if (gx#stx-null? _tl1496615131_)
                                                  (___match4339343394_
                                                   _e1495115190_
                                                   _hd1495215194_
                                                   _tl1495315197_
                                                   _e1495415200_
                                                   _hd1495515204_
                                                   _tl1495615207_
                                                   ___splice4334943350_
                                                   _target1496415128_
                                                   _tl1496615131_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1494915000_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1494915000_))))
                                  (if (gx#stx-pair? _hd1495515204_)
                                      (let ((_e1498315027_
                                             (gx#syntax-e _hd1495515204_)))
                                        (let ((_tl1498515034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1498315027_)))
                                              (_hd1498415031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1498315027_))))
                                          (if (gx#stx-pair/null?
                                               _tl1495615207_)
                                              (let ((___splice4335343354_
                                                     (gx#syntax-split-splice
                                                      _tl1495615207_
                                                      '0)))
                                                (let ((_tl1498815040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4335343354_
                                                          '1)))
                                                      (_target1498615037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4335343354_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1498815040_)
                                                      (___match4341943420_
                                                       _e1495115190_
                                                       _hd1495215194_
                                                       _tl1495315197_
                                                       _e1495415200_
                                                       _hd1495515204_
                                                       _tl1495615207_
                                                       _e1498315027_
                                                       _hd1498415031_
                                                       _tl1498515034_
                                                       ___splice4335343354_
                                                       _target1498615037_
                                                       _tl1498815040_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1494915000_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1494915000_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1494915000_))))))
                          (let () (declare (not safe)) (_g1494915000_)))))
                  (let () (declare (not safe)) (_g1494915000_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx15220_)
        (let* ((___stx4342243423_ _$stx15220_)
               (_g1523115309_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4342243423_))))
          (let ((___kont4342543426_
                 (lambda ()
                   (let ((__tmp48482 (gx#datum->syntax '#f 'quote))
                         (__tmp48481
                          (let () (declare (not safe)) (cons '() '()))))
                     (declare (not safe))
                     (cons __tmp48482 __tmp48481))))
                (___kont4342743428_
                 (lambda (_L15640_)
                   (let ((__tmp48484 (gx#datum->syntax '#f 'quote))
                         (__tmp48483
                          (let () (declare (not safe)) (cons _L15640_ '()))))
                     (declare (not safe))
                     (cons __tmp48484 __tmp48483))))
                (___kont4342943430_
                 (lambda (_L15588_)
                   (let ((__tmp48486 (gx#datum->syntax '#f 'quasiquote))
                         (__tmp48485
                          (let () (declare (not safe)) (cons _L15588_ '()))))
                     (declare (not safe))
                     (cons __tmp48486 __tmp48485))))
                (___kont4343143432_ (lambda (_L15535_) _L15535_))
                (___kont4343343434_ (lambda (_L15477_ _L15479_) _L15479_))
                (___kont4343543436_
                 (lambda (_L15419_ _L15421_ _L15422_ _L15423_)
                   (let ((__tmp48492 (gx#datum->syntax '#f 'foldr))
                         (__tmp48487
                          (let ((__tmp48491 (gx#datum->syntax '#f 'cons))
                                (__tmp48488
                                 (let ((__tmp48490
                                        (let ()
                                          (declare (not safe))
                                          (cons _L15423_ _L15419_)))
                                       (__tmp48489
                                        (let ()
                                          (declare (not safe))
                                          (cons _L15422_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48490 __tmp48489))))
                            (declare (not safe))
                            (cons __tmp48491 __tmp48488))))
                     (declare (not safe))
                     (cons __tmp48492 __tmp48487))))
                (___kont4343743438_
                 (lambda (_L15365_ _L15367_ _L15368_)
                   (let ((__tmp48496 (gx#datum->syntax '#f 'cons))
                         (__tmp48493
                          (let ((__tmp48494
                                 (let ((__tmp48495
                                        (let ()
                                          (declare (not safe))
                                          (cons _L15368_ _L15365_))))
                                   (declare (not safe))
                                   (cons __tmp48495 '()))))
                            (declare (not safe))
                            (cons _L15367_ __tmp48494))))
                     (declare (not safe))
                     (cons __tmp48496 __tmp48493))))
                (___kont4343943440_ (lambda (_L15326_) _L15326_)))
            (let* ((___match4356143562_
                    (lambda (_e1528215389_
                             _hd1528315393_
                             _tl1528415396_
                             _e1528515399_
                             _hd1528615403_
                             _tl1528715406_
                             _e1528815409_
                             _hd1528915413_
                             _tl1529015416_)
                      (let ((_L15419_ _tl1529015416_)
                            (_L15421_ _hd1528915413_)
                            (_L15422_ _hd1528615403_)
                            (_L15423_ _hd1528315393_))
                        (if (gx#ellipsis? _L15421_)
                            (___kont4343543436_
                             _L15419_
                             _L15421_
                             _L15422_
                             _L15423_)
                            (___kont4343743438_
                             _tl1528715406_
                             _hd1528615403_
                             _hd1528315393_)))))
                   (___match4354343544_
                    (lambda (_e1526915447_
                             _hd1527015451_
                             _tl1527115454_
                             _e1527215457_
                             _hd1527315461_
                             _tl1527415464_
                             _e1527515467_
                             _hd1527615471_
                             _tl1527715474_)
                      (let ((_L15477_ _hd1527615471_)
                            (_L15479_ _hd1527315461_))
                        (if (gx#ellipsis? _L15477_)
                            (___kont4343343434_ _L15477_ _L15479_)
                            (___match4356143562_
                             _e1526915447_
                             _hd1527015451_
                             _tl1527115454_
                             _e1527215457_
                             _hd1527315461_
                             _tl1527415464_
                             _e1527515467_
                             _hd1527615471_
                             _tl1527715474_))))))
              (if (gx#stx-pair? ___stx4342243423_)
                  (let ((_e1523315662_ (gx#syntax-e ___stx4342243423_)))
                    (let ((_tl1523515669_
                           (let () (declare (not safe)) (##cdr _e1523315662_)))
                          (_hd1523415666_
                           (let ()
                             (declare (not safe))
                             (##car _e1523315662_))))
                      (if (gx#stx-null? _tl1523515669_)
                          (___kont4342543426_)
                          (if (gx#stx-pair? _tl1523515669_)
                              (let ((_e1524015620_
                                     (gx#syntax-e _tl1523515669_)))
                                (let ((_tl1524215627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1524015620_)))
                                      (_hd1524115624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1524015620_))))
                                  (if (gx#identifier? _hd1524115624_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g48497_|
                                           _hd1524115624_)
                                          (if (gx#stx-pair? _tl1524215627_)
                                              (let ((_e1524315630_
                                                     (gx#syntax-e
                                                      _tl1524215627_)))
                                                (let ((_tl1524515637_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1524315630_)))
                                                      (_hd1524415634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1524315630_))))
                                                  (if (gx#stx-null?
                                                       _tl1524515637_)
                                                      (___kont4342743428_
                                                       _hd1524415634_)
                                                      (___match4356143562_
                                                       _e1523315662_
                                                       _hd1523415666_
                                                       _tl1523515669_
                                                       _e1524015620_
                                                       _hd1524115624_
                                                       _tl1524215627_
                                                       _e1524315630_
                                                       _hd1524415634_
                                                       _tl1524515637_))))
                                              (___kont4343743438_
                                               _tl1524215627_
                                               _hd1524115624_
                                               _hd1523415666_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g48498_|
                                               _hd1524115624_)
                                              (if (gx#stx-pair? _tl1524215627_)
                                                  (let ((_e1525315578_
                                                         (gx#syntax-e
                                                          _tl1524215627_)))
                                                    (let ((_tl1525515585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1525315578_)))
                                                          (_hd1525415582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1525315578_))))
                                                      (if (gx#stx-null?
                                                           _tl1525515585_)
                                                          (___kont4342943430_
                                                           _hd1525415582_)
                                                          (___match4356143562_
                                                           _e1523315662_
                                                           _hd1523415666_
                                                           _tl1523515669_
                                                           _e1524015620_
                                                           _hd1524115624_
                                                           _tl1524215627_
                                                           _e1525315578_
                                                           _hd1525415582_
                                                           _tl1525515585_))))
                                                  (___kont4343743438_
                                                   _tl1524215627_
                                                   _hd1524115624_
                                                   _hd1523415666_))
                                              (if (gx#stx-pair? _tl1524215627_)
                                                  (let ((_e1527515467_
                                                         (gx#syntax-e
                                                          _tl1524215627_)))
                                                    (let ((_tl1527715474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1527515467_)))
                                                          (_hd1527615471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1527515467_))))
                                                      (if (gx#stx-null?
                                                           _tl1527715474_)
                                                          (___match4354343544_
                                                           _e1523315662_
                                                           _hd1523415666_
                                                           _tl1523515669_
                                                           _e1524015620_
                                                           _hd1524115624_
                                                           _tl1524215627_
                                                           _e1527515467_
                                                           _hd1527615471_
                                                           _tl1527715474_)
                                                          (___match4356143562_
                                                           _e1523315662_
                                                           _hd1523415666_
                                                           _tl1523515669_
                                                           _e1524015620_
                                                           _hd1524115624_
                                                           _tl1524215627_
                                                           _e1527515467_
                                                           _hd1527615471_
                                                           _tl1527715474_))))
                                                  (___kont4343743438_
                                                   _tl1524215627_
                                                   _hd1524115624_
                                                   _hd1523415666_))))
                                      (if (gx#stx-datum? _hd1524115624_)
                                          (let ((_e1526315521_
                                                 (gx#stx-e _hd1524115624_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e1526315521_ '::))
                                                (if (gx#stx-pair?
                                                     _tl1524215627_)
                                                    (let ((_e1526415525_
                                                           (gx#syntax-e
                                                            _tl1524215627_)))
                                                      (let ((_tl1526615532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1526415525_)))
                    (_hd1526515529_
                     (let () (declare (not safe)) (##car _e1526415525_))))
                (if (gx#stx-null? _tl1526615532_)
                    (___kont4343143432_ _hd1526515529_)
                    (___match4356143562_
                     _e1523315662_
                     _hd1523415666_
                     _tl1523515669_
                     _e1524015620_
                     _hd1524115624_
                     _tl1524215627_
                     _e1526415525_
                     _hd1526515529_
                     _tl1526615532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4343743438_
                                                     _tl1524215627_
                                                     _hd1524115624_
                                                     _hd1523415666_))
                                                (if (gx#stx-pair?
                                                     _tl1524215627_)
                                                    (let ((_e1527515467_
                                                           (gx#syntax-e
                                                            _tl1524215627_)))
                                                      (let ((_tl1527715474_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1527515467_)))
                    (_hd1527615471_
                     (let () (declare (not safe)) (##car _e1527515467_))))
                (if (gx#stx-null? _tl1527715474_)
                    (___match4354343544_
                     _e1523315662_
                     _hd1523415666_
                     _tl1523515669_
                     _e1524015620_
                     _hd1524115624_
                     _tl1524215627_
                     _e1527515467_
                     _hd1527615471_
                     _tl1527715474_)
                    (___match4356143562_
                     _e1523315662_
                     _hd1523415666_
                     _tl1523515669_
                     _e1524015620_
                     _hd1524115624_
                     _tl1524215627_
                     _e1527515467_
                     _hd1527615471_
                     _tl1527715474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4343743438_
                                                     _tl1524215627_
                                                     _hd1524115624_
                                                     _hd1523415666_))))
                                          (if (gx#stx-pair? _tl1524215627_)
                                              (let ((_e1527515467_
                                                     (gx#syntax-e
                                                      _tl1524215627_)))
                                                (let ((_tl1527715474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1527515467_)))
                                                      (_hd1527615471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1527515467_))))
                                                  (if (gx#stx-null?
                                                       _tl1527715474_)
                                                      (___match4354343544_
                                                       _e1523315662_
                                                       _hd1523415666_
                                                       _tl1523515669_
                                                       _e1524015620_
                                                       _hd1524115624_
                                                       _tl1524215627_
                                                       _e1527515467_
                                                       _hd1527615471_
                                                       _tl1527715474_)
                                                      (___match4356143562_
                                                       _e1523315662_
                                                       _hd1523415666_
                                                       _tl1523515669_
                                                       _e1524015620_
                                                       _hd1524115624_
                                                       _tl1524215627_
                                                       _e1527515467_
                                                       _hd1527615471_
                                                       _tl1527715474_))))
                                              (___kont4343743438_
                                               _tl1524215627_
                                               _hd1524115624_
                                               _hd1523415666_))))))
                              (___kont4343943440_ _tl1523515669_)))))
                  (let () (declare (not safe)) (_g1523115309_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15680_)
        (letrec ((_simple-quote?15683_
                  (lambda (_e16375_)
                    (let* ((___stx4358243583_ _e16375_)
                           (_g1638316420_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4358243583_))))
                      (let ((___kont4358543586_ (lambda () '#f))
                            (___kont4358743588_ (lambda () '#f))
                            (___kont4358943590_
                             (lambda (_L16534_ _L16536_)
                               (if (_simple-quote?15683_ _L16536_)
                                   (_simple-quote?15683_ _L16534_)
                                   '#f)))
                            (___kont4359143592_
                             (lambda (_L16495_)
                               (_simple-quote?15683_
                                (let ((__tmp48499
                                       (lambda (_g1650816511_ _g1650916514_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1650816511_
                                                 _g1650916514_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp48499 '() _L16495_)))))
                            (___kont4359543596_
                             (lambda (_L16442_)
                               (_simple-quote?15683_ _L16442_)))
                            (___kont4359743598_ (lambda () '#t)))
                        (let* ((_g1638116454_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4358243583_)
                                      (let ((_e1641416438_
                                             (unbox (gx#syntax-e
                                                     ___stx4358243583_))))
                                        (___kont4359543596_ _e1641416438_))
                                      (___kont4359743598_))))
                               (___match4365343654_
                                (lambda (_e1640316461_
                                         ___splice4359343594_
                                         _target1640416465_
                                         _tl1640616468_)
                                  (letrec ((_loop1640716471_
                                            (lambda (_hd1640516475_
                                                     _e1641116478_)
                                              (if (gx#stx-pair? _hd1640516475_)
                                                  (let ((_e1640816481_
                                                         (gx#syntax-e
                                                          _hd1640516475_)))
                                                    (let ((_lp-tl1641016488_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1640816481_)))
                                                          (_lp-hd1640916485_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1640816481_))))
                                                      (_loop1640716471_
                                                       _lp-tl1641016488_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd1640916485_
                                                               _e1641116478_)))))
                                                  (let ((_e1641216491_
                                                         (reverse _e1641116478_)))
                                                    (___kont4359143592_
                                                     _e1641216491_))))))
                                    (_loop1640716471_
                                     _target1640416465_
                                     '()))))
                               (_g1638016517_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4358243583_)
                                      (let ((_e1640316461_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4358243583_))))
                                        (if (gx#stx-pair/null? _e1640316461_)
                                            (let ((___splice4359343594_
                                                   (gx#syntax-split-splice
                                                    _e1640316461_
                                                    '0)))
                                              (let ((_tl1640616468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4359343594_
                                                        '1)))
                                                    (_target1640416465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4359343594_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1640616468_)
                                                    (___match4365343654_
                                                     _e1640316461_
                                                     ___splice4359343594_
                                                     _target1640416465_
                                                     _tl1640616468_)
                                                    (___kont4359743598_))))
                                            (___kont4359743598_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1638116454_))))))
                          (if (gx#stx-pair? ___stx4358243583_)
                              (let ((_e1638516585_
                                     (gx#syntax-e ___stx4358243583_)))
                                (let ((_tl1638716592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1638516585_)))
                                      (_hd1638616589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1638516585_))))
                                  (if (gx#identifier? _hd1638616589_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g48500_|
                                           _hd1638616589_)
                                          (if (gx#stx-pair? _tl1638716592_)
                                              (let ((_e1638816595_
                                                     (gx#syntax-e
                                                      _tl1638716592_)))
                                                (let ((_tl1639016602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1638816595_)))
                                                      (_hd1638916599_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1638816595_))))
                                                  (if (gx#stx-null?
                                                       _tl1639016602_)
                                                      (___kont4358543586_)
                                                      (___kont4358943590_
                                                       _tl1638716592_
                                                       _hd1638616589_))))
                                              (___kont4358943590_
                                               _tl1638716592_
                                               _hd1638616589_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g48501_|
                                               _hd1638616589_)
                                              (if (gx#stx-pair? _tl1638716592_)
                                                  (let ((_e1639416564_
                                                         (gx#syntax-e
                                                          _tl1638716592_)))
                                                    (let ((_tl1639616571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1639416564_)))
                                                          (_hd1639516568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1639416564_))))
                                                      (if (gx#stx-null?
                                                           _tl1639616571_)
                                                          (___kont4358743588_)
                                                          (___kont4358943590_
                                                           _tl1638716592_
                                                           _hd1638616589_))))
                                                  (___kont4358943590_
                                                   _tl1638716592_
                                                   _hd1638616589_))
                                              (___kont4358943590_
                                               _tl1638716592_
                                               _hd1638616589_)))
                                      (___kont4358943590_
                                       _tl1638716592_
                                       _hd1638616589_))))
                              (let ()
                                (declare (not safe))
                                (_g1638016517_))))))))
                 (_generate15685_
                  (lambda (_e15747_ _d15749_)
                    (let* ((___stx4366043661_ _e15747_)
                           (_g1575815816_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4366043661_))))
                      (let ((___kont4366343664_
                             (lambda (_L16327_)
                               (let* ((_g1634016348_
                                       (lambda (_g1634116344_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1634116344_)))
                                      (_g1633916367_
                                       (lambda (_g1634116352_)
                                         ((lambda (_L16355_)
                                            (let ()
                                              (let ((__tmp48508
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list))
                                                    (__tmp48502
                                                     (let ((__tmp48504
                                                            (let ((__tmp48507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'quote))
                          (__tmp48505
                           (let ((__tmp48506
                                  (gx#datum->syntax '#f 'quasiquote)))
                             (declare (not safe))
                             (cons __tmp48506 '()))))
                      (declare (not safe))
                      (cons __tmp48507 __tmp48505)))
                   (__tmp48503
                    (let () (declare (not safe)) (cons _L16355_ '()))))
               (declare (not safe))
               (cons __tmp48504 __tmp48503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48508 __tmp48502))))
                                          _g1634116352_))))
                                 (_g1633916367_
                                  (_generate15685_
                                   _L16327_
                                   (let ()
                                     (declare (not safe))
                                     (fx+ _d15749_ '1)))))))
                            (___kont4366543666_
                             (lambda (_L16256_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d15749_))
                                   _L16256_
                                   (let* ((_g1626916277_
                                           (lambda (_g1627016273_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1627016273_)))
                                          (_g1626816296_
                                           (lambda (_g1627016281_)
                                             ((lambda (_L16284_)
                                                (let ()
                                                  (let ((__tmp48515
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp48509
                                                         (let ((__tmp48511
                                                                (let ((__tmp48514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp48512
                               (let ((__tmp48513
                                      (gx#datum->syntax '#f 'unquote)))
                                 (declare (not safe))
                                 (cons __tmp48513 '()))))
                          (declare (not safe))
                          (cons __tmp48514 __tmp48512)))
                       (__tmp48510
                        (let () (declare (not safe)) (cons _L16284_ '()))))
                   (declare (not safe))
                   (cons __tmp48511 __tmp48510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48515
                                                          __tmp48509))))
                                              _g1627016281_))))
                                     (_g1626816296_
                                      (_generate15685_
                                       _L16256_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d15749_ '1))))))))
                            (___kont4366743668_
                             (lambda (_L16185_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d15749_))
                                   (let ((__tmp48523
                                          (gx#datum->syntax '#f 'foldr))
                                         (__tmp48516
                                          (let ((__tmp48522
                                                 (gx#datum->syntax '#f 'cons))
                                                (__tmp48517
                                                 (let ((__tmp48519
                                                        (let ((__tmp48521
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48520
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '() '()))))
                  (declare (not safe))
                  (cons __tmp48521 __tmp48520)))
               (__tmp48518 (let () (declare (not safe)) (cons _L16185_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48519
                                                         __tmp48518))))
                                            (declare (not safe))
                                            (cons __tmp48522 __tmp48517))))
                                     (declare (not safe))
                                     (cons __tmp48523 __tmp48516))
                                   (let* ((_g1619816206_
                                           (lambda (_g1619916202_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1619916202_)))
                                          (_g1619716225_
                                           (lambda (_g1619916210_)
                                             ((lambda (_L16213_)
                                                (let ()
                                                  (let ((__tmp48530
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp48524
                                                         (let ((__tmp48526
                                                                (let ((__tmp48529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp48527
                               (let ((__tmp48528
                                      (gx#datum->syntax
                                       '#f
                                       'unquote-splicing)))
                                 (declare (not safe))
                                 (cons __tmp48528 '()))))
                          (declare (not safe))
                          (cons __tmp48529 __tmp48527)))
                       (__tmp48525
                        (let () (declare (not safe)) (cons _L16213_ '()))))
                   (declare (not safe))
                   (cons __tmp48526 __tmp48525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48530
                                                          __tmp48524))))
                                              _g1619916210_))))
                                     (_g1619716225_
                                      (_generate15685_
                                       _L16185_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d15749_ '1))))))))
                            (___kont4366943670_
                             (lambda (_L16110_ _L16112_)
                               (let* ((_g1612716135_
                                       (lambda (_g1612816131_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1612816131_)))
                                      (_g1612616154_
                                       (lambda (_g1612816139_)
                                         ((lambda (_L16142_)
                                            (let ()
                                              (let ((__tmp48535
                                                     (gx#datum->syntax
                                                      '#f
                                                      'foldr))
                                                    (__tmp48531
                                                     (let ((__tmp48534
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cons))
                                                           (__tmp48532
                                                            (let ((__tmp48533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L16112_ '()))))
                      (declare (not safe))
                      (cons _L16142_ __tmp48533))))
               (declare (not safe))
               (cons __tmp48534 __tmp48532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48535 __tmp48531))))
                                          _g1612816139_))))
                                 (_g1612616154_
                                  (_generate15685_ _L16110_ _d15749_)))))
                            (___kont4367143672_
                             (lambda (_L15996_ _L15998_)
                               (let* ((_g1600916024_
                                       (lambda (_g1601016020_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1601016020_)))
                                      (_g1600816069_
                                       (lambda (_g1601016028_)
                                         (if (gx#stx-pair? _g1601016028_)
                                             (let ((_e1601316031_
                                                    (gx#syntax-e
                                                     _g1601016028_)))
                                               (let ((_hd1601416035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1601316031_)))
                                                     (_tl1601516038_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1601316031_))))
                                                 (if (gx#stx-pair?
                                                      _tl1601516038_)
                                                     (let ((_e1601616041_
                                                            (gx#syntax-e
                                                             _tl1601516038_)))
                                                       (let ((_hd1601716045_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1601616041_)))
                     (_tl1601816048_
                      (let () (declare (not safe)) (##cdr _e1601616041_))))
                 (if (gx#stx-null? _tl1601816048_)
                     ((lambda (_L16051_ _L16053_)
                        (let ()
                          (let ((__tmp48538 (gx#datum->syntax '#f 'cons))
                                (__tmp48536
                                 (let ((__tmp48537
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16051_ '()))))
                                   (declare (not safe))
                                   (cons _L16053_ __tmp48537))))
                            (declare (not safe))
                            (cons __tmp48538 __tmp48536))))
                      _hd1601716045_
                      _hd1601416035_)
                     (_g1600916024_ _g1601016028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1600916024_
                                                      _g1601016028_))))
                                             (_g1600916024_ _g1601016028_)))))
                                 (_g1600816069_
                                  (list (_generate15685_ _L15998_ _d15749_)
                                        (_generate15685_
                                         _L15996_
                                         _d15749_))))))
                            (___kont4367343674_
                             (lambda (_L15926_)
                               (let* ((_g1594015948_
                                       (lambda (_g1594115944_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1594115944_)))
                                      (_g1593915967_
                                       (lambda (_g1594115952_)
                                         ((lambda (_L15955_)
                                            (let ()
                                              (let ((__tmp48540
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list->vector))
                                                    (__tmp48539
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L15955_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48540 __tmp48539))))
                                          _g1594115952_))))
                                 (_g1593915967_
                                  (_generate15685_
                                   (let ((__tmp48541
                                          (lambda (_g1597015973_ _g1597115976_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g1597015973_
                                                    _g1597115976_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp48541 '() _L15926_))
                                   _d15749_)))))
                            (___kont4367743678_
                             (lambda (_L15844_)
                               (let* ((_g1585415862_
                                       (lambda (_g1585515858_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1585515858_)))
                                      (_g1585315881_
                                       (lambda (_g1585515866_)
                                         ((lambda (_L15869_)
                                            (let ()
                                              (let ((__tmp48543
                                                     (gx#datum->syntax
                                                      '#f
                                                      'box))
                                                    (__tmp48542
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L15869_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48543 __tmp48542))))
                                          _g1585515866_))))
                                 (_g1585315881_
                                  (_generate15685_ _L15844_ _d15749_)))))
                            (___kont4367943680_
                             (lambda (_L15823_)
                               (let ((__tmp48545 (gx#datum->syntax '#f 'quote))
                                     (__tmp48544
                                      (let ()
                                        (declare (not safe))
                                        (cons _L15823_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48545 __tmp48544)))))
                        (let* ((_g1575615885_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4366043661_)
                                      (let ((_e1580915840_
                                             (unbox (gx#syntax-e
                                                     ___stx4366043661_))))
                                        (___kont4367743678_ _e1580915840_))
                                      (___kont4367943680_ ___stx4366043661_))))
                               (___match4377943780_
                                (lambda (_e1579815892_
                                         ___splice4367543676_
                                         _target1579915896_
                                         _tl1580115899_)
                                  (letrec ((_loop1580215902_
                                            (lambda (_hd1580015906_
                                                     _e1580615909_)
                                              (if (gx#stx-pair? _hd1580015906_)
                                                  (let ((_e1580315912_
                                                         (gx#syntax-e
                                                          _hd1580015906_)))
                                                    (let ((_lp-tl1580515919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1580315912_)))
                                                          (_lp-hd1580415916_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1580315912_))))
                                                      (_loop1580215902_
                                                       _lp-tl1580515919_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd1580415916_
                                                               _e1580615909_)))))
                                                  (let ((_e1580715922_
                                                         (reverse _e1580615909_)))
                                                    (___kont4367343674_
                                                     _e1580715922_))))))
                                    (_loop1580215902_
                                     _target1579915896_
                                     '()))))
                               (_g1575515979_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4366043661_)
                                      (let ((_e1579815892_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4366043661_))))
                                        (if (gx#stx-pair/null? _e1579815892_)
                                            (let ((___splice4367543676_
                                                   (gx#syntax-split-splice
                                                    _e1579815892_
                                                    '0)))
                                              (let ((_tl1580115899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4367543676_
                                                        '1)))
                                                    (_target1579915896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4367543676_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1580115899_)
                                                    (___match4377943780_
                                                     _e1579815892_
                                                     ___splice4367543676_
                                                     _target1579915896_
                                                     _tl1580115899_)
                                                    (___kont4367943680_
                                                     ___stx4366043661_))))
                                            (___kont4367943680_
                                             ___stx4366043661_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1575615885_))))))
                          (if (gx#stx-pair? ___stx4366043661_)
                              (let ((_e1576116307_
                                     (gx#syntax-e ___stx4366043661_)))
                                (let ((_tl1576316314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1576116307_)))
                                      (_hd1576216311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1576116307_))))
                                  (if (gx#identifier? _hd1576216311_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g48546_|
                                           _hd1576216311_)
                                          (if (gx#stx-pair? _tl1576316314_)
                                              (let ((_e1576416317_
                                                     (gx#syntax-e
                                                      _tl1576316314_)))
                                                (let ((_tl1576616324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1576416317_)))
                                                      (_hd1576516321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1576416317_))))
                                                  (if (gx#stx-null?
                                                       _tl1576616324_)
                                                      (___kont4366343664_
                                                       _hd1576516321_)
                                                      (___kont4367143672_
                                                       _tl1576316314_
                                                       _hd1576216311_))))
                                              (___kont4367143672_
                                               _tl1576316314_
                                               _hd1576216311_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g48547_|
                                               _hd1576216311_)
                                              (if (gx#stx-pair? _tl1576316314_)
                                                  (let ((_e1577116246_
                                                         (gx#syntax-e
                                                          _tl1576316314_)))
                                                    (let ((_tl1577316253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1577116246_)))
                                                          (_hd1577216250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1577116246_))))
                                                      (if (gx#stx-null?
                                                           _tl1577316253_)
                                                          (___kont4366543666_
                                                           _hd1577216250_)
                                                          (___kont4367143672_
                                                           _tl1576316314_
                                                           _hd1576216311_))))
                                                  (___kont4367143672_
                                                   _tl1576316314_
                                                   _hd1576216311_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g48548_|
                                                   _hd1576216311_)
                                                  (if (gx#stx-pair?
                                                       _tl1576316314_)
                                                      (let ((_e1577816175_
                                                             (gx#syntax-e
                                                              _tl1576316314_)))
                                                        (let ((_tl1578016182_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1577816175_)))
                      (_hd1577916179_
                       (let () (declare (not safe)) (##car _e1577816175_))))
                  (if (gx#stx-null? _tl1578016182_)
                      (___kont4366743668_ _hd1577916179_)
                      (___kont4367143672_ _tl1576316314_ _hd1576216311_))))
              (___kont4367143672_ _tl1576316314_ _hd1576216311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4367143672_
                                                   _tl1576316314_
                                                   _hd1576216311_))))
                                      (if (gx#stx-pair? _hd1576216311_)
                                          (let ((_e1578616090_
                                                 (gx#syntax-e _hd1576216311_)))
                                            (let ((_tl1578816097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1578616090_)))
                                                  (_hd1578716094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1578616090_))))
                                              (if (gx#identifier?
                                                   _hd1578716094_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g48549_|
                                                       _hd1578716094_)
                                                      (if (gx#stx-pair?
                                                           _tl1578816097_)
                                                          (let ((_e1578916100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1578816097_)))
                    (let ((_tl1579116107_
                           (let () (declare (not safe)) (##cdr _e1578916100_)))
                          (_hd1579016104_
                           (let ()
                             (declare (not safe))
                             (##car _e1578916100_))))
                      (if (gx#stx-null? _tl1579116107_)
                          (if (let () (declare (not safe)) (fxzero? _d15749_))
                              (let ((_L16110_ _tl1576316314_)
                                    (_L16112_ _hd1579016104_))
                                (___kont4366943670_ _L16110_ _L16112_))
                              (___kont4367143672_
                               _tl1576316314_
                               _hd1576216311_))
                          (___kont4367143672_ _tl1576316314_ _hd1576216311_))))
                  (___kont4367143672_ _tl1576316314_ _hd1576216311_))
              (___kont4367143672_ _tl1576316314_ _hd1576216311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4367143672_
                                                   _tl1576316314_
                                                   _hd1576216311_))))
                                          (___kont4367143672_
                                           _tl1576316314_
                                           _hd1576216311_)))))
                              (let ()
                                (declare (not safe))
                                (_g1575515979_)))))))))
          (let* ((_g1568715701_
                  (lambda (_g1568815697_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1568815697_)))
                 (_g1568615743_
                  (lambda (_g1568815705_)
                    (if (gx#stx-pair? _g1568815705_)
                        (let ((_e1569015708_ (gx#syntax-e _g1568815705_)))
                          (let ((_hd1569115712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1569015708_)))
                                (_tl1569215715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1569015708_))))
                            (if (gx#stx-pair? _tl1569215715_)
                                (let ((_e1569315718_
                                       (gx#syntax-e _tl1569215715_)))
                                  (let ((_hd1569415722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1569315718_)))
                                        (_tl1569515725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1569315718_))))
                                    (if (gx#stx-null? _tl1569515725_)
                                        ((lambda (_L15728_)
                                           (if (_simple-quote?15683_ _L15728_)
                                               (let ((__tmp48551
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp48550
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L15728_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp48551 __tmp48550))
                                               (_generate15685_ _L15728_ '0)))
                                         _hd1569415722_)
                                        (_g1568715701_ _g1568815705_))))
                                (_g1568715701_ _g1568815705_))))
                        (_g1568715701_ _g1568815705_)))))
            (_g1568615743_ _stx15680_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16615_)
        (let* ((___stx4378643787_ _$stx16615_)
               (_g1662016641_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4378643787_))))
          (let ((___kont4378943790_
                 (lambda (_L16709_)
                   (let ((__tmp48553 (gx#datum->syntax '#f 'quote))
                         (__tmp48552
                          (let () (declare (not safe)) (cons _L16709_ '()))))
                     (declare (not safe))
                     (cons __tmp48553 __tmp48552))))
                (___kont4379143792_
                 (lambda (_L16668_)
                   (let ((__tmp48559 (gx#datum->syntax '#f 'make-promise))
                         (__tmp48554
                          (let ((__tmp48555
                                 (let ((__tmp48558
                                        (gx#datum->syntax '#f 'lambda%))
                                       (__tmp48556
                                        (let ((__tmp48557
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L16668_ '()))))
                                          (declare (not safe))
                                          (cons '() __tmp48557))))
                                   (declare (not safe))
                                   (cons __tmp48558 __tmp48556))))
                            (declare (not safe))
                            (cons __tmp48555 '()))))
                     (declare (not safe))
                     (cons __tmp48559 __tmp48554)))))
            (let ((___match4380743808_
                   (lambda (_e1662316689_
                            _hd1662416693_
                            _tl1662516696_
                            _e1662616699_
                            _hd1662716703_
                            _tl1662816706_)
                     (let ((_L16709_ _hd1662716703_))
                       (if (gx#stx-datum? _L16709_)
                           (___kont4378943790_ _L16709_)
                           (___kont4379143792_ _hd1662716703_))))))
              (if (gx#stx-pair? ___stx4378643787_)
                  (let ((_e1662316689_ (gx#syntax-e ___stx4378643787_)))
                    (let ((_tl1662516696_
                           (let () (declare (not safe)) (##cdr _e1662316689_)))
                          (_hd1662416693_
                           (let ()
                             (declare (not safe))
                             (##car _e1662316689_))))
                      (if (gx#stx-pair? _tl1662516696_)
                          (let ((_e1662616699_ (gx#syntax-e _tl1662516696_)))
                            (let ((_tl1662816706_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1662616699_)))
                                  (_hd1662716703_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1662616699_))))
                              (if (gx#stx-null? _tl1662816706_)
                                  (___match4380743808_
                                   _e1662316689_
                                   _hd1662416693_
                                   _tl1662516696_
                                   _e1662616699_
                                   _hd1662716703_
                                   _tl1662816706_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1662016641_)))))
                          (let () (declare (not safe)) (_g1662016641_)))))
                  (let () (declare (not safe)) (_g1662016641_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16726_)
        (letrec ((_generate16729_
                  (lambda (_rest16848_)
                    (let _lp16851_ ((_rest16854_ _rest16848_)
                                    (_hd16856_ '())
                                    (_body16857_ '()))
                      (let* ((___stx4384443845_ _rest16854_)
                             (_g1686016872_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4384443845_))))
                        (let ((___kont4384743848_
                               (lambda (_L16900_ _L16902_)
                                 (let* ((___stx4382443825_ _L16902_)
                                        (_g1691916926_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4382443825_))))
                                   (let ((___kont4382743828_
                                          (lambda ()
                                            (let ((_arg16962_ (gx#genident)))
                                              (_lp16851_
                                               _L16900_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg16962_ _hd16856_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg16962_
                                                       _body16857_))))))
                                         (___kont4382943830_
                                          (lambda ()
                                            (if (gx#stx-null? _L16900_)
                                                (let ((_tail16948_
                                                       (gx#genident)))
                                                  (values (let ()
                                                            (declare
                                                              (not safe))
                                                            (foldl1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tail16948_
                            _hd16856_))
                  (let ((__tmp48560 (list _tail16948_)))
                    (declare (not safe))
                    (foldl1 cons __tmp48560 _body16857_))
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx16726_
                                                 _L16902_))))
                                         (___kont4383143832_
                                          (lambda ()
                                            (_lp16851_
                                             _L16900_
                                             _hd16856_
                                             (let ()
                                               (declare (not safe))
                                               (cons _L16902_ _body16857_))))))
                                     (if (gx#identifier? ___stx4382443825_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g48561_|
                                              ___stx4382443825_)
                                             (___kont4382743828_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g48562_|
                                                  ___stx4382443825_)
                                                 (___kont4382943830_)
                                                 (___kont4383143832_)))
                                         (___kont4383143832_))))))
                              (___kont4384943850_
                               (lambda ()
                                 (values (reverse _hd16856_)
                                         (reverse _body16857_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx4384443845_)
                              (let ((_e1686416890_
                                     (gx#syntax-e ___stx4384443845_)))
                                (let ((_tl1686616897_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1686416890_)))
                                      (_hd1686516894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1686416890_))))
                                  (___kont4384743848_
                                   _tl1686616897_
                                   _hd1686516894_)))
                              (___kont4384943850_))))))))
          (let* ((_g1673216743_
                  (lambda (_g1673316739_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1673316739_)))
                 (_g1673116844_
                  (lambda (_g1673316747_)
                    (if (gx#stx-pair? _g1673316747_)
                        (let ((_e1673516750_ (gx#syntax-e _g1673316747_)))
                          (let ((_hd1673616754_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1673516750_)))
                                (_tl1673716757_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1673516750_))))
                            ((lambda (_L16760_)
                               (if (and (gx#stx-list? _L16760_)
                                        (let ((__tmp48563
                                               (gx#stx-null? _L16760_)))
                                          (declare (not safe))
                                          (not __tmp48563)))
                                   (let ((_g48564_ (_generate16729_ _L16760_)))
                                     (begin
                                       (let ((_g48565_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g48564_)
                                                    (##vector-length _g48564_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g48565_ 3)))
                                             (error "Context expects 3 values"
                                                    _g48565_)))
                                       (let ((_hd16773_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48564_ 0)))
                                             (_body16775_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48564_ 1)))
                                             (_tail?16776_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48564_ 2))))
                                         (let* ((_g1677816786_
                                                 (lambda (_g1677916782_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1677916782_)))
                                                (_g1677716840_
                                                 (lambda (_g1677916790_)
                                                   ((lambda (_L16793_)
                                                      (let ()
                                                        (let* ((_g1680616814_
                                                                (lambda (_g1680716810_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1680716810_)))
                       (_g1680516836_
                        (lambda (_g1680716818_)
                          ((lambda (_L16821_)
                             (let ()
                               (let ()
                                 (if _tail?16776_
                                     (let ((__tmp48570
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp48566
                                            (let ((__tmp48567
                                                   (let ((__tmp48568
                                                          (let ((__tmp48569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'apply)))
                    (declare (not safe))
                    (cons __tmp48569 _L16821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48568 '()))))
                                              (declare (not safe))
                                              (cons _L16793_ __tmp48567))))
                                       (declare (not safe))
                                       (cons __tmp48570 __tmp48566))
                                     (let ((__tmp48573
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp48571
                                            (let ((__tmp48572
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L16821_ '()))))
                                              (declare (not safe))
                                              (cons _L16793_ __tmp48572))))
                                       (declare (not safe))
                                       (cons __tmp48573 __tmp48571))))))
                           _g1680716818_))))
                  (_g1680516836_ _body16775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1677916790_))))
                                           (_g1677716840_ _hd16773_)))))
                                   (_g1673216743_ _g1673316747_)))
                             _tl1673716757_)))
                        (_g1673216743_ _g1673316747_)))))
            (_g1673116844_ _stx16726_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16974_)
        (let ((_g1697716984_
               (lambda (_g1697816980_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g1697816980_))))
          (_g1697716984_ _$stx16974_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16988_)
        (let ((_g1699116998_
               (lambda (_g1699216994_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g1699216994_))))
          (_g1699116998_ _$stx16988_))))))
