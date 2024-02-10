(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g47847_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g47848_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g47849_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48679_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48682_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48683_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48756_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48757_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48759_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48760_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48805_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48806_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48807_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48808_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48820_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g48821_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4661_)
        (letrec ((_simple-lambda?4664_
                  (lambda (_hd8061_) (gx#stx-andmap gx#identifier? _hd8061_)))
                 (_opt-lambda?4666_
                  (lambda (_hd7913_)
                    (let _lp7916_ ((_rest7919_ _hd7913_) (_opt?7921_ '#f))
                      (let* ((___stx4249842499_ _rest7919_)
                             (_g79247936_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4249842499_))))
                        (let ((___kont4250142502_
                               (lambda (_L7968_ _L7970_)
                                 (let* ((___stx4247442475_ _L7970_)
                                        (_g79868000_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4247442475_))))
                                   (let ((___kont4247742478_
                                          (lambda (_L8038_)
                                            (_lp7916_ _L7968_ '#t)))
                                         (___kont4247942480_
                                          (lambda ()
                                            (if (gx#identifier? _L7970_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?7921_))
                                                    (_lp7916_ _L7968_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match4249542496_
                                            (lambda (_e79918018_
                                                     _hd79908022_
                                                     _tl79898025_
                                                     _e79948028_
                                                     _hd79938032_
                                                     _tl79928035_)
                                              (let ((_L8038_ _hd79908022_))
                                                (if (gx#identifier? _L8038_)
                                                    (___kont4247742478_
                                                     _L8038_)
                                                    (___kont4247942480_))))))
                                       (if (gx#stx-pair? ___stx4247442475_)
                                           (let ((_e79918018_
                                                  (gx#syntax-e
                                                   ___stx4247442475_)))
                                             (let ((_tl79898025_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e79918018_)))
                                                   (_hd79908022_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e79918018_))))
                                               (if (gx#stx-pair? _tl79898025_)
                                                   (let ((_e79948028_
                                                          (gx#syntax-e
                                                           _tl79898025_)))
                                                     (let ((_tl79928035_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e79948028_)))
                                                           (_hd79938032_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e79948028_))))
                                                       (if (gx#stx-null?
                                                            _tl79928035_)
                                                           (___match4249542496_
                                                            _e79918018_
                                                            _hd79908022_
                                                            _tl79898025_
                                                            _e79948028_
                                                            _hd79938032_
                                                            _tl79928035_)
                                                           (___kont4247942480_))))
                                                   (___kont4247942480_))))
                                           (___kont4247942480_)))))))
                              (___kont4250342504_
                               (lambda ()
                                 (if _opt?7921_
                                     (let ((_$e7947_
                                            (gx#stx-null? _rest7919_)))
                                       (if _$e7947_
                                           _$e7947_
                                           (gx#identifier? _rest7919_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx4249842499_)
                              (let ((_e79307958_
                                     (gx#syntax-e ___stx4249842499_)))
                                (let ((_tl79287965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e79307958_)))
                                      (_hd79297962_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e79307958_))))
                                  (___kont4250142502_
                                   _tl79287965_
                                   _hd79297962_)))
                              (___kont4250342504_)))))))
                 (_opt-lambda-split4667_
                  (lambda (_hd7765_)
                    (let _lp7768_ ((_rest7771_ _hd7765_)
                                   (_pre7773_ '())
                                   (_opt7774_ '()))
                      (let* ((___stx4253842539_ _rest7771_)
                             (_g77777789_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4253842539_))))
                        (let ((___kont4254142542_
                               (lambda (_L7817_ _L7819_)
                                 (let* ((___stx4251442515_ _L7819_)
                                        (_g78357850_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4251442515_))))
                                   (let ((___kont4251742518_
                                          (lambda (_L7888_ _L7890_)
                                            (_lp7768_
                                             _L7817_
                                             _pre7773_
                                             (let ((__tmp47623
                                                    (let ((__tmp47624
                                                           (_generate-bind4670_
                                                            _L7890_)))
                                                      (declare (not safe))
                                                      (cons __tmp47624
                                                            _L7888_))))
                                               (declare (not safe))
                                               (cons __tmp47623 _opt7774_)))))
                                         (___kont4251942520_
                                          (lambda ()
                                            (_lp7768_
                                             _L7817_
                                             (let ((__tmp47625
                                                    (_generate-bind4670_
                                                     _L7819_)))
                                               (declare (not safe))
                                               (cons __tmp47625 _pre7773_))
                                             _opt7774_))))
                                     (if (gx#stx-pair? ___stx4251442515_)
                                         (let ((_e78417868_
                                                (gx#syntax-e
                                                 ___stx4251442515_)))
                                           (let ((_tl78397875_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e78417868_)))
                                                 (_hd78407872_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e78417868_))))
                                             (if (gx#stx-pair? _tl78397875_)
                                                 (let ((_e78447878_
                                                        (gx#syntax-e
                                                         _tl78397875_)))
                                                   (let ((_tl78427885_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e78447878_)))
                                                         (_hd78437882_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e78447878_))))
                                                     (if (gx#stx-null?
                                                          _tl78427885_)
                                                         (___kont4251742518_
                                                          _hd78437882_
                                                          _hd78407872_)
                                                         (___kont4251942520_))))
                                                 (___kont4251942520_))))
                                         (___kont4251942520_))))))
                              (___kont4254342544_
                               (lambda ()
                                 (values (reverse _pre7773_)
                                         (reverse _opt7774_)
                                         (if (gx#identifier? _rest7771_)
                                             (_generate-bind4670_ _rest7771_)
                                             _rest7771_)))))
                          (if (gx#stx-pair? ___stx4253842539_)
                              (let ((_e77837807_
                                     (gx#syntax-e ___stx4253842539_)))
                                (let ((_tl77817814_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e77837807_)))
                                      (_hd77827811_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e77837807_))))
                                  (___kont4254142542_
                                   _tl77817814_
                                   _hd77827811_)))
                              (___kont4254342544_)))))))
                 (_kw-lambda?4668_
                  (lambda (_hd7433_)
                    (let _lp7436_ ((_rest7439_ _hd7433_)
                                   (_opt?7441_ '#f)
                                   (_key?7442_ '#f))
                      (let* ((___stx4260242603_ _rest7439_)
                             (_g74477477_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4260242603_))))
                        (let ((___kont4260542606_
                               (lambda (_L7672_ _L7674_ _L7675_)
                                 (let* ((___stx4257842579_ _L7674_)
                                        (_g76907704_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4257842579_))))
                                   (let ((___kont4258142582_
                                          (lambda (_L7742_)
                                            (if (gx#identifier? _L7742_)
                                                (_lp7436_
                                                 _L7672_
                                                 _opt?7441_
                                                 '#t)
                                                '#f)))
                                         (___kont4258342584_
                                          (lambda ()
                                            (if (gx#identifier? _L7674_)
                                                (_lp7436_
                                                 _L7672_
                                                 _opt?7441_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx4257842579_)
                                         (let ((_e76957722_
                                                (gx#syntax-e
                                                 ___stx4257842579_)))
                                           (let ((_tl76937729_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e76957722_)))
                                                 (_hd76947726_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e76957722_))))
                                             (if (gx#stx-pair? _tl76937729_)
                                                 (let ((_e76987732_
                                                        (gx#syntax-e
                                                         _tl76937729_)))
                                                   (let ((_tl76967739_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e76987732_)))
                                                         (_hd76977736_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e76987732_))))
                                                     (if (gx#stx-null?
                                                          _tl76967739_)
                                                         (___kont4258142582_
                                                          _hd76947726_)
                                                         (___kont4258342584_))))
                                                 (___kont4258342584_))))
                                         (___kont4258342584_))))))
                              (___kont4260742608_
                               (lambda (_L7629_ _L7631_)
                                 (if (gx#identifier? _L7631_)
                                     (_lp7436_ _L7629_ _opt?7441_ '#t)
                                     '#f)))
                              (___kont4260942610_
                               (lambda (_L7509_ _L7511_)
                                 (let* ((___stx4255442555_ _L7511_)
                                        (_g75277541_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4255442555_))))
                                   (let ((___kont4255742558_
                                          (lambda (_L7579_)
                                            (if (gx#identifier? _L7579_)
                                                (_lp7436_
                                                 _L7509_
                                                 '#t
                                                 _key?7442_)
                                                '#f)))
                                         (___kont4255942560_
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
                                     (if (gx#stx-pair? ___stx4255442555_)
                                         (let ((_e75327559_
                                                (gx#syntax-e
                                                 ___stx4255442555_)))
                                           (let ((_tl75307566_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e75327559_)))
                                                 (_hd75317563_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e75327559_))))
                                             (if (gx#stx-pair? _tl75307566_)
                                                 (let ((_e75357569_
                                                        (gx#syntax-e
                                                         _tl75307566_)))
                                                   (let ((_tl75337576_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e75357569_)))
                                                         (_hd75347573_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e75357569_))))
                                                     (if (gx#stx-null?
                                                          _tl75337576_)
                                                         (___kont4255742558_
                                                          _hd75317563_)
                                                         (___kont4255942560_))))
                                                 (___kont4255942560_))))
                                         (___kont4255942560_))))))
                              (___kont4261142612_
                               (lambda ()
                                 (if _key?7442_
                                     (let ((_$e7488_
                                            (gx#stx-null? _rest7439_)))
                                       (if _$e7488_
                                           _$e7488_
                                           (gx#identifier? _rest7439_)))
                                     '#f))))
                          (let ((___match4262542626_
                                 (lambda (_e74547652_
                                          _hd74537656_
                                          _tl74527659_
                                          _e74577662_
                                          _hd74567666_
                                          _tl74557669_)
                                   (let ((_L7672_ _tl74557669_)
                                         (_L7674_ _hd74567666_)
                                         (_L7675_ _hd74537656_))
                                     (if (gx#stx-keyword? _L7675_)
                                         (___kont4260542606_
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
                                                   (___kont4260742608_
                                                    _tl74557669_
                                                    _hd74567666_)
                                                   (___kont4260942610_
                                                    _tl74527659_
                                                    _hd74537656_)))
                                             (___kont4260942610_
                                              _tl74527659_
                                              _hd74537656_)))))))
                            (if (gx#stx-pair? ___stx4260242603_)
                                (let ((_e74547652_
                                       (gx#syntax-e ___stx4260242603_)))
                                  (let ((_tl74527659_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e74547652_)))
                                        (_hd74537656_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e74547652_))))
                                    (if (gx#stx-pair? _tl74527659_)
                                        (let ((_e74577662_
                                               (gx#syntax-e _tl74527659_)))
                                          (let ((_tl74557669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e74577662_)))
                                                (_hd74567666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e74577662_))))
                                            (___match4262542626_
                                             _e74547652_
                                             _hd74537656_
                                             _tl74527659_
                                             _e74577662_
                                             _hd74567666_
                                             _tl74557669_)))
                                        (if (gx#stx-datum? _hd74537656_)
                                            (let ((_e74637615_
                                                   (gx#stx-e _hd74537656_)))
                                              (___kont4260942610_
                                               _tl74527659_
                                               _hd74537656_))
                                            (___kont4260942610_
                                             _tl74527659_
                                             _hd74537656_)))))
                                (___kont4261142612_))))))))
                 (_kw-lambda-split4669_
                  (lambda (_hd7166_)
                    (let _lp7169_ ((_rest7172_ _hd7166_)
                                   (_kwvar7174_ '#f)
                                   (_kwargs7175_ '())
                                   (_args7176_ '()))
                      (let* ((___stx4267642677_ _rest7172_)
                             (_g71817211_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4267642677_))))
                        (let ((___kont4267942680_
                               (lambda (_L7330_ _L7332_ _L7333_)
                                 (let ((_key7347_ (gx#stx-e _L7333_)))
                                   (if (let ((__tmp47631
                                              (lambda (_kwarg7350_)
                                                (let ((__tmp47632
                                                       (car _kwarg7350_)))
                                                  (declare (not safe))
                                                  (eq? _key7347_
                                                       __tmp47632)))))
                                         (declare (not safe))
                                         (find __tmp47631 _kwargs7175_))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx4661_
                                        _hd7166_
                                        _key7347_)
                                       (let* ((___stx4265242653_ _L7332_)
                                              (_g73547369_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx4265242653_))))
                                         (let ((___kont4265542656_
                                                (lambda (_L7407_ _L7409_)
                                                  (_lp7169_
                                                   _L7330_
                                                   _kwvar7174_
                                                   (let ((__tmp47626
                                                          (list _key7347_
                                                                (_generate-bind4670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7409_)
                        _L7407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47626
                                                           _kwargs7175_))
                                                   _args7176_)))
                                               (___kont4265742658_
                                                (lambda ()
                                                  (_lp7169_
                                                   _L7330_
                                                   _kwvar7174_
                                                   (let ((__tmp47627
                                                          (list _key7347_
                                                                (_generate-bind4670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7332_)
                        (let ((__tmp47630 (gx#datum->syntax '#f 'error))
                              (__tmp47628
                               (let ((__tmp47629
                                      (let ()
                                        (declare (not safe))
                                        (cons _L7333_ '()))))
                                 (declare (not safe))
                                 (cons '"Missing required keyword argument"
                                       __tmp47629))))
                          (declare (not safe))
                          (cons __tmp47630 __tmp47628)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47627
                                                           _kwargs7175_))
                                                   _args7176_))))
                                           (if (gx#stx-pair? ___stx4265242653_)
                                               (let ((_e73607387_
                                                      (gx#syntax-e
                                                       ___stx4265242653_)))
                                                 (let ((_tl73587394_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e73607387_)))
                                                       (_hd73597391_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e73607387_))))
                                                   (if (gx#stx-pair?
                                                        _tl73587394_)
                                                       (let ((_e73637397_
                                                              (gx#syntax-e
                                                               _tl73587394_)))
                                                         (let ((_tl73617404_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e73637397_)))
                       (_hd73627401_
                        (let () (declare (not safe)) (##car _e73637397_))))
                   (if (gx#stx-null? _tl73617404_)
                       (___kont4265542656_ _hd73627401_ _hd73597391_)
                       (___kont4265742658_))))
               (___kont4265742658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4265742658_))))))))
                              (___kont4268142682_
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
                              (___kont4268342684_
                               (lambda (_L7239_ _L7241_)
                                 (_lp7169_
                                  _L7239_
                                  _kwvar7174_
                                  _kwargs7175_
                                  (let ()
                                    (declare (not safe))
                                    (cons _L7241_ _args7176_)))))
                              (___kont4268542686_
                               (lambda ()
                                 (values _kwvar7174_
                                         (reverse _kwargs7175_)
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 cons
                                                   _rest7172_
                                                   _args7176_))))))
                          (let ((___match4269942700_
                                 (lambda (_e71887310_
                                          _hd71877314_
                                          _tl71867317_
                                          _e71917320_
                                          _hd71907324_
                                          _tl71897327_)
                                   (let ((_L7330_ _tl71897327_)
                                         (_L7332_ _hd71907324_)
                                         (_L7333_ _hd71877314_))
                                     (if (gx#stx-keyword? _L7333_)
                                         (___kont4267942680_
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
                                                   (___kont4268142682_
                                                    _tl71897327_
                                                    _hd71907324_)
                                                   (___kont4268342684_
                                                    _tl71867317_
                                                    _hd71877314_)))
                                             (___kont4268342684_
                                              _tl71867317_
                                              _hd71877314_)))))))
                            (if (gx#stx-pair? ___stx4267642677_)
                                (let ((_e71887310_
                                       (gx#syntax-e ___stx4267642677_)))
                                  (let ((_tl71867317_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e71887310_)))
                                        (_hd71877314_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e71887310_))))
                                    (if (gx#stx-pair? _tl71867317_)
                                        (let ((_e71917320_
                                               (gx#syntax-e _tl71867317_)))
                                          (let ((_tl71897327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e71917320_)))
                                                (_hd71907324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e71917320_))))
                                            (___match4269942700_
                                             _e71887310_
                                             _hd71877314_
                                             _tl71867317_
                                             _e71917320_
                                             _hd71907324_
                                             _tl71897327_)))
                                        (if (gx#stx-datum? _hd71877314_)
                                            (let ((_e71977273_
                                                   (gx#stx-e _hd71877314_)))
                                              (___kont4268342684_
                                               _tl71867317_
                                               _hd71877314_))
                                            (___kont4268342684_
                                             _tl71867317_
                                             _hd71877314_)))))
                                (___kont4268542686_))))))))
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
                        (let* ((___stx4275042751_ _rest6869_)
                               (_g68746886_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx4275042751_))))
                          (let ((___kont4275342754_
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
                                                         (let ((_e69376953_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69336950_)))
                   (let ((_hd69366957_
                          (let () (declare (not safe)) (##car _e69376953_)))
                         (_tl69356960_
                          (let () (declare (not safe)) (##cdr _e69376953_))))
                     (if (gx#stx-pair? _tl69356960_)
                         (let ((_e69406963_ (gx#syntax-e _tl69356960_)))
                           (let ((_hd69396967_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e69406963_)))
                                 (_tl69386970_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e69406963_))))
                             (if (gx#stx-null? _tl69386970_)
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
                                                             (let ((_e69977010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g69927007_)))
                       (let ((_hd69967014_
                              (let ()
                                (declare (not safe))
                                (##car _e69977010_)))
                             (_tl69957017_
                              (let ()
                                (declare (not safe))
                                (##cdr _e69977010_))))
                         ((lambda (_L7020_ _L7022_)
                            (let* ((___stx4272642727_ _L7022_)
                                   (_g70347048_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx4272642727_))))
                              (let ((___kont4272942730_
                                     (lambda (_L7086_)
                                       (_lp6866_
                                        _L7020_
                                        (_cons-id6863_ _L7086_ _ids6871_))))
                                    (___kont4273142732_
                                     (lambda ()
                                       (_lp6866_
                                        _L7020_
                                        (_cons-id6863_ _L7022_ _ids6871_)))))
                                (if (gx#stx-pair? ___stx4272642727_)
                                    (let ((_e70397066_
                                           (gx#syntax-e ___stx4272642727_)))
                                      (let ((_tl70377073_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e70397066_)))
                                            (_hd70387070_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e70397066_))))
                                        (if (gx#stx-pair? _tl70377073_)
                                            (let ((_e70427076_
                                                   (gx#syntax-e _tl70377073_)))
                                              (let ((_tl70407083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e70427076_)))
                                                    (_hd70417080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e70427076_))))
                                                (if (gx#stx-null? _tl70407083_)
                                                    (___kont4272942730_
                                                     _hd70387070_)
                                                    (___kont4273142732_))))
                                            (___kont4273142732_))))
                                    (___kont4273142732_)))))
                          _tl69957017_
                          _hd69967014_)))
                     (_g69917003_ _g69927007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g69907105_ _L6914_))
                                               (if (let ((__tmp47633
                                                          (gx#stx-e _L6916_)))
                                                     (declare (not safe))
                                                     (eq? __tmp47633 '#!key))
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
                         (let ((_e71157128_ (gx#syntax-e _g71107125_)))
                           (let ((_hd71147132_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e71157128_)))
                                 (_tl71137135_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e71157128_))))
                             ((lambda (_L7138_ _L7140_)
                                (_lp6866_
                                 _L7138_
                                 (_cons-id6863_ _L7140_ _ids6871_)))
                              _tl71137135_
                              _hd71147132_)))
                         (_g71097121_ _g71107125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71087151_ _L6914_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx4661_
                                                          _rest6869_)))))))
                                (___kont4275542756_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest6869_)
                                        _ids6871_
                                        (_cons-id6863_ _rest6869_ _ids6871_))
                                    _stx4661_))))
                            (if (gx#stx-pair? ___stx4275042751_)
                                (let ((_e68806904_
                                       (gx#syntax-e ___stx4275042751_)))
                                  (let ((_tl68786911_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e68806904_)))
                                        (_hd68796908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e68806904_))))
                                    (___kont4275342754_
                                     _tl68786911_
                                     _hd68796908_)))
                                (___kont4275542756_))))))))
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
                                  (let ((_e66666706_
                                         (gx#syntax-e _g66596703_)))
                                    (let ((_hd66656710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66666706_)))
                                          (_tl66646713_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66666706_))))
                                      (if (gx#stx-pair/null? _hd66656710_)
                                          (let ((_g47634_
                                                 (gx#syntax-split-splice
                                                  _hd66656710_
                                                  '0)))
                                            (begin
                                              (let ((_g47635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g47634_)
                                                           (##vector-length
                                                            _g47634_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g47635_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g47635_)))
                                              (let ((_target66676716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47634_
                                                        0)))
                                                    (_tl66696719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47634_
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
                              (if (gx#stx-pair? _tl66646713_)
                                  (let ((_e66786746_
                                         (gx#syntax-e _tl66646713_)))
                                    (let ((_hd66776750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66786746_)))
                                          (_tl66766753_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66786746_))))
                                      (if (gx#stx-pair/null? _hd66776750_)
                                          (let ((_g47636_
                                                 (gx#syntax-split-splice
                                                  _hd66776750_
                                                  '0)))
                                            (begin
                                              (let ((_g47637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g47636_)
                                                           (##vector-length
                                                            _g47636_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g47637_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g47637_)))
                                              (let ((_target66796756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47636_
                                                        0)))
                                                    (_tl66816759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47636_
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
                              (if (gx#stx-pair? _tl66766753_)
                                  (let ((_e66906786_
                                         (gx#syntax-e _tl66766753_)))
                                    (let ((_hd66896790_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66906786_)))
                                          (_tl66886793_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66906786_))))
                                      (if (gx#stx-pair? _tl66886793_)
                                          (let ((_e66936796_
                                                 (gx#syntax-e _tl66886793_)))
                                            (let ((_hd66926800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e66936796_)))
                                                  (_tl66916803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e66936796_))))
                                              (if (gx#stx-null? _tl66916803_)
                                                  ((lambda (_L6806_
                                                            _L6808_
                                                            _L6809_
                                                            _L6810_)
                                                     (let ()
                                                       (let ((__tmp47643
                                                              (gx#datum->syntax
                                                               '#f
                                                               'lambda%))
                                                             (__tmp47638
                                                              (let ((__tmp47639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47642
                                    (lambda (_g68396844_ _g68406847_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g68396844_ _g68406847_))))
                                   (__tmp47640
                                    (let ((__tmp47641
                                           (lambda (_g68416850_ _g68426853_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g68416850_
                                                     _g68426853_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp47641 _L6808_ _L6809_))))
                               (declare (not safe))
                               (foldr1 __tmp47642 __tmp47640 _L6810_))))
                        (declare (not safe))
                        (cons __tmp47639 _L6806_))))
                 (declare (not safe))
                 (cons __tmp47643 __tmp47638))))
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
                    (let ((__tmp47645
                           (list _pre6648_
                                 (_generate-opt-clause4675_
                                  _primary6646_
                                  _pre6648_
                                  _opt6649_)))
                          (__tmp47644
                           (_generate-opt-dispatch*4674_
                            _primary6646_
                            _pre6648_
                            _opt6649_
                            _tail6650_)))
                      (declare (not safe))
                      (cons __tmp47645 __tmp47644))))
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
                                        (let ((_g47660_
                                               (gx#syntax-split-splice
                                                _g62266246_
                                                '0)))
                                          (begin
                                            (let ((_g47661_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g47660_)
                                                         (##vector-length
                                                          _g47660_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g47661_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g47661_)))
                                            (let ((_target62286249_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g47660_
                                                      0)))
                                                  (_tl62306252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g47660_
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
                                               (let ((_g47662_
                                                      (gx#syntax-split-splice
                                                       _g63016321_
                                                       '0)))
                                                 (begin
                                                   (let ((_g47663_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g47662_)
                        (##vector-length _g47662_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g47663_ 2)))
                 (error "Context expects 2 values" _g47663_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target63036324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g47662_
                                                             0)))
                                                         (_tl63056327_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g47662_
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
                                                         (let ((__tmp47665
                                                                (list (let ((__tmp47669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (lambda (_g64006405_ _g64016408_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g64006405_ _g64016408_))))
                                    (__tmp47666
                                     (let ((__tmp47668
                                            (lambda (_g64026411_ _g64036414_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g64026411_
                                                      _g64036414_))))
                                           (__tmp47667
                                            (let ()
                                              (declare (not safe))
                                              (cons _L6386_ '()))))
                                       (declare (not safe))
                                       (foldr1 __tmp47668
                                               __tmp47667
                                               _L6354_))))
                                (declare (not safe))
                                (foldr1 __tmp47669 __tmp47666 _L6279_))
                              (_generate-opt-clause4675_
                               _primary6203_
                               (let ((__tmp47670 (reverse _right*6222_)))
                                 (declare (not safe))
                                 (foldr1 cons __tmp47670 _pre6205_))
                               _rest6219_)))
                       (__tmp47664 (_recur6209_ _rest6219_ _right*6222_)))
                   (declare (not safe))
                   (cons __tmp47665 __tmp47664)))))
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
                                            (let ((_e64376477_
                                                   (gx#syntax-e _g64306474_)))
                                              (let ((_hd64366481_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64376477_)))
                                                    (_tl64356484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64376477_))))
                                                (if (gx#stx-pair/null?
                                                     _hd64366481_)
                                                    (let ((_g47646_
                                                           (gx#syntax-split-splice
                                                            _hd64366481_
                                                            '0)))
                                                      (begin
                                                        (let ((_g47647_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g47646_)
                             (##vector-length _g47646_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g47647_ 2)))
                      (error "Context expects 2 values" _g47647_)))
                (let ((_target64386487_
                       (let () (declare (not safe)) (##vector-ref _g47646_ 0)))
                      (_tl64406490_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g47646_ 1))))
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
                                        (if (gx#stx-pair? _tl64356484_)
                                            (let ((_e64496517_
                                                   (gx#syntax-e _tl64356484_)))
                                              (let ((_hd64486521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64496517_)))
                                                    (_tl64476524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64496517_))))
                                                (if (gx#stx-pair/null?
                                                     _hd64486521_)
                                                    (let ((_g47648_
                                                           (gx#syntax-split-splice
                                                            _hd64486521_
                                                            '0)))
                                                      (begin
                                                        (let ((_g47649_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g47648_)
                             (##vector-length _g47648_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g47649_ 2)))
                      (error "Context expects 2 values" _g47649_)))
                (let ((_target64506527_
                       (let () (declare (not safe)) (##vector-ref _g47648_ 0)))
                      (_tl64526530_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g47648_ 1))))
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
                                        (if (gx#stx-pair? _tl64476524_)
                                            (let ((_e64616557_
                                                   (gx#syntax-e _tl64476524_)))
                                              (let ((_hd64606561_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64616557_)))
                                                    (_tl64596564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64616557_))))
                                                (if (gx#stx-pair? _tl64596564_)
                                                    (let ((_e64646567_
                                                           (gx#syntax-e
                                                            _tl64596564_)))
                                                      (let ((_hd64636571_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e64646567_)))
                    (_tl64626574_
                     (let () (declare (not safe)) (##cdr _e64646567_))))
                (if (gx#stx-null? _tl64626574_)
                    ((lambda (_L6577_ _L6579_ _L6580_ _L6581_)
                       (let ()
                         (list (list (let ((__tmp47652
                                            (lambda (_g66096614_ _g66106617_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g66096614_
                                                      _g66106617_))))
                                           (__tmp47650
                                            (let ((__tmp47651
                                                   (lambda (_g66116620_
                                                            _g66126623_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g66116620_
                                                             _g66126623_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp47651
                                                      _L6579_
                                                      _L6580_))))
                                       (declare (not safe))
                                       (foldr1 __tmp47652 __tmp47650 _L6581_))
                                     (gx#stx-wrap-source
                                      (let ((__tmp47659
                                             (gx#datum->syntax '#f 'apply))
                                            (__tmp47653
                                             (let ((__tmp47654
                                                    (let ((__tmp47658
                                                           (lambda (_g66256630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g66266633_)
                     (let ()
                       (declare (not safe))
                       (cons _g66256630_ _g66266633_))))
                  (__tmp47655
                   (let ((__tmp47657
                          (lambda (_g66276636_ _g66286639_)
                            (let ()
                              (declare (not safe))
                              (cons _g66276636_ _g66286639_))))
                         (__tmp47656
                          (let () (declare (not safe)) (cons _L6579_ '()))))
                     (declare (not safe))
                     (foldr1 __tmp47657 __tmp47656 _L6580_))))
              (declare (not safe))
              (foldr1 __tmp47658 __tmp47655 _L6581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L6577_ __tmp47654))))
                                        (declare (not safe))
                                        (cons __tmp47659 __tmp47653))
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
                                 (let ((__tmp47685
                                        (gx#datum->syntax '#f 'let-values))
                                       (__tmp47679
                                        (let ((__tmp47681
                                               (let ((__tmp47682
                                                      (let ((__tmp47684
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L5934_ '())))
                    (__tmp47683
                     (let () (declare (not safe)) (cons _L5965_ '()))))
                (declare (not safe))
                (cons __tmp47684 __tmp47683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47682 '())))
                                              (__tmp47680
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L5993_ '()))))
                                          (declare (not safe))
                                          (cons __tmp47681 __tmp47680))))
                                   (declare (not safe))
                                   (cons __tmp47685 __tmp47679)))))
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
                                        (let ((_e60276064_
                                               (gx#syntax-e _g60216061_)))
                                          (let ((_hd60266068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60276064_)))
                                                (_tl60256071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60276064_))))
                                            (if (gx#stx-pair/null?
                                                 _hd60266068_)
                                                (let ((_g47671_
                                                       (gx#syntax-split-splice
                                                        _hd60266068_
                                                        '0)))
                                                  (begin
                                                    (let ((_g47672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g47671_)
                         (##vector-length _g47671_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g47672_ 2)))
                  (error "Context expects 2 values" _g47672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target60286074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47671_
                                                              0)))
                                                          (_tl60306077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47671_
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
                                    (if (gx#stx-pair? _tl60256071_)
                                        (let ((_e60396104_
                                               (gx#syntax-e _tl60256071_)))
                                          (let ((_hd60386108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60396104_)))
                                                (_tl60376111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60396104_))))
                                            (if (gx#stx-pair/null?
                                                 _hd60386108_)
                                                (let ((_g47673_
                                                       (gx#syntax-split-splice
                                                        _hd60386108_
                                                        '0)))
                                                  (begin
                                                    (let ((_g47674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g47673_)
                         (##vector-length _g47673_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g47674_ 2)))
                  (error "Context expects 2 values" _g47674_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target60406114_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47673_
                                                              0)))
                                                          (_tl60426117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g47673_
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
                                    (if (gx#stx-pair? _tl60376111_)
                                        (let ((_e60516144_
                                               (gx#syntax-e _tl60376111_)))
                                          (let ((_hd60506148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60516144_)))
                                                (_tl60496151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60516144_))))
                                            (if (gx#stx-null? _tl60496151_)
                                                ((lambda (_L6154_
                                                          _L6156_
                                                          _L6157_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (let ((__tmp47675
                                                             (let ((__tmp47678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g61826187_ _g61836190_)
                              (let ()
                                (declare (not safe))
                                (cons _g61826187_ _g61836190_))))
                           (__tmp47676
                            (let ((__tmp47677
                                   (lambda (_g61846193_ _g61856196_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g61846193_ _g61856196_)))))
                              (declare (not safe))
                              (foldr1 __tmp47677 '() _L6156_))))
                       (declare (not safe))
                       (foldr1 __tmp47678 __tmp47676 _L6157_))))
                (declare (not safe))
                (cons _L6154_ __tmp47675))
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
                                                    (let ((_e58025824_
                                                           (gx#syntax-e
                                                            _g57955821_)))
                                                      (let ((_hd58015828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e58025824_)))
                    (_tl58005831_
                     (let () (declare (not safe)) (##cdr _e58025824_))))
                (if (gx#stx-pair? _tl58005831_)
                    (let ((_e58055834_ (gx#syntax-e _tl58005831_)))
                      (let ((_hd58045838_
                             (let () (declare (not safe)) (##car _e58055834_)))
                            (_tl58035841_
                             (let ()
                               (declare (not safe))
                               (##cdr _e58055834_))))
                        (if (gx#stx-pair? _tl58035841_)
                            (let ((_e58085844_ (gx#syntax-e _tl58035841_)))
                              (let ((_hd58075848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e58085844_)))
                                    (_tl58065851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e58085844_))))
                                (if (gx#stx-pair? _tl58065851_)
                                    (let ((_e58115854_
                                           (gx#syntax-e _tl58065851_)))
                                      (let ((_hd58105858_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e58115854_)))
                                            (_tl58095861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e58115854_))))
                                        (if (gx#stx-null? _tl58095861_)
                                            ((lambda (_L5864_
                                                      _L5866_
                                                      _L5867_
                                                      _L5868_)
                                               (let ()
                                                 (let ((__tmp47702
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp47686
                                                        (let ((__tmp47688
                                                               (let ((__tmp47689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47701
                                     (let ()
                                       (declare (not safe))
                                       (cons _L5868_ '())))
                                    (__tmp47690
                                     (let ((__tmp47691
                                            (let ((__tmp47700
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp47692
                                                   (let ((__tmp47695
                                                          (let ((__tmp47699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp47696
                         (let ((__tmp47697
                                (let ((__tmp47698
                                       (gx#datum->syntax '#f 'absent-value)))
                                  (declare (not safe))
                                  (cons __tmp47698 '()))))
                           (declare (not safe))
                           (cons _L5867_ __tmp47697))))
                    (declare (not safe))
                    (cons __tmp47699 __tmp47696)))
                 (__tmp47693
                  (let ((__tmp47694
                         (let () (declare (not safe)) (cons _L5867_ '()))))
                    (declare (not safe))
                    (cons _L5866_ __tmp47694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47695
                                                           __tmp47693))))
                                              (declare (not safe))
                                              (cons __tmp47700 __tmp47692))))
                                       (declare (not safe))
                                       (cons __tmp47691 '()))))
                                (declare (not safe))
                                (cons __tmp47701 __tmp47690))))
                         (declare (not safe))
                         (cons __tmp47689 '())))
                      (__tmp47687
                       (let () (declare (not safe)) (cons _L5864_ '()))))
                  (declare (not safe))
                  (cons __tmp47688 __tmp47687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47702
                                                         __tmp47686))))
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
                                                             (let ((_g47703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g56065626_ '0)))
                       (begin
                         (let ((_g47704_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g47703_)
                                      (##vector-length _g47703_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g47704_ 2)))
                               (error "Context expects 2 values" _g47704_)))
                         (let ((_target56085629_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47703_ 0)))
                               (_tl56105632_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47703_ 1))))
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
                                               (let ((__tmp47710
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp47705
                                                      (let ((__tmp47707
                                                             (let ((__tmp47708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47709
                                   (lambda (_g57335736_ _g57345739_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g57335736_ _g57345739_)))))
                              (declare (not safe))
                              (foldr1 __tmp47709 _L5691_ _L5659_))))
                       (declare (not safe))
                       (cons _L5593_ __tmp47708)))
                    (__tmp47706
                     (let () (declare (not safe)) (cons _L5719_ '()))))
                (declare (not safe))
                (cons __tmp47707 __tmp47706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47710 __tmp47705))
                                               (gx#stx-source _stx4661_)))))
                                        _g57055716_))))
                               (_g57035742_
                                (_make-body5283_
                                 _kwargs5279_
                                 (let ((__tmp47711
                                        (lambda (_g57455748_ _g57465751_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g57455748_ _g57465751_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47711 '() _L5659_)))))))
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
                                                             (let ((_g47712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g54175437_ '0)))
                       (begin
                         (let ((_g47713_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g47712_)
                                      (##vector-length _g47712_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g47713_ 2)))
                               (error "Context expects 2 values" _g47713_)))
                         (let ((_target54195440_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47712_ 0)))
                               (_tl54215443_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47712_ 1))))
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
                                (let ((__tmp47726
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp47714
                                       (let ((__tmp47724
                                              (let ((__tmp47725
                                                     (gx#datum->syntax
                                                      '#f
                                                      'args)))
                                                (declare (not safe))
                                                (cons _L5404_ __tmp47725)))
                                             (__tmp47715
                                              (let ((__tmp47716
                                                     (let ((__tmp47723
                                                            (gx#datum->syntax
                                                             '#f
                                                             'apply))
                                                           (__tmp47717
                                                            (let ((__tmp47718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp47719
                                  (let ((__tmp47722
                                         (lambda (_g55165519_ _g55175522_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g55165519_ _g55175522_))))
                                        (__tmp47720
                                         (let ((__tmp47721
                                                (gx#datum->syntax '#f 'args)))
                                           (declare (not safe))
                                           (cons __tmp47721 '()))))
                                    (declare (not safe))
                                    (foldr1 __tmp47722 __tmp47720 _L5470_))))
                             (declare (not safe))
                             (cons _L5404_ __tmp47719))))
                      (declare (not safe))
                      (cons _L5502_ __tmp47718))))
               (declare (not safe))
               (cons __tmp47723 __tmp47717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp47716 '()))))
                                         (declare (not safe))
                                         (cons __tmp47724 __tmp47715))))
                                  (declare (not safe))
                                  (cons __tmp47726 __tmp47714))
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
                                (let ((__tmp47734
                                       (gx#datum->syntax '#f 'hash-ref))
                                      (__tmp47727
                                       (let ((__tmp47728
                                              (let ((__tmp47731
                                                     (let ((__tmp47733
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp47732
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L5551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp47733 __tmp47732)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp47729
                                                     (let ((__tmp47730
                                                            (gx#datum->syntax
                                                             '#f
                                                             'absent-value)))
                                                       (declare (not safe))
                                                       (cons __tmp47730 '()))))
                                                (declare (not safe))
                                                (cons __tmp47731 __tmp47729))))
                                         (declare (not safe))
                                         (cons _L5404_ __tmp47728))))
                                  (declare (not safe))
                                  (cons __tmp47734 __tmp47727))))
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
                             (let ((__tmp47741
                                    (gx#datum->syntax '#f 'let-values))
                                   (__tmp47735
                                    (let ((__tmp47737
                                           (let ((__tmp47738
                                                  (let ((__tmp47740
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L5303_ '())))
                                                        (__tmp47739
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L5359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47740
                                                          __tmp47739))))
                                             (declare (not safe))
                                             (cons __tmp47738 '())))
                                          (__tmp47736
                                           (let ()
                                             (declare (not safe))
                                             (cons _L5331_ '()))))
                                      (declare (not safe))
                                      (cons __tmp47737 __tmp47736))))
                               (declare (not safe))
                               (cons __tmp47741 __tmp47735)))))
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
                                  (let ((_e52025221_
                                         (gx#syntax-e _g51965218_)))
                                    (let ((_hd52015225_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e52025221_)))
                                          (_tl52005228_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e52025221_))))
                                      (if (gx#stx-pair? _tl52005228_)
                                          (let ((_e52055231_
                                                 (gx#syntax-e _tl52005228_)))
                                            (let ((_hd52045235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e52055231_)))
                                                  (_tl52035238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e52055231_))))
                                              (if (gx#stx-pair? _tl52035238_)
                                                  (let ((_e52085241_
                                                         (gx#syntax-e
                                                          _tl52035238_)))
                                                    (let ((_hd52075245_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e52085241_)))
                                                          (_tl52065248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e52085241_))))
                                                      (if (gx#stx-null?
                                                           _tl52065248_)
                                                          ((lambda (_L5251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5253_
                            _L5254_)
                     (let ()
                       (let ((__tmp47754 (gx#datum->syntax '#f 'lambda%))
                             (__tmp47742
                              (let ((__tmp47743
                                     (let ((__tmp47744
                                            (let ((__tmp47753
                                                   (gx#datum->syntax
                                                    '#f
                                                    'apply))
                                                  (__tmp47745
                                                   (let ((__tmp47752
                                                          (gx#datum->syntax
                                                           '#f
                                                           'keyword-dispatch))
                                                         (__tmp47746
                                                          (let ((__tmp47749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp47751 (gx#datum->syntax '#f 'quote))
                               (__tmp47750
                                (let ()
                                  (declare (not safe))
                                  (cons _L5254_ '()))))
                           (declare (not safe))
                           (cons __tmp47751 __tmp47750)))
                        (__tmp47747
                         (let ((__tmp47748
                                (let ()
                                  (declare (not safe))
                                  (cons _L5251_ '()))))
                           (declare (not safe))
                           (cons _L5253_ __tmp47748))))
                    (declare (not safe))
                    (cons __tmp47749 __tmp47747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47752
                                                           __tmp47746))))
                                              (declare (not safe))
                                              (cons __tmp47753 __tmp47745))))
                                       (declare (not safe))
                                       (cons __tmp47744 '()))))
                                (declare (not safe))
                                (cons _L5251_ __tmp47743))))
                         (declare (not safe))
                         (cons __tmp47754 __tmp47742))))
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
          (let* ((___stx4276642767_ _stx4661_)
                 (_g46824713_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4276642767_))))
            (let ((___kont4276942770_
                   (lambda (_L5145_ _L5147_)
                     (let ((__tmp47756 (gx#datum->syntax '#f 'lambda%))
                           (__tmp47755
                            (let ()
                              (declare (not safe))
                              (cons _L5147_ _L5145_))))
                       (declare (not safe))
                       (cons __tmp47756 __tmp47755))))
                  (___kont4277142772_
                   (lambda (_L4917_ _L4919_)
                     (let ((_g47757_ (_opt-lambda-split4667_ _L4919_)))
                       (begin
                         (let ((_g47758_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g47757_)
                                      (##vector-length _g47757_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g47758_ 3)))
                               (error "Context expects 3 values" _g47758_)))
                         (let ((_pre4932_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47757_ 0)))
                               (_opt4934_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47757_ 1)))
                               (_tail4935_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47757_ 2))))
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
                               (let ((_g47759_
                                      (gx#syntax-split-splice _g49945014_ '0)))
                                 (begin
                                   (let ((_g47760_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g47759_)
                                                (##vector-length _g47759_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g47760_ 2)))
                                         (error "Context expects 2 values"
                                                _g47760_)))
                                   (let ((_target49965017_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g47759_ 0)))
                                         (_tl49985020_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g47759_ 1))))
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
                                         (let ((__tmp47767
                                                (gx#datum->syntax
                                                 '#f
                                                 'let-values))
                                               (__tmp47761
                                                (let ((__tmp47763
                                                       (let ((__tmp47764
                                                              (let ((__tmp47766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons _L4952_ '())))
                            (__tmp47765
                             (let () (declare (not safe)) (cons _L4980_ '()))))
                        (declare (not safe))
                        (cons __tmp47766 __tmp47765))))
                 (declare (not safe))
                 (cons __tmp47764 '())))
              (__tmp47762 (let () (declare (not safe)) (cons _L5079_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47763
                                                        __tmp47762))))
                                           (declare (not safe))
                                           (cons __tmp47767 __tmp47761)))))
                                   _g50655076_))))
                          (_g50635094_
                           (gx#stx-wrap-source
                            (let ((__tmp47770
                                   (gx#datum->syntax '#f 'case-lambda))
                                  (__tmp47768
                                   (let ((__tmp47769
                                          (lambda (_g50975100_ _g50985103_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g50975100_
                                                    _g50985103_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47769 '() _L5047_))))
                              (declare (not safe))
                              (cons __tmp47770 __tmp47768))
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
                  (___kont4277342774_
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
                                    (let ((_g47771_
                                           (_kw-lambda-split4669_ _L4742_)))
                                      (begin
                                        (let ((_g47772_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g47771_)
                                                     (##vector-length _g47771_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g47772_ 3)))
                                              (error "Context expects 3 values"
                                                     _g47772_)))
                                        (let ((_key4778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47771_ 0)))
                                              (_kwargs4780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47771_ 1)))
                                              (_args4781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47771_ 2))))
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
                                                 (let ((__tmp47779
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp47773
                                                        (let ((__tmp47775
                                                               (let ((__tmp47776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47778
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4798_ '())))
                                    (__tmp47777
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4831_ '()))))
                                (declare (not safe))
                                (cons __tmp47778 __tmp47777))))
                         (declare (not safe))
                         (cons __tmp47776 '())))
                      (__tmp47774
                       (let () (declare (not safe)) (cons _L4859_ '()))))
                  (declare (not safe))
                  (cons __tmp47775 __tmp47774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47779
                                                         __tmp47773)))))
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
              (let* ((___match4281142812_
                      (lambda (_e47044720_
                               _hd47034724_
                               _tl47024727_
                               _e47074730_
                               _hd47064734_
                               _tl47054737_)
                        (let ((_L4740_ _tl47054737_) (_L4742_ _hd47064734_))
                          (if (_kw-lambda?4668_ _L4742_)
                              (___kont4277342774_ _L4740_ _L4742_)
                              (let () (declare (not safe)) (_g46824713_))))))
                     (___match4279942800_
                      (lambda (_e46964897_
                               _hd46954901_
                               _tl46944904_
                               _e46994907_
                               _hd46984911_
                               _tl46974914_)
                        (let ((_L4917_ _tl46974914_) (_L4919_ _hd46984911_))
                          (if (_opt-lambda?4666_ _L4919_)
                              (___kont4277142772_ _L4917_ _L4919_)
                              (___match4281142812_
                               _e46964897_
                               _hd46954901_
                               _tl46944904_
                               _e46994907_
                               _hd46984911_
                               _tl46974914_)))))
                     (___match4278742788_
                      (lambda (_e46885125_
                               _hd46875129_
                               _tl46865132_
                               _e46915135_
                               _hd46905139_
                               _tl46895142_)
                        (let ((_L5145_ _tl46895142_) (_L5147_ _hd46905139_))
                          (if (_simple-lambda?4664_ _L5147_)
                              (___kont4276942770_ _L5145_ _L5147_)
                              (___match4279942800_
                               _e46885125_
                               _hd46875129_
                               _tl46865132_
                               _e46915135_
                               _hd46905139_
                               _tl46895142_))))))
                (if (gx#stx-pair? ___stx4276642767_)
                    (let ((_e46885125_ (gx#syntax-e ___stx4276642767_)))
                      (let ((_tl46865132_
                             (let () (declare (not safe)) (##cdr _e46885125_)))
                            (_hd46875129_
                             (let ()
                               (declare (not safe))
                               (##car _e46885125_))))
                        (if (gx#stx-pair? _tl46865132_)
                            (let ((_e46915135_ (gx#syntax-e _tl46865132_)))
                              (let ((_tl46895142_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46915135_)))
                                    (_hd46905139_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46915135_))))
                                (___match4278742788_
                                 _e46885125_
                                 _hd46875129_
                                 _tl46865132_
                                 _e46915135_
                                 _hd46905139_
                                 _tl46895142_)))
                            (let () (declare (not safe)) (_g46824713_)))))
                    (let () (declare (not safe)) (_g46824713_)))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8077_)
        (let* ((___stx4281442815_ _$stx8077_)
               (_g80838147_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4281442815_))))
          (let ((___kont4281742818_
                 (lambda (_L8377_ _L8379_ _L8380_ _L8381_)
                   (let ((__tmp47788 (gx#datum->syntax '#f 'def))
                         (__tmp47780
                          (let ((__tmp47787
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8381_ _L8380_)))
                                (__tmp47781
                                 (let ((__tmp47782
                                        (let ((__tmp47786
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp47783
                                               (let ((__tmp47784
                                                      (let ((__tmp47785
                                                             (lambda (_g84038406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g84048409_)
                       (let ()
                         (declare (not safe))
                         (cons _g84038406_ _g84048409_)))))
                (declare (not safe))
                (foldr1 __tmp47785 '() _L8377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L8379_ __tmp47784))))
                                          (declare (not safe))
                                          (cons __tmp47786 __tmp47783))))
                                   (declare (not safe))
                                   (cons __tmp47782 '()))))
                            (declare (not safe))
                            (cons __tmp47787 __tmp47781))))
                     (declare (not safe))
                     (cons __tmp47788 __tmp47780))))
                (___kont4282142822_
                 (lambda (_L8269_ _L8271_ _L8272_)
                   (let ((__tmp47797 (gx#datum->syntax '#f 'define-values))
                         (__tmp47789
                          (let ((__tmp47796
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8272_ '())))
                                (__tmp47790
                                 (let ((__tmp47791
                                        (let ((__tmp47795
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp47792
                                               (let ((__tmp47793
                                                      (let ((__tmp47794
                                                             (lambda (_g82918294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g82928297_)
                       (let ()
                         (declare (not safe))
                         (cons _g82918294_ _g82928297_)))))
                (declare (not safe))
                (foldr1 __tmp47794 '() _L8269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L8271_ __tmp47793))))
                                          (declare (not safe))
                                          (cons __tmp47795 __tmp47792))))
                                   (declare (not safe))
                                   (cons __tmp47791 '()))))
                            (declare (not safe))
                            (cons __tmp47796 __tmp47790))))
                     (declare (not safe))
                     (cons __tmp47797 __tmp47789))))
                (___kont4282542826_
                 (lambda (_L8184_ _L8186_)
                   (let ((__tmp47801 (gx#datum->syntax '#f 'define-values))
                         (__tmp47798
                          (let ((__tmp47800
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8186_ '())))
                                (__tmp47799
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8184_ '()))))
                            (declare (not safe))
                            (cons __tmp47800 __tmp47799))))
                     (declare (not safe))
                     (cons __tmp47801 __tmp47798)))))
            (let* ((___match4290542906_
                    (lambda (_e81358154_
                             _hd81348158_
                             _tl81338161_
                             _e81388164_
                             _hd81378168_
                             _tl81368171_
                             _e81418174_
                             _hd81408178_
                             _tl81398181_)
                      (let ((_L8184_ _hd81408178_) (_L8186_ _hd81378168_))
                        (if (gx#identifier? _L8186_)
                            (___kont4282542826_ _L8184_ _L8186_)
                            (let () (declare (not safe)) (_g80838147_))))))
                   (___match4289742898_
                    (lambda (_e81358154_
                             _hd81348158_
                             _tl81338161_
                             _e81388164_
                             _hd81378168_
                             _tl81368171_)
                      (if (gx#stx-pair? _tl81368171_)
                          (let ((_e81418174_ (gx#syntax-e _tl81368171_)))
                            (let ((_tl81398181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e81418174_)))
                                  (_hd81408178_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e81418174_))))
                              (if (gx#stx-null? _tl81398181_)
                                  (___match4290542906_
                                   _e81358154_
                                   _hd81348158_
                                   _tl81338161_
                                   _e81388164_
                                   _hd81378168_
                                   _tl81368171_
                                   _e81418174_
                                   _hd81408178_
                                   _tl81398181_)
                                  (let ()
                                    (declare (not safe))
                                    (_g80838147_)))))
                          (let () (declare (not safe)) (_g80838147_)))))
                   (___match4288542886_
                    (lambda (_e81158209_
                             _hd81148213_
                             _tl81138216_
                             _e81188219_
                             _hd81178223_
                             _tl81168226_
                             _e81218229_
                             _hd81208233_
                             _tl81198236_
                             ___splice4282342824_
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
                                              (_L8271_ _tl81198236_)
                                              (_L8272_ _hd81208233_))
                                          (if (gx#identifier? _L8272_)
                                              (___kont4282142822_
                                               _L8269_
                                               _L8271_
                                               _L8272_)
                                              (___match4289742898_
                                               _e81158209_
                                               _hd81148213_
                                               _tl81138216_
                                               _e81188219_
                                               _hd81178223_
                                               _tl81168226_))))))))
                        (_loop81258245_ _target81228239_ '()))))
                   (___match4285942860_
                    (lambda (_e80918307_
                             _hd80908311_
                             _tl80898314_
                             _e80948317_
                             _hd80938321_
                             _tl80928324_
                             _e80978327_
                             _hd80968331_
                             _tl80958334_
                             _e81008337_
                             _hd80998341_
                             _tl80988344_
                             ___splice4281942820_
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
                                        (___kont4281742818_
                                         _body81098373_
                                         _tl80958334_
                                         _tl80988344_
                                         _hd80998341_))))))
                        (_loop81048353_ _target81018347_ '())))))
              (if (gx#stx-pair? ___stx4281442815_)
                  (let ((_e80918307_ (gx#syntax-e ___stx4281442815_)))
                    (let ((_tl80898314_
                           (let () (declare (not safe)) (##cdr _e80918307_)))
                          (_hd80908311_
                           (let () (declare (not safe)) (##car _e80918307_))))
                      (if (gx#stx-pair? _tl80898314_)
                          (let ((_e80948317_ (gx#syntax-e _tl80898314_)))
                            (let ((_tl80928324_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e80948317_)))
                                  (_hd80938321_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e80948317_))))
                              (if (gx#stx-pair? _hd80938321_)
                                  (let ((_e80978327_
                                         (gx#syntax-e _hd80938321_)))
                                    (let ((_tl80958334_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80978327_)))
                                          (_hd80968331_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80978327_))))
                                      (if (gx#stx-pair? _hd80968331_)
                                          (let ((_e81008337_
                                                 (gx#syntax-e _hd80968331_)))
                                            (let ((_tl80988344_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e81008337_)))
                                                  (_hd80998341_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e81008337_))))
                                              (if (gx#stx-pair/null?
                                                   _tl80928324_)
                                                  (let ((___splice4281942820_
                                                         (gx#syntax-split-splice
                                                          _tl80928324_
                                                          '0)))
                                                    (let ((_tl81038350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4281942820_
                                                              '1)))
                                                          (_target81018347_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4281942820_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl81038350_)
                                                          (___match4285942860_
                                                           _e80918307_
                                                           _hd80908311_
                                                           _tl80898314_
                                                           _e80948317_
                                                           _hd80938321_
                                                           _tl80928324_
                                                           _e80978327_
                                                           _hd80968331_
                                                           _tl80958334_
                                                           _e81008337_
                                                           _hd80998341_
                                                           _tl80988344_
                                                           ___splice4281942820_
                                                           _target81018347_
                                                           _tl81038350_)
                                                          (if (gx#stx-pair?
                                                               _tl80928324_)
                                                              (let ((_e81418174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl80928324_)))
                        (let ((_tl81398181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e81418174_)))
                              (_hd81408178_
                               (let ()
                                 (declare (not safe))
                                 (##car _e81418174_))))
                          (if (gx#stx-null? _tl81398181_)
                              (___match4290542906_
                               _e80918307_
                               _hd80908311_
                               _tl80898314_
                               _e80948317_
                               _hd80938321_
                               _tl80928324_
                               _e81418174_
                               _hd81408178_
                               _tl81398181_)
                              (let () (declare (not safe)) (_g80838147_)))))
                      (let () (declare (not safe)) (_g80838147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl80928324_)
                                                      (let ((_e81418174_
                                                             (gx#syntax-e
                                                              _tl80928324_)))
                                                        (let ((_tl81398181_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e81418174_)))
                      (_hd81408178_
                       (let () (declare (not safe)) (##car _e81418174_))))
                  (if (gx#stx-null? _tl81398181_)
                      (___match4290542906_
                       _e80918307_
                       _hd80908311_
                       _tl80898314_
                       _e80948317_
                       _hd80938321_
                       _tl80928324_
                       _e81418174_
                       _hd81408178_
                       _tl81398181_)
                      (let () (declare (not safe)) (_g80838147_)))))
              (let () (declare (not safe)) (_g80838147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null? _tl80928324_)
                                              (let ((___splice4282342824_
                                                     (gx#syntax-split-splice
                                                      _tl80928324_
                                                      '0)))
                                                (let ((_tl81248242_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4282342824_
                                                          '1)))
                                                      (_target81228239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4282342824_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl81248242_)
                                                      (___match4288542886_
                                                       _e80918307_
                                                       _hd80908311_
                                                       _tl80898314_
                                                       _e80948317_
                                                       _hd80938321_
                                                       _tl80928324_
                                                       _e80978327_
                                                       _hd80968331_
                                                       _tl80958334_
                                                       ___splice4282342824_
                                                       _target81228239_
                                                       _tl81248242_)
                                                      (if (gx#stx-pair?
                                                           _tl80928324_)
                                                          (let ((_e81418174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80928324_)))
                    (let ((_tl81398181_
                           (let () (declare (not safe)) (##cdr _e81418174_)))
                          (_hd81408178_
                           (let () (declare (not safe)) (##car _e81418174_))))
                      (if (gx#stx-null? _tl81398181_)
                          (___match4290542906_
                           _e80918307_
                           _hd80908311_
                           _tl80898314_
                           _e80948317_
                           _hd80938321_
                           _tl80928324_
                           _e81418174_
                           _hd81408178_
                           _tl81398181_)
                          (let () (declare (not safe)) (_g80838147_)))))
                  (let () (declare (not safe)) (_g80838147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl80928324_)
                                                  (let ((_e81418174_
                                                         (gx#syntax-e
                                                          _tl80928324_)))
                                                    (let ((_tl81398181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e81418174_)))
                                                          (_hd81408178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e81418174_))))
                                                      (if (gx#stx-null?
                                                           _tl81398181_)
                                                          (___match4290542906_
                                                           _e80918307_
                                                           _hd80908311_
                                                           _tl80898314_
                                                           _e80948317_
                                                           _hd80938321_
                                                           _tl80928324_
                                                           _e81418174_
                                                           _hd81408178_
                                                           _tl81398181_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g80838147_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g80838147_)))))))
                                  (if (gx#stx-pair? _tl80928324_)
                                      (let ((_e81418174_
                                             (gx#syntax-e _tl80928324_)))
                                        (let ((_tl81398181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e81418174_)))
                                              (_hd81408178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e81418174_))))
                                          (if (gx#stx-null? _tl81398181_)
                                              (___match4290542906_
                                               _e80918307_
                                               _hd80908311_
                                               _tl80898314_
                                               _e80948317_
                                               _hd80938321_
                                               _tl80928324_
                                               _e81418174_
                                               _hd81408178_
                                               _tl81398181_)
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
                      (let ((_e84288453_ (gx#syntax-e _g84238450_)))
                        (let ((_hd84278457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e84288453_)))
                              (_tl84268460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e84288453_))))
                          (if (gx#stx-pair? _tl84268460_)
                              (let ((_e84318463_ (gx#syntax-e _tl84268460_)))
                                (let ((_hd84308467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e84318463_)))
                                      (_tl84298470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e84318463_))))
                                  (if (gx#stx-pair/null? _tl84298470_)
                                      (let ((_g47802_
                                             (gx#syntax-split-splice
                                              _tl84298470_
                                              '0)))
                                        (begin
                                          (let ((_g47803_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47802_)
                                                       (##vector-length
                                                        _g47802_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47803_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47803_)))
                                          (let ((_target84328473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47802_ 0)))
                                                (_tl84348476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47802_ 1))))
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
                                 (let ((__tmp47811
                                        (gx#datum->syntax '#f 'define-values))
                                       (__tmp47804
                                        (let ((__tmp47810
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L8505_ '())))
                                              (__tmp47805
                                               (let ((__tmp47806
                                                      (let ((__tmp47809
                                                             (gx#datum->syntax
                                                              '#f
                                                              'case-lambda))
                                                            (__tmp47807
                                                             (let ((__tmp47808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g85228525_ _g85238528_)
                              (let ()
                                (declare (not safe))
                                (cons _g85228525_ _g85238528_)))))
                       (declare (not safe))
                       (foldr1 __tmp47808 '() _L8503_))))
                (declare (not safe))
                (cons __tmp47809 __tmp47807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47806 '()))))
                                          (declare (not safe))
                                          (cons __tmp47810 __tmp47805))))
                                   (declare (not safe))
                                   (cons __tmp47811 __tmp47804))
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
                      (let ((_e85468565_ (gx#syntax-e _g85418562_)))
                        (let ((_hd85458569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85468565_)))
                              (_tl85448572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85468565_))))
                          (if (gx#stx-pair? _tl85448572_)
                              (let ((_e85498575_ (gx#syntax-e _tl85448572_)))
                                (let ((_hd85488579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85498575_)))
                                      (_tl85478582_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85498575_))))
                                  (if (gx#stx-pair? _tl85478582_)
                                      (let ((_e85528585_
                                             (gx#syntax-e _tl85478582_)))
                                        (let ((_hd85518589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e85528585_)))
                                              (_tl85508592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e85528585_))))
                                          (if (gx#stx-null? _tl85508592_)
                                              ((lambda (_L8595_ _L8597_)
                                                 (if (gx#identifier-list?
                                                      _L8597_)
                                                     (let ((__tmp47814
                                                            (gx#datum->syntax
                                                             '#f
                                                             'define-values))
                                                           (__tmp47812
                                                            (let ((__tmp47813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L8595_ '()))))
                      (declare (not safe))
                      (cons _L8597_ __tmp47813))))
               (declare (not safe))
               (cons __tmp47814 __tmp47812))
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
                      (let ((_e86278652_ (gx#syntax-e _g86228649_)))
                        (let ((_hd86268656_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86278652_)))
                              (_tl86258659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86278652_))))
                          (if (gx#stx-pair? _tl86258659_)
                              (let ((_e86308662_ (gx#syntax-e _tl86258659_)))
                                (let ((_hd86298666_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86308662_)))
                                      (_tl86288669_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86308662_))))
                                  (if (gx#stx-pair/null? _tl86288669_)
                                      (let ((_g47815_
                                             (gx#syntax-split-splice
                                              _tl86288669_
                                              '0)))
                                        (begin
                                          (let ((_g47816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47815_)
                                                       (##vector-length
                                                        _g47815_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47816_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47816_)))
                                          (let ((_target86318672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47815_ 0)))
                                                (_tl86338675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47815_ 1))))
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
                             (let ((__tmp47828 (gx#datum->syntax '#f 'let))
                                   (__tmp47817
                                    (let ((__tmp47825
                                           (let ((__tmp47827
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp47826
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L8704_ '()))))
                                             (declare (not safe))
                                             (cons __tmp47827 __tmp47826)))
                                          (__tmp47818
                                           (let ((__tmp47819
                                                  (let ((__tmp47824
                                                         (gx#datum->syntax
                                                          '#f
                                                          '~case))
                                                        (__tmp47820
                                                         (let ((__tmp47823
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp47821
                        (let ((__tmp47822
                               (lambda (_g87218724_ _g87228727_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g87218724_ _g87228727_)))))
                          (declare (not safe))
                          (foldr1 __tmp47822 '() _L8702_))))
                   (declare (not safe))
                   (cons __tmp47823 __tmp47821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47824
                                                          __tmp47820))))
                                             (declare (not safe))
                                             (cons __tmp47819 '()))))
                                      (declare (not safe))
                                      (cons __tmp47825 __tmp47818))))
                               (declare (not safe))
                               (cons __tmp47828 __tmp47817)))
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
                      (let* ((___stx4300443005_ _rest11208_)
                             (_g1121511227_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4300443005_))))
                        (let ((___kont4300743008_
                               (lambda (_L11259_ _L11261_)
                                 (let* ((___stx4290842909_ _L11261_)
                                        (_g1127911352_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4290842909_))))
                                   (let ((___kont4291142912_
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
                                                                (let ((__tmp47829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L11747_ '()))))
                          (declare (not safe))
                          (cons _L11717_ __tmp47829)))))
                   _g1173311744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1173111759_ _e11201_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8735_
                                                 _L11261_))))
                                         (___kont4291342914_
                                          (lambda (_L11657_)
                                            (if (gx#stx-null? _L11259_)
                                                (_lp11205_
                                                 '()
                                                 _datums11210_
                                                 _dispatch11211_
                                                 (let ((__tmp47832
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp47830
                                                        (let ((__tmp47831
                                                               (lambda (_g1167111674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1167211677_)
                         (let ()
                           (declare (not safe))
                           (cons _g1167111674_ _g1167211677_)))))
                  (declare (not safe))
                  (foldr1 __tmp47831 '() _L11657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47832
                                                         __tmp47830)))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8735_
                                                 _L11261_))))
                                         (___kont4291742918_
                                          (lambda (_L11542_ _L11544_)
                                            (if (let ((__tmp47837
                                                       (let ((__tmp47838
                                                              (lambda (_g1156211565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1156311568_)
                        (let ()
                          (declare (not safe))
                          (cons _g1156211565_ _g1156311568_)))))
                 (declare (not safe))
                 (foldr1 __tmp47838 '() _L11544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp47837))
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
                                                                (let ((__tmp47833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map gx#stx-e
                                    (let ((__tmp47834
                                           (lambda (_g1159711600_
                                                    _g1159811603_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1159711600_
                                                     _g1159811603_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp47834 '() _L11544_)))))
                          (declare (not safe))
                          (cons __tmp47833 _datums11210_))
                        (let ((__tmp47835
                               (let ((__tmp47836
                                      (let ()
                                        (declare (not safe))
                                        (cons _L11586_ '()))))
                                 (declare (not safe))
                                 (cons _L11542_ __tmp47836))))
                          (declare (not safe))
                          (cons __tmp47835 _dispatch11211_))
                        _default11212_)))
                   _g1157211583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1157011606_ _e11201_)))))
                                         (___kont4292142922_
                                          (lambda (_L11429_ _L11431_)
                                            (if (let ((__tmp47845
                                                       (let ((__tmp47846
                                                              (lambda (_g1145011453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1145111456_)
                        (let ()
                          (declare (not safe))
                          (cons _g1145011453_ _g1145111456_)))))
                 (declare (not safe))
                 (foldr1 __tmp47846 '() _L11431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp47845))
                                                (_lp11205_
                                                 _L11259_
                                                 _datums11210_
                                                 _dispatch11211_
                                                 _default11212_)
                                                (_lp11205_
                                                 _L11259_
                                                 (let ((__tmp47839
                                                        (map gx#stx-e
                                                             (let ((__tmp47840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1145811461_ _g1145911464_)
                              (let ()
                                (declare (not safe))
                                (cons _g1145811461_ _g1145911464_)))))
                       (declare (not safe))
                       (foldr1 __tmp47840 '() _L11431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47839
                                                         _datums11210_))
                                                 (let ((__tmp47841
                                                        (let ((__tmp47844
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp47842
                                                               (let ((__tmp47843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1146611469_ _g1146711472_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1146611469_ _g1146711472_)))))
                         (declare (not safe))
                         (foldr1 __tmp47843 '() _L11429_))))
                  (declare (not safe))
                  (cons __tmp47844 __tmp47842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47841
                                                         _dispatch11211_))
                                                 _default11212_)))))
                                     (let* ((___match4300143002_
                                             (lambda (_e1132811359_
                                                      _hd1132711363_
                                                      _tl1132611366_
                                                      ___splice4292342924_
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
                         (if (gx#stx-pair/null? _tl1132611366_)
                             (let ((___splice4292542926_
                                    (gx#syntax-split-splice
                                     _tl1132611366_
                                     '0)))
                               (let ((_tl1134011402_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice4292542926_
                                         '1)))
                                     (_target1133811399_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice4292542926_
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
                                                       (___kont4292142922_
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
                                            (___match4298742988_
                                             (lambda (_e1130811482_
                                                      _hd1130711486_
                                                      _tl1130611489_
                                                      ___splice4291942920_
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
                         (if (gx#stx-pair? _tl1130611489_)
                             (let ((_e1132011522_
                                    (gx#syntax-e _tl1130611489_)))
                               (let ((_tl1131811529_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1132011522_)))
                                     (_hd1131911526_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1132011522_))))
                                 (if (gx#identifier? _hd1131911526_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g47847_|
                                          _hd1131911526_)
                                         (if (gx#stx-pair? _tl1131811529_)
                                             (let ((_e1132311532_
                                                    (gx#syntax-e
                                                     _tl1131811529_)))
                                               (let ((_tl1132111539_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1132311532_)))
                                                     (_hd1132211536_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1132311532_))))
                                                 (if (gx#stx-null?
                                                      _tl1132111539_)
                                                     (___kont4291742918_
                                                      _hd1132211536_
                                                      _datum1131711518_)
                                                     (___match4300143002_
                                                      _e1130811482_
                                                      _hd1130711486_
                                                      _tl1130611489_
                                                      ___splice4291942920_
                                                      _target1130911492_
                                                      _tl1131111495_))))
                                             (___match4300143002_
                                              _e1130811482_
                                              _hd1130711486_
                                              _tl1130611489_
                                              ___splice4291942920_
                                              _target1130911492_
                                              _tl1131111495_))
                                         (___match4300143002_
                                          _e1130811482_
                                          _hd1130711486_
                                          _tl1130611489_
                                          ___splice4291942920_
                                          _target1130911492_
                                          _tl1131111495_))
                                     (___match4300143002_
                                      _e1130811482_
                                      _hd1130711486_
                                      _tl1130611489_
                                      ___splice4291942920_
                                      _target1130911492_
                                      _tl1131111495_))))
                             (___match4300143002_
                              _e1130811482_
                              _hd1130711486_
                              _tl1130611489_
                              ___splice4291942920_
                              _target1130911492_
                              _tl1131111495_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1131211498_
                                                  _target1130911492_
                                                  '()))))
                                            (___match4297342974_
                                             (lambda (_e1129411617_
                                                      _hd1129311621_
                                                      _tl1129211624_
                                                      ___splice4291542916_
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
                         (___kont4291342914_ _body1130311653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1129811633_
                                                  _target1129511627_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx4290842909_)
                                           (let ((_e1128411687_
                                                  (gx#syntax-e
                                                   ___stx4290842909_)))
                                             (let ((_tl1128211694_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1128411687_)))
                                                   (_hd1128311691_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1128411687_))))
                                               (if (gx#identifier?
                                                    _hd1128311691_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g47849_|
                                                        _hd1128311691_)
                                                       (if (gx#stx-pair?
                                                            _tl1128211694_)
                                                           (let ((_e1128711697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1128211694_)))
                     (let ((_tl1128511704_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1128711697_)))
                           (_hd1128611701_
                            (let ()
                              (declare (not safe))
                              (##car _e1128711697_))))
                       (if (gx#identifier? _hd1128611701_)
                           (if (gx#free-identifier=?
                                |gerbil/core$<sugar>$<sugar:2>[1]#_g47848_|
                                _hd1128611701_)
                               (if (gx#stx-pair? _tl1128511704_)
                                   (let ((_e1129011707_
                                          (gx#syntax-e _tl1128511704_)))
                                     (let ((_tl1128811714_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1129011707_)))
                                           (_hd1128911711_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1129011707_))))
                                       (if (gx#stx-null? _tl1128811714_)
                                           (___kont4291142912_ _hd1128911711_)
                                           (if (gx#stx-pair/null?
                                                _tl1128211694_)
                                               (let ((___splice4291542916_
                                                      (gx#syntax-split-splice
                                                       _tl1128211694_
                                                       '0)))
                                                 (let ((_tl1129711630_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4291542916_
                                                           '1)))
                                                       (_target1129511627_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4291542916_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1129711630_)
                                                       (___match4297342974_
                                                        _e1128411687_
                                                        _hd1128311691_
                                                        _tl1128211694_
                                                        ___splice4291542916_
                                                        _target1129511627_
                                                        _tl1129711630_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1128311691_)
                                                           (let ((___splice4291942920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1128311691_ '0)))
                     (let ((_tl1131111495_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4291942920_ '1)))
                           (_target1130911492_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4291942920_ '0))))
                       (if (gx#stx-null? _tl1131111495_)
                           (___match4298742988_
                            _e1128411687_
                            _hd1128311691_
                            _tl1128211694_
                            ___splice4291942920_
                            _target1130911492_
                            _tl1131111495_)
                           (let () (declare (not safe)) (_g1127911352_)))))
                   (let () (declare (not safe)) (_g1127911352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1128311691_)
                                                   (let ((___splice4291942920_
                                                          (gx#syntax-split-splice
                                                           _hd1128311691_
                                                           '0)))
                                                     (let ((_tl1131111495_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4291942920_
                                                               '1)))
                                                           (_target1130911492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4291942920_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1131111495_)
                                                           (___match4298742988_
                                                            _e1128411687_
                                                            _hd1128311691_
                                                            _tl1128211694_
                                                            ___splice4291942920_
                                                            _target1130911492_
                                                            _tl1131111495_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1127911352_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127911352_)))))))
                                   (if (gx#stx-pair/null? _tl1128211694_)
                                       (let ((___splice4291542916_
                                              (gx#syntax-split-splice
                                               _tl1128211694_
                                               '0)))
                                         (let ((_tl1129711630_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4291542916_
                                                   '1)))
                                               (_target1129511627_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4291542916_
                                                   '0))))
                                           (if (gx#stx-null? _tl1129711630_)
                                               (___match4297342974_
                                                _e1128411687_
                                                _hd1128311691_
                                                _tl1128211694_
                                                ___splice4291542916_
                                                _target1129511627_
                                                _tl1129711630_)
                                               (if (gx#stx-pair/null?
                                                    _hd1128311691_)
                                                   (let ((___splice4291942920_
                                                          (gx#syntax-split-splice
                                                           _hd1128311691_
                                                           '0)))
                                                     (let ((_tl1131111495_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4291942920_
                                                               '1)))
                                                           (_target1130911492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice4291942920_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1131111495_)
                                                           (___match4298742988_
                                                            _e1128411687_
                                                            _hd1128311691_
                                                            _tl1128211694_
                                                            ___splice4291942920_
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
                                           (let ((___splice4291942920_
                                                  (gx#syntax-split-splice
                                                   _hd1128311691_
                                                   '0)))
                                             (let ((_tl1131111495_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4291942920_
                                                       '1)))
                                                   (_target1130911492_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4291942920_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1131111495_)
                                                   (___match4298742988_
                                                    _e1128411687_
                                                    _hd1128311691_
                                                    _tl1128211694_
                                                    ___splice4291942920_
                                                    _target1130911492_
                                                    _tl1131111495_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127911352_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_)))))
                               (if (gx#stx-pair/null? _tl1128211694_)
                                   (let ((___splice4291542916_
                                          (gx#syntax-split-splice
                                           _tl1128211694_
                                           '0)))
                                     (let ((_tl1129711630_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4291542916_
                                               '1)))
                                           (_target1129511627_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4291542916_
                                               '0))))
                                       (if (gx#stx-null? _tl1129711630_)
                                           (___match4297342974_
                                            _e1128411687_
                                            _hd1128311691_
                                            _tl1128211694_
                                            ___splice4291542916_
                                            _target1129511627_
                                            _tl1129711630_)
                                           (if (gx#stx-pair/null?
                                                _hd1128311691_)
                                               (let ((___splice4291942920_
                                                      (gx#syntax-split-splice
                                                       _hd1128311691_
                                                       '0)))
                                                 (let ((_tl1131111495_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4291942920_
                                                           '1)))
                                                       (_target1130911492_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice4291942920_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1131111495_)
                                                       (___match4298742988_
                                                        _e1128411687_
                                                        _hd1128311691_
                                                        _tl1128211694_
                                                        ___splice4291942920_
                                                        _target1130911492_
                                                        _tl1131111495_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1127911352_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1127911352_))))))
                                   (if (gx#stx-pair/null? _hd1128311691_)
                                       (let ((___splice4291942920_
                                              (gx#syntax-split-splice
                                               _hd1128311691_
                                               '0)))
                                         (let ((_tl1131111495_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4291942920_
                                                   '1)))
                                               (_target1130911492_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4291942920_
                                                   '0))))
                                           (if (gx#stx-null? _tl1131111495_)
                                               (___match4298742988_
                                                _e1128411687_
                                                _hd1128311691_
                                                _tl1128211694_
                                                ___splice4291942920_
                                                _target1130911492_
                                                _tl1131111495_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1127911352_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1127911352_)))))
                           (if (gx#stx-pair/null? _tl1128211694_)
                               (let ((___splice4291542916_
                                      (gx#syntax-split-splice
                                       _tl1128211694_
                                       '0)))
                                 (let ((_tl1129711630_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4291542916_
                                           '1)))
                                       (_target1129511627_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4291542916_
                                           '0))))
                                   (if (gx#stx-null? _tl1129711630_)
                                       (___match4297342974_
                                        _e1128411687_
                                        _hd1128311691_
                                        _tl1128211694_
                                        ___splice4291542916_
                                        _target1129511627_
                                        _tl1129711630_)
                                       (if (gx#stx-pair/null? _hd1128311691_)
                                           (let ((___splice4291942920_
                                                  (gx#syntax-split-splice
                                                   _hd1128311691_
                                                   '0)))
                                             (let ((_tl1131111495_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4291942920_
                                                       '1)))
                                                   (_target1130911492_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice4291942920_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1131111495_)
                                                   (___match4298742988_
                                                    _e1128411687_
                                                    _hd1128311691_
                                                    _tl1128211694_
                                                    ___splice4291942920_
                                                    _target1130911492_
                                                    _tl1131111495_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127911352_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_))))))
                               (if (gx#stx-pair/null? _hd1128311691_)
                                   (let ((___splice4291942920_
                                          (gx#syntax-split-splice
                                           _hd1128311691_
                                           '0)))
                                     (let ((_tl1131111495_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4291942920_
                                               '1)))
                                           (_target1130911492_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4291942920_
                                               '0))))
                                       (if (gx#stx-null? _tl1131111495_)
                                           (___match4298742988_
                                            _e1128411687_
                                            _hd1128311691_
                                            _tl1128211694_
                                            ___splice4291942920_
                                            _target1130911492_
                                            _tl1131111495_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1127911352_)))))))
                   (if (gx#stx-pair/null? _tl1128211694_)
                       (let ((___splice4291542916_
                              (gx#syntax-split-splice _tl1128211694_ '0)))
                         (let ((_tl1129711630_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice4291542916_ '1)))
                               (_target1129511627_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice4291542916_ '0))))
                           (if (gx#stx-null? _tl1129711630_)
                               (___match4297342974_
                                _e1128411687_
                                _hd1128311691_
                                _tl1128211694_
                                ___splice4291542916_
                                _target1129511627_
                                _tl1129711630_)
                               (if (gx#stx-pair/null? _hd1128311691_)
                                   (let ((___splice4291942920_
                                          (gx#syntax-split-splice
                                           _hd1128311691_
                                           '0)))
                                     (let ((_tl1131111495_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4291942920_
                                               '1)))
                                           (_target1130911492_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice4291942920_
                                               '0))))
                                       (if (gx#stx-null? _tl1131111495_)
                                           (___match4298742988_
                                            _e1128411687_
                                            _hd1128311691_
                                            _tl1128211694_
                                            ___splice4291942920_
                                            _target1130911492_
                                            _tl1131111495_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1127911352_))))))
                       (if (gx#stx-pair/null? _hd1128311691_)
                           (let ((___splice4291942920_
                                  (gx#syntax-split-splice _hd1128311691_ '0)))
                             (let ((_tl1131111495_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice4291942920_ '1)))
                                   (_target1130911492_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice4291942920_ '0))))
                               (if (gx#stx-null? _tl1131111495_)
                                   (___match4298742988_
                                    _e1128411687_
                                    _hd1128311691_
                                    _tl1128211694_
                                    ___splice4291942920_
                                    _target1130911492_
                                    _tl1131111495_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1127911352_)))))
                           (let () (declare (not safe)) (_g1127911352_)))))
               (if (gx#stx-pair/null? _hd1128311691_)
                   (let ((___splice4291942920_
                          (gx#syntax-split-splice _hd1128311691_ '0)))
                     (let ((_tl1131111495_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4291942920_ '1)))
                           (_target1130911492_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice4291942920_ '0))))
                       (if (gx#stx-null? _tl1131111495_)
                           (___match4298742988_
                            _e1128411687_
                            _hd1128311691_
                            _tl1128211694_
                            ___splice4291942920_
                            _target1130911492_
                            _tl1131111495_)
                           (let () (declare (not safe)) (_g1127911352_)))))
                   (let () (declare (not safe)) (_g1127911352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1128311691_)
                                                       (let ((___splice4291942920_
                                                              (gx#syntax-split-splice
                                                               _hd1128311691_
                                                               '0)))
                                                         (let ((_tl1131111495_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice4291942920_ '1)))
                       (_target1130911492_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice4291942920_ '0))))
                   (if (gx#stx-null? _tl1131111495_)
                       (___match4298742988_
                        _e1128411687_
                        _hd1128311691_
                        _tl1128211694_
                        ___splice4291942920_
                        _target1130911492_
                        _tl1131111495_)
                       (let () (declare (not safe)) (_g1127911352_)))))
               (let () (declare (not safe)) (_g1127911352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1127911352_))))))))
                              (___kont4300943010_
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
                                   (if (gx#stx-null? ___stx4300443005_)
                                       (___kont4300943010_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1121511227_))))))
                            (if (gx#stx-pair? ___stx4300443005_)
                                (let ((_e1122111249_
                                       (gx#syntax-e ___stx4300443005_)))
                                  (let ((_tl1121911256_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1122111249_)))
                                        (_hd1122011253_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1122111249_))))
                                    (___kont4300743008_
                                     _tl1121911256_
                                     _hd1122011253_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1121411242_)))))))))
                 (_check-duplicate-datums8740_
                  (lambda (_datums11189_)
                    (let ((_ht11192_
                           (let () (declare (not safe)) (make-table))))
                      (for-each
                       (lambda (_lst11195_)
                         (for-each
                          (lambda (_datum11198_)
                            (if (let ()
                                  (declare (not safe))
                                  (table-ref _ht11192_ _datum11198_ '#f))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8735_
                                 _datum11198_)
                                (let ()
                                  (declare (not safe))
                                  (table-set! _ht11192_ _datum11198_ '#t))))
                          _lst11195_))
                       _datums11189_))))
                 (_count-datums8741_
                  (lambda (_datums11182_)
                    (let ((__tmp47850
                           (lambda (_lst11185_ _r11187_)
                             (+ (length _lst11185_) _r11187_))))
                      (declare (not safe))
                      (foldl1 __tmp47850 '0 _datums11182_))))
                 (_symbolic-datums?8742_
                  (lambda (_datums11176_)
                    (let ((__tmp47851
                           (lambda (_lst11179_)
                             (let ()
                               (declare (not safe))
                               (andmap1 symbol? _lst11179_)))))
                      (declare (not safe))
                      (andmap1 __tmp47851 _datums11176_))))
                 (_char-datums?8743_
                  (lambda (_datums11170_)
                    (let ((__tmp47852
                           (lambda (_lst11173_)
                             (let ()
                               (declare (not safe))
                               (andmap1 char? _lst11173_)))))
                      (declare (not safe))
                      (andmap1 __tmp47852 _datums11170_))))
                 (_fixnum-datums?8744_
                  (lambda (_datums11164_)
                    (let ((__tmp47853
                           (lambda (_lst11167_)
                             (let ()
                               (declare (not safe))
                               (andmap1 fixnum? _lst11167_)))))
                      (declare (not safe))
                      (andmap1 __tmp47853 _datums11164_))))
                 (_eq-datums?8745_
                  (lambda (_datums11147_)
                    (let ((__tmp47854
                           (lambda (_lst11150_)
                             (let ((__tmp47855
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
                               (andmap1 __tmp47855 _lst11150_)))))
                      (declare (not safe))
                      (andmap1 __tmp47854 _datums11147_))))
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
                                     (let* ((___stx4302243023_ _datums10947_)
                                            (_g1095210973_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx4302243023_))))
                                       (let ((___kont4302543026_
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
                                                              (let ((_e1105911072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1105411069_)))
                        (let ((_hd1105811076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1105911072_)))
                              (_tl1105711079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1105911072_))))
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
                                            (let ((__tmp47867
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp47856
                                                   (let ((__tmp47859
                                                          (let ((__tmp47866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'or))
                        (__tmp47860
                         (let ((__tmp47861
                                (lambda (_g1112211125_ _g1112311128_)
                                  (let ((__tmp47862
                                         (let ((__tmp47865
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-test))
                                               (__tmp47863
                                                (let ((__tmp47864
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L10932_ '()))))
                                                  (declare (not safe))
                                                  (cons _g1112211125_
                                                        __tmp47864))))
                                           (declare (not safe))
                                           (cons __tmp47865 __tmp47863))))
                                    (declare (not safe))
                                    (cons __tmp47862 _g1112311128_)))))
                           (declare (not safe))
                           (foldr1 __tmp47861 '() _L11033_))))
                    (declare (not safe))
                    (cons __tmp47866 __tmp47860)))
                 (__tmp47857
                  (let ((__tmp47858
                         (let () (declare (not safe)) (cons _L11111_ '()))))
                    (declare (not safe))
                    (cons _L11084_ __tmp47858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47859
                                                           __tmp47857))))
                                              (declare (not safe))
                                              (cons __tmp47867 __tmp47856))))
                                        _g1109711108_))))
                               (_g1109511131_
                                (_recur10944_ _L11031_ _L11082_))))
                           _tl1105711079_
                           _hd1105811076_)))
                      (_g1105311065_ _g1105411069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1105211135_
                                                   _dispatch10949_))))
                                             (___kont4302943030_
                                              (lambda () _default10915_)))
                                         (let ((___match4304543046_
                                                (lambda (_e1095810991_
                                                         _hd1095710995_
                                                         _tl1095610998_
                                                         ___splice4302743028_
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
                            (___kont4302543026_
                             _tl1095610998_
                             _datum1096711027_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1096211007_
                                                     _target1095911001_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx4302243023_)
                                               (let ((_e1095810991_
                                                      (gx#syntax-e
                                                       ___stx4302243023_)))
                                                 (let ((_tl1095610998_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1095810991_)))
                                                       (_hd1095710995_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1095810991_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1095710995_)
                                                       (let ((___splice4302743028_
                                                              (gx#syntax-split-splice
                                                               _hd1095710995_
                                                               '0)))
                                                         (let ((_tl1096111004_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice4302743028_ '1)))
                       (_target1095911001_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice4302743028_ '0))))
                   (if (gx#stx-null? _tl1096111004_)
                       (___match4304543046_
                        _e1095810991_
                        _hd1095710995_
                        _tl1095610998_
                        ___splice4302743028_
                        _target1095911001_
                        _tl1096111004_)
                       (___kont4302943030_))))
               (___kont4302943030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4302943030_))))))))
                               _g1091810929_))))
                      (_g1091611143_ _e10911_))))
                 (_datum-dispatch-index8747_
                  (lambda (_datums10783_)
                    (let _lp10786_ ((_rest10789_ _datums10783_)
                                    (_ix10791_ '0)
                                    (_r10792_ '()))
                      (let* ((___stx4304843049_ _rest10789_)
                             (_g1079510816_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4304843049_))))
                        (let ((___kont4305143052_
                               (lambda (_L10874_ _L10876_)
                                 (_lp10786_
                                  _L10874_
                                  (let ()
                                    (declare (not safe))
                                    (fx+ _ix10791_ '1))
                                  (let ((__tmp47870
                                         (lambda (_x10895_ _r10897_)
                                           (let ((__tmp47871
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _x10895_
                                                          _ix10791_))))
                                             (declare (not safe))
                                             (cons __tmp47871 _r10897_))))
                                        (__tmp47868
                                         (let ((__tmp47869
                                                (lambda (_g1089810901_
                                                         _g1089910904_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1089810901_
                                                          _g1089910904_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp47869 '() _L10876_))))
                                    (declare (not safe))
                                    (foldl1 __tmp47870 _r10792_ __tmp47868)))))
                              (___kont4305543056_ (lambda () _r10792_)))
                          (let ((___match4307143072_
                                 (lambda (_e1080110834_
                                          _hd1080010838_
                                          _tl1079910841_
                                          ___splice4305343054_
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
                                                     (___kont4305143052_
                                                      _tl1079910841_
                                                      _datum1081010870_))))))
                                     (_loop1080510850_
                                      _target1080210844_
                                      '())))))
                            (if (gx#stx-pair? ___stx4304843049_)
                                (let ((_e1080110834_
                                       (gx#syntax-e ___stx4304843049_)))
                                  (let ((_tl1079910841_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1080110834_)))
                                        (_hd1080010838_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1080110834_))))
                                    (if (gx#stx-pair/null? _hd1080010838_)
                                        (let ((___splice4305343054_
                                               (gx#syntax-split-splice
                                                _hd1080010838_
                                                '0)))
                                          (let ((_tl1080410847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4305343054_
                                                    '1)))
                                                (_target1080210844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4305343054_
                                                    '0))))
                                            (if (gx#stx-null? _tl1080410847_)
                                                (___match4307143072_
                                                 _e1080110834_
                                                 _hd1080010838_
                                                 _tl1079910841_
                                                 ___splice4305343054_
                                                 _target1080210844_
                                                 _tl1080410847_)
                                                (___kont4305543056_))))
                                        (___kont4305543056_))))
                                (___kont4305543056_))))))))
                 (_duplicate-indexes?8748_
                  (lambda (_xs10764_)
                    (let ((_ht10767_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp10770_ ((_rest10773_ _xs10764_))
                        (if (let () (declare (not safe)) (pair? _rest10773_))
                            (let* ((_ix10776_ (car _rest10773_))
                                   (_$e10779_
                                    (let ()
                                      (declare (not safe))
                                      (table-ref _ht10767_ _ix10776_ '#f))))
                              (if _$e10779_
                                  _$e10779_
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (table-set! _ht10767_ _ix10776_ '#t))
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
                                        (let ((_e1036710401_
                                               (gx#syntax-e _g1035710398_)))
                                          (let ((_hd1036610405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1036710401_)))
                                                (_tl1036510408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1036710401_))))
                                            (if (gx#stx-pair? _tl1036510408_)
                                                (let ((_e1037010411_
                                                       (gx#syntax-e
                                                        _tl1036510408_)))
                                                  (let ((_hd1036910415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1037010411_)))
                                                        (_tl1036810418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1037010411_))))
                                                    (if (gx#stx-pair?
                                                         _tl1036810418_)
                                                        (let ((_e1037310421_
                                                               (gx#syntax-e
                                                                _tl1036810418_)))
                                                          (let ((_hd1037210425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1037310421_)))
                        (_tl1037110428_
                         (let () (declare (not safe)) (##cdr _e1037310421_))))
                    (if (gx#stx-pair? _tl1037110428_)
                        (let ((_e1037610431_ (gx#syntax-e _tl1037110428_)))
                          (let ((_hd1037510435_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1037610431_)))
                                (_tl1037410438_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1037610431_))))
                            (if (gx#stx-pair? _hd1037510435_)
                                (let ((_e1037910441_
                                       (gx#syntax-e _hd1037510435_)))
                                  (let ((_hd1037810445_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1037910441_)))
                                        (_tl1037710448_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1037910441_))))
                                    (if (gx#stx-null? _tl1037710448_)
                                        (if (gx#stx-pair? _tl1037410438_)
                                            (let ((_e1038210451_
                                                   (gx#syntax-e
                                                    _tl1037410438_)))
                                              (let ((_hd1038110455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1038210451_)))
                                                    (_tl1038010458_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1038210451_))))
                                                (if (gx#stx-pair?
                                                     _tl1038010458_)
                                                    (let ((_e1038510461_
                                                           (gx#syntax-e
                                                            _tl1038010458_)))
                                                      (let ((_hd1038410465_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1038510461_)))
                    (_tl1038310468_
                     (let () (declare (not safe)) (##cdr _e1038510461_))))
                (if (gx#stx-pair? _tl1038310468_)
                    (let ((_e1038810471_ (gx#syntax-e _tl1038310468_)))
                      (let ((_hd1038710475_
                             (let ()
                               (declare (not safe))
                               (##car _e1038810471_)))
                            (_tl1038610478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1038810471_))))
                        (if (gx#stx-null? _tl1038610478_)
                            ((lambda (_L10481_
                                      _L10483_
                                      _L10484_
                                      _L10485_
                                      _L10486_
                                      _L10487_
                                      _L10488_)
                               (let ()
                                 (let ((__tmp48030 (gx#datum->syntax '#f 'let))
                                       (__tmp47966
                                        (let ((__tmp48017
                                               (let ((__tmp48024
                                                      (let ((__tmp48025
                                                             (let ((__tmp48026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48029 (gx#datum->syntax '#f 'lambda))
                                  (__tmp48027
                                   (let ((__tmp48028
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10484_ '()))))
                                     (declare (not safe))
                                     (cons '() __tmp48028))))
                              (declare (not safe))
                              (cons __tmp48029 __tmp48027))))
                       (declare (not safe))
                       (cons __tmp48026 '()))))
                (declare (not safe))
                (cons _L10487_ __tmp48025)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48018
                                                      (let ((__tmp48019
                                                             (let ((__tmp48020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48021
                                   (let ((__tmp48023
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp48022
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10483_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48023 __tmp48022))))
                              (declare (not safe))
                              (cons __tmp48021 '()))))
                       (declare (not safe))
                       (cons _L10486_ __tmp48020))))
                (declare (not safe))
                (cons __tmp48019 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48024 __tmp48018)))
                                              (__tmp47967
                                               (let ((__tmp47968
                                                      (let ((__tmp48016
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp47969
                                                             (let ((__tmp48013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48015 (gx#datum->syntax '#f 'symbol?))
                                  (__tmp48014
                                   (let ()
                                     (declare (not safe))
                                     (cons _L10488_ '()))))
                              (declare (not safe))
                              (cons __tmp48015 __tmp48014)))
                           (__tmp47970
                            (let ((__tmp47973
                                   (let ((__tmp48012
                                          (gx#datum->syntax '#f 'let*))
                                         (__tmp47974
                                          (let ((__tmp47987
                                                 (let ((__tmp48006
                                                        (let ((__tmp48011
                                                               (gx#datum->syntax
                                                                '#f
                                                                'h))
                                                              (__tmp48007
                                                               (let ((__tmp48008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48010
                                     (gx#datum->syntax '#f '##symbol-hash))
                                    (__tmp48009
                                     (let ()
                                       (declare (not safe))
                                       (cons _L10488_ '()))))
                                (declare (not safe))
                                (cons __tmp48010 __tmp48009))))
                         (declare (not safe))
                         (cons __tmp48008 '()))))
                  (declare (not safe))
                  (cons __tmp48011 __tmp48007)))
               (__tmp47988
                (let ((__tmp47998
                       (let ((__tmp48005 (gx#datum->syntax '#f 'ix))
                             (__tmp47999
                              (let ((__tmp48000
                                     (let ((__tmp48004
                                            (gx#datum->syntax '#f '##fxmodulo))
                                           (__tmp48001
                                            (let ((__tmp48003
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp48002
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L10481_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48003 __tmp48002))))
                                       (declare (not safe))
                                       (cons __tmp48004 __tmp48001))))
                                (declare (not safe))
                                (cons __tmp48000 '()))))
                         (declare (not safe))
                         (cons __tmp48005 __tmp47999)))
                      (__tmp47989
                       (let ((__tmp47990
                              (let ((__tmp47997 (gx#datum->syntax '#f 'q))
                                    (__tmp47991
                                     (let ((__tmp47992
                                            (let ((__tmp47996
                                                   (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref))
                                                  (__tmp47993
                                                   (let ((__tmp47994
                                                          (let ((__tmp47995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'ix)))
                    (declare (not safe))
                    (cons __tmp47995 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L10486_
                                                           __tmp47994))))
                                              (declare (not safe))
                                              (cons __tmp47996 __tmp47993))))
                                       (declare (not safe))
                                       (cons __tmp47992 '()))))
                                (declare (not safe))
                                (cons __tmp47997 __tmp47991))))
                         (declare (not safe))
                         (cons __tmp47990 '()))))
                  (declare (not safe))
                  (cons __tmp47998 __tmp47989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48006
                                                         __tmp47988)))
                                                (__tmp47975
                                                 (let ((__tmp47976
                                                        (let ((__tmp47986
                                                               (gx#datum->syntax
                                                                '#f
                                                                'if))
                                                              (__tmp47977
                                                               (let ((__tmp47981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47985 (gx#datum->syntax '#f 'eq?))
                                    (__tmp47982
                                     (let ((__tmp47984
                                            (gx#datum->syntax '#f 'q))
                                           (__tmp47983
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10488_ '()))))
                                       (declare (not safe))
                                       (cons __tmp47984 __tmp47983))))
                                (declare (not safe))
                                (cons __tmp47985 __tmp47982)))
                             (__tmp47978
                              (let ((__tmp47979
                                     (let ((__tmp47980
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10487_ '()))))
                                       (declare (not safe))
                                       (cons __tmp47980 '()))))
                                (declare (not safe))
                                (cons _L10485_ __tmp47979))))
                         (declare (not safe))
                         (cons __tmp47981 __tmp47978))))
                  (declare (not safe))
                  (cons __tmp47986 __tmp47977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47976 '()))))
                                            (declare (not safe))
                                            (cons __tmp47987 __tmp47975))))
                                     (declare (not safe))
                                     (cons __tmp48012 __tmp47974)))
                                  (__tmp47971
                                   (let ((__tmp47972
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10487_ '()))))
                                     (declare (not safe))
                                     (cons __tmp47972 '()))))
                              (declare (not safe))
                              (cons __tmp47973 __tmp47971))))
                       (declare (not safe))
                       (cons __tmp48013 __tmp47970))))
                (declare (not safe))
                (cons __tmp48016 __tmp47969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47968 '()))))
                                          (declare (not safe))
                                          (cons __tmp48017 __tmp47967))))
                                   (declare (not safe))
                                   (cons __tmp48030 __tmp47966))))
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
                                        (let ((_e1054010580_
                                               (gx#syntax-e _g1053010577_)))
                                          (let ((_hd1053910584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1054010580_)))
                                                (_tl1053810587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1054010580_))))
                                            (if (gx#stx-pair? _tl1053810587_)
                                                (let ((_e1054310590_
                                                       (gx#syntax-e
                                                        _tl1053810587_)))
                                                  (let ((_hd1054210594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1054310590_)))
                                                        (_tl1054110597_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1054310590_))))
                                                    (if (gx#stx-pair?
                                                         _tl1054110597_)
                                                        (let ((_e1054610600_
                                                               (gx#syntax-e
                                                                _tl1054110597_)))
                                                          (let ((_hd1054510604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1054610600_)))
                        (_tl1054410607_
                         (let () (declare (not safe)) (##cdr _e1054610600_))))
                    (if (gx#stx-pair? _tl1054410607_)
                        (let ((_e1054910610_ (gx#syntax-e _tl1054410607_)))
                          (let ((_hd1054810614_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1054910610_)))
                                (_tl1054710617_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1054910610_))))
                            (if (gx#stx-pair/null? _hd1054810614_)
                                (let ((_g47872_
                                       (gx#syntax-split-splice
                                        _hd1054810614_
                                        '0)))
                                  (begin
                                    (let ((_g47873_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g47872_)
                                                 (##vector-length _g47872_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g47873_ 2)))
                                          (error "Context expects 2 values"
                                                 _g47873_)))
                                    (let ((_target1055010620_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47872_ 0)))
                                          (_tl1055210623_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47872_ 1))))
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
                    (if (gx#stx-pair? _tl1054710617_)
                        (let ((_e1056110650_ (gx#syntax-e _tl1054710617_)))
                          (let ((_hd1056010654_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1056110650_)))
                                (_tl1055910657_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1056110650_))))
                            (if (gx#stx-pair? _tl1055910657_)
                                (let ((_e1056410660_
                                       (gx#syntax-e _tl1055910657_)))
                                  (let ((_hd1056310664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1056410660_)))
                                        (_tl1056210667_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1056410660_))))
                                    (if (gx#stx-pair? _tl1056210667_)
                                        (let ((_e1056710670_
                                               (gx#syntax-e _tl1056210667_)))
                                          (let ((_hd1056610674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1056710670_)))
                                                (_tl1056510677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1056710670_))))
                                            (if (gx#stx-null? _tl1056510677_)
                                                ((lambda (_L10680_
                                                          _L10682_
                                                          _L10683_
                                                          _L10684_
                                                          _L10685_
                                                          _L10686_
                                                          _L10687_)
                                                   (let ()
                                                     (let ((__tmp47965
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp47874
                                                            (let ((__tmp47952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp47959
                                  (let ((__tmp47960
                                         (let ((__tmp47961
                                                (let ((__tmp47964
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp47962
                                                       (let ((__tmp47963
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L10683_ '()))))
                 (declare (not safe))
                 (cons '() __tmp47963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47964
                                                        __tmp47962))))
                                           (declare (not safe))
                                           (cons __tmp47961 '()))))
                                    (declare (not safe))
                                    (cons _L10686_ __tmp47960)))
                                 (__tmp47953
                                  (let ((__tmp47954
                                         (let ((__tmp47955
                                                (let ((__tmp47956
                                                       (let ((__tmp47958
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp47957
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L10682_ '()))))
                 (declare (not safe))
                 (cons __tmp47958 __tmp47957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47956 '()))))
                                           (declare (not safe))
                                           (cons _L10685_ __tmp47955))))
                                    (declare (not safe))
                                    (cons __tmp47954 '()))))
                             (declare (not safe))
                             (cons __tmp47959 __tmp47953)))
                          (__tmp47875
                           (let ((__tmp47876
                                  (let ((__tmp47951 (gx#datum->syntax '#f 'if))
                                        (__tmp47877
                                         (let ((__tmp47948
                                                (let ((__tmp47950
                                                       (gx#datum->syntax
                                                        '#f
                                                        'symbol?))
                                                      (__tmp47949
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L10687_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp47950
                                                        __tmp47949)))
                                               (__tmp47878
                                                (let ((__tmp47881
                                                       (let ((__tmp47947
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp47882
                                                              (let ((__tmp47922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47941
                                    (let ((__tmp47946
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp47942
                                           (let ((__tmp47943
                                                  (let ((__tmp47945
                                                         (gx#datum->syntax
                                                          '#f
                                                          '##symbol-hash))
                                                        (__tmp47944
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L10687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47945
                                                          __tmp47944))))
                                             (declare (not safe))
                                             (cons __tmp47943 '()))))
                                      (declare (not safe))
                                      (cons __tmp47946 __tmp47942)))
                                   (__tmp47923
                                    (let ((__tmp47933
                                           (let ((__tmp47940
                                                  (gx#datum->syntax '#f 'ix))
                                                 (__tmp47934
                                                  (let ((__tmp47935
                                                         (let ((__tmp47939
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fxmodulo))
                       (__tmp47936
                        (let ((__tmp47938 (gx#datum->syntax '#f 'h))
                              (__tmp47937
                               (let ()
                                 (declare (not safe))
                                 (cons _L10680_ '()))))
                          (declare (not safe))
                          (cons __tmp47938 __tmp47937))))
                   (declare (not safe))
                   (cons __tmp47939 __tmp47936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47935 '()))))
                                             (declare (not safe))
                                             (cons __tmp47940 __tmp47934)))
                                          (__tmp47924
                                           (let ((__tmp47925
                                                  (let ((__tmp47932
                                                         (gx#datum->syntax
                                                          '#f
                                                          'q))
                                                        (__tmp47926
                                                         (let ((__tmp47927
                                                                (let ((__tmp47931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##vector-ref))
                              (__tmp47928
                               (let ((__tmp47929
                                      (let ((__tmp47930
                                             (gx#datum->syntax '#f 'ix)))
                                        (declare (not safe))
                                        (cons __tmp47930 '()))))
                                 (declare (not safe))
                                 (cons _L10685_ __tmp47929))))
                          (declare (not safe))
                          (cons __tmp47931 __tmp47928))))
                   (declare (not safe))
                   (cons __tmp47927 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47932
                                                          __tmp47926))))
                                             (declare (not safe))
                                             (cons __tmp47925 '()))))
                                      (declare (not safe))
                                      (cons __tmp47933 __tmp47924))))
                               (declare (not safe))
                               (cons __tmp47941 __tmp47923)))
                            (__tmp47883
                             (let ((__tmp47884
                                    (let ((__tmp47921
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp47885
                                           (let ((__tmp47920
                                                  (gx#datum->syntax '#f 'q))
                                                 (__tmp47886
                                                  (let ((__tmp47889
                                                         (let ((__tmp47919
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if))
                       (__tmp47890
                        (let ((__tmp47911
                               (let ((__tmp47918 (gx#datum->syntax '#f 'eq?))
                                     (__tmp47912
                                      (let ((__tmp47914
                                             (let ((__tmp47917
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##car))
                                                   (__tmp47915
                                                    (let ((__tmp47916
                                                           (gx#datum->syntax
                                                            '#f
                                                            'q)))
                                                      (declare (not safe))
                                                      (cons __tmp47916 '()))))
                                               (declare (not safe))
                                               (cons __tmp47917 __tmp47915)))
                                            (__tmp47913
                                             (let ()
                                               (declare (not safe))
                                               (cons _L10687_ '()))))
                                        (declare (not safe))
                                        (cons __tmp47914 __tmp47913))))
                                 (declare (not safe))
                                 (cons __tmp47918 __tmp47912)))
                              (__tmp47891
                               (let ((__tmp47894
                                      (let ((__tmp47910
                                             (gx#datum->syntax '#f 'let))
                                            (__tmp47895
                                             (let ((__tmp47903
                                                    (let ((__tmp47909
                                                           (gx#datum->syntax
                                                            '#f
                                                            'x))
                                                          (__tmp47904
                                                           (let ((__tmp47905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp47908 (gx#datum->syntax '#f '##cdr))
                                (__tmp47906
                                 (let ((__tmp47907 (gx#datum->syntax '#f 'q)))
                                   (declare (not safe))
                                   (cons __tmp47907 '()))))
                            (declare (not safe))
                            (cons __tmp47908 __tmp47906))))
                     (declare (not safe))
                     (cons __tmp47905 '()))))
              (declare (not safe))
              (cons __tmp47909 __tmp47904)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp47896
                                                    (let ((__tmp47897
                                                           (let ((__tmp47902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '~case-dispatch))
                         (__tmp47898
                          (let ((__tmp47901 (gx#datum->syntax '#f 'x))
                                (__tmp47899
                                 (let ((__tmp47900
                                        (lambda (_g1072010723_ _g1072110726_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1072010723_
                                                  _g1072110726_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47900 '() _L10684_))))
                            (declare (not safe))
                            (cons __tmp47901 __tmp47899))))
                     (declare (not safe))
                     (cons __tmp47902 __tmp47898))))
              (declare (not safe))
              (cons __tmp47897 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47903 __tmp47896))))
                                        (declare (not safe))
                                        (cons __tmp47910 __tmp47895)))
                                     (__tmp47892
                                      (let ((__tmp47893
                                             (let ()
                                               (declare (not safe))
                                               (cons _L10686_ '()))))
                                        (declare (not safe))
                                        (cons __tmp47893 '()))))
                                 (declare (not safe))
                                 (cons __tmp47894 __tmp47892))))
                          (declare (not safe))
                          (cons __tmp47911 __tmp47891))))
                   (declare (not safe))
                   (cons __tmp47919 __tmp47890)))
                (__tmp47887
                 (let ((__tmp47888
                        (let () (declare (not safe)) (cons _L10686_ '()))))
                   (declare (not safe))
                   (cons __tmp47888 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47889
                                                          __tmp47887))))
                                             (declare (not safe))
                                             (cons __tmp47920 __tmp47886))))
                                      (declare (not safe))
                                      (cons __tmp47921 __tmp47885))))
                               (declare (not safe))
                               (cons __tmp47884 '()))))
                        (declare (not safe))
                        (cons __tmp47922 __tmp47883))))
                 (declare (not safe))
                 (cons __tmp47947 __tmp47882)))
              (__tmp47879
               (let ((__tmp47880
                      (let () (declare (not safe)) (cons _L10686_ '()))))
                 (declare (not safe))
                 (cons __tmp47880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47881
                                                        __tmp47879))))
                                           (declare (not safe))
                                           (cons __tmp47948 __tmp47878))))
                                    (declare (not safe))
                                    (cons __tmp47951 __tmp47877))))
                             (declare (not safe))
                             (cons __tmp47876 '()))))
                      (declare (not safe))
                      (cons __tmp47952 __tmp47875))))
               (declare (not safe))
               (cons __tmp47965 __tmp47874))))
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
                    (let ((__tmp48031
                           (lambda (_lst10328_ _r10330_)
                             (let ((__tmp48032
                                    (lambda (_char10332_ _r10334_)
                                      (max (char->integer _char10332_)
                                           _r10334_))))
                               (declare (not safe))
                               (foldl1 __tmp48032 _r10330_ _lst10328_)))))
                      (declare (not safe))
                      (foldl1 __tmp48031 '0 _datums10325_))))
                 (_generate-char-dispatch-table8752_
                  (lambda (_indexes10304_)
                    (let* ((_ixs10310_
                            (map (lambda (_x10307_)
                                   (char->integer (car _x10307_)))
                                 _indexes10304_))
                           (_len10313_
                            (let ((__tmp48033
                                   (let ()
                                     (declare (not safe))
                                     (foldl1 max '0 _ixs10310_))))
                              (declare (not safe))
                              (fx+ __tmp48033 '1)))
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
                                              (let ((_e99229953_
                                                     (gx#syntax-e
                                                      _g99139950_)))
                                                (let ((_hd99219957_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e99229953_)))
                                                      (_tl99209960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e99229953_))))
                                                  (if (gx#stx-pair?
                                                       _tl99209960_)
                                                      (let ((_e99259963_
                                                             (gx#syntax-e
                                                              _tl99209960_)))
                                                        (let ((_hd99249967_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e99259963_)))
                      (_tl99239970_
                       (let () (declare (not safe)) (##cdr _e99259963_))))
                  (if (gx#stx-pair? _tl99239970_)
                      (let ((_e99289973_ (gx#syntax-e _tl99239970_)))
                        (let ((_hd99279977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99289973_)))
                              (_tl99269980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99289973_))))
                          (if (gx#stx-pair? _hd99279977_)
                              (let ((_e99319983_ (gx#syntax-e _hd99279977_)))
                                (let ((_hd99309987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99319983_)))
                                      (_tl99299990_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99319983_))))
                                  (if (gx#stx-null? _tl99299990_)
                                      (if (gx#stx-pair? _tl99269980_)
                                          (let ((_e99349993_
                                                 (gx#syntax-e _tl99269980_)))
                                            (let ((_hd99339997_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e99349993_)))
                                                  (_tl993210000_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e99349993_))))
                                              (if (gx#stx-pair? _tl993210000_)
                                                  (let ((_e993710003_
                                                         (gx#syntax-e
                                                          _tl993210000_)))
                                                    (let ((_hd993610007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e993710003_)))
                                                          (_tl993510010_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e993710003_))))
                                                      (if (gx#stx-pair?
                                                           _tl993510010_)
                                                          (let ((_e994010013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl993510010_)))
                    (let ((_hd993910017_
                           (let () (declare (not safe)) (##car _e994010013_)))
                          (_tl993810020_
                           (let () (declare (not safe)) (##cdr _e994010013_))))
                      (if (gx#stx-null? _tl993810020_)
                          ((lambda (_L10023_
                                    _L10025_
                                    _L10026_
                                    _L10027_
                                    _L10028_
                                    _L10029_)
                             (let ()
                               (let ((__tmp48154 (gx#datum->syntax '#f 'let))
                                     (__tmp48107
                                      (let ((__tmp48148
                                             (let ((__tmp48149
                                                    (let ((__tmp48150
                                                           (let ((__tmp48153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'lambda))
                         (__tmp48151
                          (let ((__tmp48152
                                 (let ()
                                   (declare (not safe))
                                   (cons _L10026_ '()))))
                            (declare (not safe))
                            (cons '() __tmp48152))))
                     (declare (not safe))
                     (cons __tmp48153 __tmp48151))))
              (declare (not safe))
              (cons __tmp48150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10028_ __tmp48149)))
                                            (__tmp48108
                                             (let ((__tmp48109
                                                    (let ((__tmp48147
                                                           (gx#datum->syntax
                                                            '#f
                                                            'if))
                                                          (__tmp48110
                                                           (let ((__tmp48144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48146 (gx#datum->syntax '#f 'char?))
                                (__tmp48145
                                 (let ()
                                   (declare (not safe))
                                   (cons _L10029_ '()))))
                            (declare (not safe))
                            (cons __tmp48146 __tmp48145)))
                         (__tmp48111
                          (let ((__tmp48114
                                 (let ((__tmp48143 (gx#datum->syntax '#f 'let))
                                       (__tmp48115
                                        (let ((__tmp48137
                                               (let ((__tmp48142
                                                      (gx#datum->syntax
                                                       '#f
                                                       'ix))
                                                     (__tmp48138
                                                      (let ((__tmp48139
                                                             (let ((__tmp48141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##char->integer))
                           (__tmp48140
                            (let () (declare (not safe)) (cons _L10029_ '()))))
                       (declare (not safe))
                       (cons __tmp48141 __tmp48140))))
                (declare (not safe))
                (cons __tmp48139 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48142 __tmp48138)))
                                              (__tmp48116
                                               (let ((__tmp48117
                                                      (let ((__tmp48136
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp48118
                                                             (let ((__tmp48122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48135 (gx#datum->syntax '#f 'and))
                                  (__tmp48123
                                   (let ((__tmp48130
                                          (let ((__tmp48134
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fx>=))
                                                (__tmp48131
                                                 (let ((__tmp48133
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ix))
                                                       (__tmp48132
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L10025_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48133
                                                         __tmp48132))))
                                            (declare (not safe))
                                            (cons __tmp48134 __tmp48131)))
                                         (__tmp48124
                                          (let ((__tmp48125
                                                 (let ((__tmp48129
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##fx<))
                                                       (__tmp48126
                                                        (let ((__tmp48128
                                                               (gx#datum->syntax
                                                                '#f
                                                                'ix))
                                                              (__tmp48127
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L10023_ '()))))
                  (declare (not safe))
                  (cons __tmp48128 __tmp48127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48129
                                                         __tmp48126))))
                                            (declare (not safe))
                                            (cons __tmp48125 '()))))
                                     (declare (not safe))
                                     (cons __tmp48130 __tmp48124))))
                              (declare (not safe))
                              (cons __tmp48135 __tmp48123)))
                           (__tmp48119
                            (let ((__tmp48120
                                   (let ((__tmp48121
                                          (let ()
                                            (declare (not safe))
                                            (cons _L10028_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48121 '()))))
                              (declare (not safe))
                              (cons _L10027_ __tmp48120))))
                       (declare (not safe))
                       (cons __tmp48122 __tmp48119))))
                (declare (not safe))
                (cons __tmp48136 __tmp48118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48117 '()))))
                                          (declare (not safe))
                                          (cons __tmp48137 __tmp48116))))
                                   (declare (not safe))
                                   (cons __tmp48143 __tmp48115)))
                                (__tmp48112
                                 (let ((__tmp48113
                                        (let ()
                                          (declare (not safe))
                                          (cons _L10028_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48113 '()))))
                            (declare (not safe))
                            (cons __tmp48114 __tmp48112))))
                     (declare (not safe))
                     (cons __tmp48144 __tmp48111))))
              (declare (not safe))
              (cons __tmp48147 __tmp48110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48109 '()))))
                                        (declare (not safe))
                                        (cons __tmp48148 __tmp48108))))
                                 (declare (not safe))
                                 (cons __tmp48154 __tmp48107))))
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
                                            (let ((_e1007810118_
                                                   (gx#syntax-e
                                                    _g1006810115_)))
                                              (let ((_hd1007710122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1007810118_)))
                                                    (_tl1007610125_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1007810118_))))
                                                (if (gx#stx-pair?
                                                     _tl1007610125_)
                                                    (let ((_e1008110128_
                                                           (gx#syntax-e
                                                            _tl1007610125_)))
                                                      (let ((_hd1008010132_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1008110128_)))
                    (_tl1007910135_
                     (let () (declare (not safe)) (##cdr _e1008110128_))))
                (if (gx#stx-pair? _tl1007910135_)
                    (let ((_e1008410138_ (gx#syntax-e _tl1007910135_)))
                      (let ((_hd1008310142_
                             (let ()
                               (declare (not safe))
                               (##car _e1008410138_)))
                            (_tl1008210145_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1008410138_))))
                        (if (gx#stx-pair? _tl1008210145_)
                            (let ((_e1008710148_ (gx#syntax-e _tl1008210145_)))
                              (let ((_hd1008610152_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1008710148_)))
                                    (_tl1008510155_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1008710148_))))
                                (if (gx#stx-pair/null? _hd1008610152_)
                                    (let ((_g48034_
                                           (gx#syntax-split-splice
                                            _hd1008610152_
                                            '0)))
                                      (begin
                                        (let ((_g48035_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g48034_)
                                                     (##vector-length _g48034_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g48035_ 2)))
                                              (error "Context expects 2 values"
                                                     _g48035_)))
                                        (let ((_target1008810158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g48034_ 0)))
                                              (_tl1009010161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g48034_ 1))))
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
                        (if (gx#stx-pair? _tl1008510155_)
                            (let ((_e1009910188_ (gx#syntax-e _tl1008510155_)))
                              (let ((_hd1009810192_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1009910188_)))
                                    (_tl1009710195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1009910188_))))
                                (if (gx#stx-pair? _tl1009710195_)
                                    (let ((_e1010210198_
                                           (gx#syntax-e _tl1009710195_)))
                                      (let ((_hd1010110202_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1010210198_)))
                                            (_tl1010010205_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1010210198_))))
                                        (if (gx#stx-pair? _tl1010010205_)
                                            (let ((_e1010510208_
                                                   (gx#syntax-e
                                                    _tl1010010205_)))
                                              (let ((_hd1010410212_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1010510208_)))
                                                    (_tl1010310215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1010510208_))))
                                                (if (gx#stx-null?
                                                     _tl1010310215_)
                                                    ((lambda (_L10218_
                                                              _L10220_
                                                              _L10221_
                                                              _L10222_
                                                              _L10223_
                                                              _L10224_
                                                              _L10225_)
                                                       (let ()
                                                         (let ((__tmp48106
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp48036
                        (let ((__tmp48093
                               (let ((__tmp48100
                                      (let ((__tmp48101
                                             (let ((__tmp48102
                                                    (let ((__tmp48105
                                                           (gx#datum->syntax
                                                            '#f
                                                            'lambda))
                                                          (__tmp48103
                                                           (let ((__tmp48104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L10221_ '()))))
                     (declare (not safe))
                     (cons '() __tmp48104))))
              (declare (not safe))
              (cons __tmp48105 __tmp48103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48102 '()))))
                                        (declare (not safe))
                                        (cons _L10224_ __tmp48101)))
                                     (__tmp48094
                                      (let ((__tmp48095
                                             (let ((__tmp48096
                                                    (let ((__tmp48097
                                                           (let ((__tmp48099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp48098
                          (let () (declare (not safe)) (cons _L10220_ '()))))
                     (declare (not safe))
                     (cons __tmp48099 __tmp48098))))
              (declare (not safe))
              (cons __tmp48097 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10223_ __tmp48096))))
                                        (declare (not safe))
                                        (cons __tmp48095 '()))))
                                 (declare (not safe))
                                 (cons __tmp48100 __tmp48094)))
                              (__tmp48037
                               (let ((__tmp48038
                                      (let ((__tmp48092
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp48039
                                             (let ((__tmp48089
                                                    (let ((__tmp48091
                                                           (gx#datum->syntax
                                                            '#f
                                                            'char?))
                                                          (__tmp48090
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L10225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp48091 __tmp48090)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48040
                                                    (let ((__tmp48043
                                                           (let ((__tmp48088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'let))
                         (__tmp48044
                          (let ((__tmp48082
                                 (let ((__tmp48087 (gx#datum->syntax '#f 'ix))
                                       (__tmp48083
                                        (let ((__tmp48084
                                               (let ((__tmp48086
                                                      (gx#datum->syntax
                                                       '#f
                                                       '##char->integer))
                                                     (__tmp48085
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L10225_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp48086
                                                       __tmp48085))))
                                          (declare (not safe))
                                          (cons __tmp48084 '()))))
                                   (declare (not safe))
                                   (cons __tmp48087 __tmp48083)))
                                (__tmp48045
                                 (let ((__tmp48046
                                        (let ((__tmp48081
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp48047
                                               (let ((__tmp48076
                                                      (let ((__tmp48080
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fx<))
                                                            (__tmp48077
                                                             (let ((__tmp48079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'ix))
                           (__tmp48078
                            (let () (declare (not safe)) (cons _L10218_ '()))))
                       (declare (not safe))
                       (cons __tmp48079 __tmp48078))))
                (declare (not safe))
                (cons __tmp48080 __tmp48077)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48048
                                                      (let ((__tmp48051
                                                             (let ((__tmp48075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp48052
                            (let ((__tmp48067
                                   (let ((__tmp48074 (gx#datum->syntax '#f 'x))
                                         (__tmp48068
                                          (let ((__tmp48069
                                                 (let ((__tmp48073
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##vector-ref))
                                                       (__tmp48070
                                                        (let ((__tmp48071
                                                               (let ((__tmp48072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'ix)))
                         (declare (not safe))
                         (cons __tmp48072 '()))))
                  (declare (not safe))
                  (cons _L10223_ __tmp48071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48073
                                                         __tmp48070))))
                                            (declare (not safe))
                                            (cons __tmp48069 '()))))
                                     (declare (not safe))
                                     (cons __tmp48074 __tmp48068)))
                                  (__tmp48053
                                   (let ((__tmp48054
                                          (let ((__tmp48066
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp48055
                                                 (let ((__tmp48065
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp48056
                                                        (let ((__tmp48059
                                                               (let ((__tmp48064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '~case-dispatch))
                             (__tmp48060
                              (let ((__tmp48063 (gx#datum->syntax '#f 'x))
                                    (__tmp48061
                                     (let ((__tmp48062
                                            (lambda (_g1025810261_
                                                     _g1025910264_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1025810261_
                                                      _g1025910264_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp48062 '() _L10222_))))
                                (declare (not safe))
                                (cons __tmp48063 __tmp48061))))
                         (declare (not safe))
                         (cons __tmp48064 __tmp48060)))
                      (__tmp48057
                       (let ((__tmp48058
                              (let ()
                                (declare (not safe))
                                (cons _L10224_ '()))))
                         (declare (not safe))
                         (cons __tmp48058 '()))))
                  (declare (not safe))
                  (cons __tmp48059 __tmp48057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48065
                                                         __tmp48056))))
                                            (declare (not safe))
                                            (cons __tmp48066 __tmp48055))))
                                     (declare (not safe))
                                     (cons __tmp48054 '()))))
                              (declare (not safe))
                              (cons __tmp48067 __tmp48053))))
                       (declare (not safe))
                       (cons __tmp48075 __tmp48052)))
                    (__tmp48049
                     (let ((__tmp48050
                            (let () (declare (not safe)) (cons _L10224_ '()))))
                       (declare (not safe))
                       (cons __tmp48050 '()))))
                (declare (not safe))
                (cons __tmp48051 __tmp48049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48076
                                                       __tmp48048))))
                                          (declare (not safe))
                                          (cons __tmp48081 __tmp48047))))
                                   (declare (not safe))
                                   (cons __tmp48046 '()))))
                            (declare (not safe))
                            (cons __tmp48082 __tmp48045))))
                     (declare (not safe))
                     (cons __tmp48088 __tmp48044)))
                  (__tmp48041
                   (let ((__tmp48042
                          (let () (declare (not safe)) (cons _L10224_ '()))))
                     (declare (not safe))
                     (cons __tmp48042 '()))))
              (declare (not safe))
              (cons __tmp48043 __tmp48041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48089 __tmp48040))))
                                        (declare (not safe))
                                        (cons __tmp48092 __tmp48039))))
                                 (declare (not safe))
                                 (cons __tmp48038 '()))))
                          (declare (not safe))
                          (cons __tmp48093 __tmp48037))))
                   (declare (not safe))
                   (cons __tmp48106 __tmp48036))))
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
                                    (let ((_e96979737_
                                           (gx#syntax-e _g96879734_)))
                                      (let ((_hd96969741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e96979737_)))
                                            (_tl96959744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e96979737_))))
                                        (if (gx#stx-pair? _tl96959744_)
                                            (let ((_e97009747_
                                                   (gx#syntax-e _tl96959744_)))
                                              (let ((_hd96999751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e97009747_)))
                                                    (_tl96989754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e97009747_))))
                                                (if (gx#stx-pair? _tl96989754_)
                                                    (let ((_e97039757_
                                                           (gx#syntax-e
                                                            _tl96989754_)))
                                                      (let ((_hd97029761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e97039757_)))
                    (_tl97019764_
                     (let () (declare (not safe)) (##cdr _e97039757_))))
                (if (gx#stx-pair? _tl97019764_)
                    (let ((_e97069767_ (gx#syntax-e _tl97019764_)))
                      (let ((_hd97059771_
                             (let () (declare (not safe)) (##car _e97069767_)))
                            (_tl97049774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e97069767_))))
                        (if (gx#stx-pair/null? _hd97059771_)
                            (let ((_g48155_
                                   (gx#syntax-split-splice _hd97059771_ '0)))
                              (begin
                                (let ((_g48156_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48155_)
                                             (##vector-length _g48155_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48156_ 2)))
                                      (error "Context expects 2 values"
                                             _g48156_)))
                                (let ((_target97079777_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48155_ 0)))
                                      (_tl97099780_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48155_ 1))))
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
                (if (gx#stx-pair? _tl97049774_)
                    (let ((_e97189807_ (gx#syntax-e _tl97049774_)))
                      (let ((_hd97179811_
                             (let () (declare (not safe)) (##car _e97189807_)))
                            (_tl97169814_
                             (let ()
                               (declare (not safe))
                               (##cdr _e97189807_))))
                        (if (gx#stx-pair? _tl97169814_)
                            (let ((_e97219817_ (gx#syntax-e _tl97169814_)))
                              (let ((_hd97209821_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e97219817_)))
                                    (_tl97199824_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e97219817_))))
                                (if (gx#stx-pair? _tl97199824_)
                                    (let ((_e97249827_
                                           (gx#syntax-e _tl97199824_)))
                                      (let ((_hd97239831_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e97249827_)))
                                            (_tl97229834_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e97249827_))))
                                        (if (gx#stx-null? _tl97229834_)
                                            ((lambda (_L9837_
                                                      _L9839_
                                                      _L9840_
                                                      _L9841_
                                                      _L9842_
                                                      _L9843_
                                                      _L9844_)
                                               (let ()
                                                 (let ((__tmp48248
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp48157
                                                        (let ((__tmp48235
                                                               (let ((__tmp48242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48243
                                     (let ((__tmp48244
                                            (let ((__tmp48247
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp48245
                                                   (let ((__tmp48246
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp48246))))
                                              (declare (not safe))
                                              (cons __tmp48247 __tmp48245))))
                                       (declare (not safe))
                                       (cons __tmp48244 '()))))
                                (declare (not safe))
                                (cons _L9843_ __tmp48243)))
                             (__tmp48236
                              (let ((__tmp48237
                                     (let ((__tmp48238
                                            (let ((__tmp48239
                                                   (let ((__tmp48241
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp48240
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48241
                                                           __tmp48240))))
                                              (declare (not safe))
                                              (cons __tmp48239 '()))))
                                       (declare (not safe))
                                       (cons _L9842_ __tmp48238))))
                                (declare (not safe))
                                (cons __tmp48237 '()))))
                         (declare (not safe))
                         (cons __tmp48242 __tmp48236)))
                      (__tmp48158
                       (let ((__tmp48159
                              (let ((__tmp48234 (gx#datum->syntax '#f 'if))
                                    (__tmp48160
                                     (let ((__tmp48231
                                            (let ((__tmp48233
                                                   (gx#datum->syntax
                                                    '#f
                                                    'char?))
                                                  (__tmp48232
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9844_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48233 __tmp48232)))
                                           (__tmp48161
                                            (let ((__tmp48164
                                                   (let ((__tmp48230
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp48165
                                                          (let ((__tmp48205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48224
                                (let ((__tmp48229 (gx#datum->syntax '#f 'h))
                                      (__tmp48225
                                       (let ((__tmp48226
                                              (let ((__tmp48228
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##char->integer))
                                                    (__tmp48227
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L9844_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48228 __tmp48227))))
                                         (declare (not safe))
                                         (cons __tmp48226 '()))))
                                  (declare (not safe))
                                  (cons __tmp48229 __tmp48225)))
                               (__tmp48206
                                (let ((__tmp48216
                                       (let ((__tmp48223
                                              (gx#datum->syntax '#f 'ix))
                                             (__tmp48217
                                              (let ((__tmp48218
                                                     (let ((__tmp48222
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##fxmodulo))
                                                           (__tmp48219
                                                            (let ((__tmp48221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp48220
                           (let () (declare (not safe)) (cons _L9837_ '()))))
                      (declare (not safe))
                      (cons __tmp48221 __tmp48220))))
               (declare (not safe))
               (cons __tmp48222 __tmp48219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48218 '()))))
                                         (declare (not safe))
                                         (cons __tmp48223 __tmp48217)))
                                      (__tmp48207
                                       (let ((__tmp48208
                                              (let ((__tmp48215
                                                     (gx#datum->syntax '#f 'q))
                                                    (__tmp48209
                                                     (let ((__tmp48210
                                                            (let ((__tmp48214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##vector-ref))
                          (__tmp48211
                           (let ((__tmp48212
                                  (let ((__tmp48213
                                         (gx#datum->syntax '#f 'ix)))
                                    (declare (not safe))
                                    (cons __tmp48213 '()))))
                             (declare (not safe))
                             (cons _L9842_ __tmp48212))))
                      (declare (not safe))
                      (cons __tmp48214 __tmp48211))))
               (declare (not safe))
               (cons __tmp48210 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48215 __tmp48209))))
                                         (declare (not safe))
                                         (cons __tmp48208 '()))))
                                  (declare (not safe))
                                  (cons __tmp48216 __tmp48207))))
                           (declare (not safe))
                           (cons __tmp48224 __tmp48206)))
                        (__tmp48166
                         (let ((__tmp48167
                                (let ((__tmp48204 (gx#datum->syntax '#f 'if))
                                      (__tmp48168
                                       (let ((__tmp48203
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp48169
                                              (let ((__tmp48172
                                                     (let ((__tmp48202
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp48173
                                                            (let ((__tmp48194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48201 (gx#datum->syntax '#f 'eq?))
                                 (__tmp48195
                                  (let ((__tmp48197
                                         (let ((__tmp48200
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp48198
                                                (let ((__tmp48199
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp48199 '()))))
                                           (declare (not safe))
                                           (cons __tmp48200 __tmp48198)))
                                        (__tmp48196
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9844_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48197 __tmp48196))))
                             (declare (not safe))
                             (cons __tmp48201 __tmp48195)))
                          (__tmp48174
                           (let ((__tmp48177
                                  (let ((__tmp48193
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp48178
                                         (let ((__tmp48186
                                                (let ((__tmp48192
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp48187
                                                       (let ((__tmp48188
                                                              (let ((__tmp48191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp48189
                             (let ((__tmp48190 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp48190 '()))))
                        (declare (not safe))
                        (cons __tmp48191 __tmp48189))))
                 (declare (not safe))
                 (cons __tmp48188 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48192
                                                        __tmp48187)))
                                               (__tmp48179
                                                (let ((__tmp48180
                                                       (let ((__tmp48185
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp48181
                                                              (let ((__tmp48184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp48182
                             (let ((__tmp48183
                                    (lambda (_g98819884_ _g98829887_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g98819884_ _g98829887_)))))
                               (declare (not safe))
                               (foldr1 __tmp48183 '() _L9841_))))
                        (declare (not safe))
                        (cons __tmp48184 __tmp48182))))
                 (declare (not safe))
                 (cons __tmp48185 __tmp48181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48180 '()))))
                                           (declare (not safe))
                                           (cons __tmp48186 __tmp48179))))
                                    (declare (not safe))
                                    (cons __tmp48193 __tmp48178)))
                                 (__tmp48175
                                  (let ((__tmp48176
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9843_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48176 '()))))
                             (declare (not safe))
                             (cons __tmp48177 __tmp48175))))
                      (declare (not safe))
                      (cons __tmp48194 __tmp48174))))
               (declare (not safe))
               (cons __tmp48202 __tmp48173)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48170
                                                     (let ((__tmp48171
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp48171 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48172 __tmp48170))))
                                         (declare (not safe))
                                         (cons __tmp48203 __tmp48169))))
                                  (declare (not safe))
                                  (cons __tmp48204 __tmp48168))))
                           (declare (not safe))
                           (cons __tmp48167 '()))))
                    (declare (not safe))
                    (cons __tmp48205 __tmp48166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48230
                                                           __tmp48165)))
                                                  (__tmp48162
                                                   (let ((__tmp48163
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48163 '()))))
                                              (declare (not safe))
                                              (cons __tmp48164 __tmp48162))))
                                       (declare (not safe))
                                       (cons __tmp48231 __tmp48161))))
                                (declare (not safe))
                                (cons __tmp48234 __tmp48160))))
                         (declare (not safe))
                         (cons __tmp48159 '()))))
                  (declare (not safe))
                  (cons __tmp48235 __tmp48158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48248
                                                         __tmp48157))))
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
                    (let ((__tmp48249
                           (lambda (_lst9668_ _r9670_)
                             (let ()
                               (declare (not safe))
                               (foldl1 min _r9670_ _lst9668_)))))
                      (declare (not safe))
                      (foldl1 __tmp48249 ##max-fixnum _datums9665_))))
                 (_max-fixnum8758_
                  (lambda (_datums9658_)
                    (let ((__tmp48250
                           (lambda (_lst9661_ _r9663_)
                             (let ()
                               (declare (not safe))
                               (foldl1 max _r9663_ _lst9661_)))))
                      (declare (not safe))
                      (foldl1 __tmp48250 ##min-fixnum _datums9658_))))
                 (_generate-fixnum-dispatch-table8759_
                  (lambda (_indexes9640_)
                    (let* ((_ixs9643_ (map car _indexes9640_))
                           (_len9646_
                            (let ((__tmp48251
                                   (let ()
                                     (declare (not safe))
                                     (foldl1 max '0 _ixs9643_))))
                              (declare (not safe))
                              (fx+ __tmp48251 '1)))
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
                                (let ((__tmp48252 (vector->list _tab9383_)))
                                  (declare (not safe))
                                  (andmap1 values __tmp48252))))
                          (let* ((_g93919435_
                                  (lambda (_g93929431_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g93929431_)))
                                 (_g93909636_
                                  (lambda (_g93929439_)
                                    (if (gx#stx-pair? _g93929439_)
                                        (let ((_e94029442_
                                               (gx#syntax-e _g93929439_)))
                                          (let ((_hd94019446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e94029442_)))
                                                (_tl94009449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e94029442_))))
                                            (if (gx#stx-pair? _tl94009449_)
                                                (let ((_e94059452_
                                                       (gx#syntax-e
                                                        _tl94009449_)))
                                                  (let ((_hd94049456_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e94059452_)))
                                                        (_tl94039459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e94059452_))))
                                                    (if (gx#stx-pair?
                                                         _tl94039459_)
                                                        (let ((_e94089462_
                                                               (gx#syntax-e
                                                                _tl94039459_)))
                                                          (let ((_hd94079466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e94089462_)))
                        (_tl94069469_
                         (let () (declare (not safe)) (##cdr _e94089462_))))
                    (if (gx#stx-pair? _tl94069469_)
                        (let ((_e94119472_ (gx#syntax-e _tl94069469_)))
                          (let ((_hd94109476_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e94119472_)))
                                (_tl94099479_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e94119472_))))
                            (if (gx#stx-pair/null? _hd94109476_)
                                (let ((_g48253_
                                       (gx#syntax-split-splice
                                        _hd94109476_
                                        '0)))
                                  (begin
                                    (let ((_g48254_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g48253_)
                                                 (##vector-length _g48253_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g48254_ 2)))
                                          (error "Context expects 2 values"
                                                 _g48254_)))
                                    (let ((_target94129482_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g48253_ 0)))
                                          (_tl94149485_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g48253_ 1))))
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
                    (if (gx#stx-pair? _tl94099479_)
                        (let ((_e94239512_ (gx#syntax-e _tl94099479_)))
                          (let ((_hd94229516_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e94239512_)))
                                (_tl94219519_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e94239512_))))
                            (if (gx#stx-pair? _tl94219519_)
                                (let ((_e94269522_ (gx#syntax-e _tl94219519_)))
                                  (let ((_hd94259526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e94269522_)))
                                        (_tl94249529_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e94269522_))))
                                    (if (gx#stx-pair? _tl94249529_)
                                        (let ((_e94299532_
                                               (gx#syntax-e _tl94249529_)))
                                          (let ((_hd94289536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e94299532_)))
                                                (_tl94279539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e94299532_))))
                                            (if (gx#stx-null? _tl94279539_)
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
                            (let ((__tmp48308 (gx#datum->syntax '#f 'let))
                                  (__tmp48255
                                   (let ((__tmp48295
                                          (let ((__tmp48302
                                                 (let ((__tmp48303
                                                        (let ((__tmp48304
                                                               (let ((__tmp48307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lambda))
                             (__tmp48305
                              (let ((__tmp48306
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9545_ '()))))
                                (declare (not safe))
                                (cons '() __tmp48306))))
                         (declare (not safe))
                         (cons __tmp48307 __tmp48305))))
                  (declare (not safe))
                  (cons __tmp48304 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9548_ __tmp48303)))
                                                (__tmp48296
                                                 (let ((__tmp48297
                                                        (let ((__tmp48298
                                                               (let ((__tmp48299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48301 (gx#datum->syntax '#f 'quote))
                                    (__tmp48300
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9544_ '()))))
                                (declare (not safe))
                                (cons __tmp48301 __tmp48300))))
                         (declare (not safe))
                         (cons __tmp48299 '()))))
                  (declare (not safe))
                  (cons _L9547_ __tmp48298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48297 '()))))
                                            (declare (not safe))
                                            (cons __tmp48302 __tmp48296)))
                                         (__tmp48256
                                          (let ((__tmp48257
                                                 (let ((__tmp48294
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp48258
                                                        (let ((__tmp48291
                                                               (let ((__tmp48293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fixnum?))
                             (__tmp48292
                              (let ()
                                (declare (not safe))
                                (cons _L9549_ '()))))
                         (declare (not safe))
                         (cons __tmp48293 __tmp48292)))
                      (__tmp48259
                       (let ((__tmp48262
                              (let ((__tmp48290 (gx#datum->syntax '#f 'if))
                                    (__tmp48263
                                     (let ((__tmp48278
                                            (let ((__tmp48289
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp48279
                                                   (let ((__tmp48285
                                                          (let ((__tmp48288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##fx>=))
                        (__tmp48286
                         (let ((__tmp48287
                                (let () (declare (not safe)) (cons '0 '()))))
                           (declare (not safe))
                           (cons _L9549_ __tmp48287))))
                    (declare (not safe))
                    (cons __tmp48288 __tmp48286)))
                 (__tmp48280
                  (let ((__tmp48281
                         (let ((__tmp48284 (gx#datum->syntax '#f '##fx<))
                               (__tmp48282
                                (let ((__tmp48283
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9542_ '()))))
                                  (declare (not safe))
                                  (cons _L9549_ __tmp48283))))
                           (declare (not safe))
                           (cons __tmp48284 __tmp48282))))
                    (declare (not safe))
                    (cons __tmp48281 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48285
                                                           __tmp48280))))
                                              (declare (not safe))
                                              (cons __tmp48289 __tmp48279)))
                                           (__tmp48264
                                            (let ((__tmp48267
                                                   (let ((__tmp48277
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp48268
                                                          (let ((__tmp48270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48276 (gx#datum->syntax '#f 'x))
                               (__tmp48271
                                (let ((__tmp48272
                                       (let ((__tmp48275
                                              (gx#datum->syntax
                                               '#f
                                               '##vector-ref))
                                             (__tmp48273
                                              (let ((__tmp48274
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L9549_ '()))))
                                                (declare (not safe))
                                                (cons _L9547_ __tmp48274))))
                                         (declare (not safe))
                                         (cons __tmp48275 __tmp48273))))
                                  (declare (not safe))
                                  (cons __tmp48272 '()))))
                           (declare (not safe))
                           (cons __tmp48276 __tmp48271)))
                        (__tmp48269
                         (let () (declare (not safe)) (cons _L9603_ '()))))
                    (declare (not safe))
                    (cons __tmp48270 __tmp48269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48277
                                                           __tmp48268)))
                                                  (__tmp48265
                                                   (let ((__tmp48266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48266 '()))))
                                              (declare (not safe))
                                              (cons __tmp48267 __tmp48265))))
                                       (declare (not safe))
                                       (cons __tmp48278 __tmp48264))))
                                (declare (not safe))
                                (cons __tmp48290 __tmp48263)))
                             (__tmp48260
                              (let ((__tmp48261
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9548_ '()))))
                                (declare (not safe))
                                (cons __tmp48261 '()))))
                         (declare (not safe))
                         (cons __tmp48262 __tmp48260))))
                  (declare (not safe))
                  (cons __tmp48291 __tmp48259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48294
                                                         __tmp48258))))
                                            (declare (not safe))
                                            (cons __tmp48257 '()))))
                                     (declare (not safe))
                                     (cons __tmp48295 __tmp48256))))
                              (declare (not safe))
                              (cons __tmp48308 __tmp48255))))
                        _g95899600_))))
               (_g95879616_
                (if _dense?9386_
                    (let ((__tmp48325 (gx#datum->syntax '#f '~case-dispatch))
                          (__tmp48321
                           (let ((__tmp48324 (gx#datum->syntax '#f 'x))
                                 (__tmp48322
                                  (let ((__tmp48323
                                         (lambda (_g96199622_ _g96209625_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g96199622_ _g96209625_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp48323 '() _L9546_))))
                             (declare (not safe))
                             (cons __tmp48324 __tmp48322))))
                      (declare (not safe))
                      (cons __tmp48325 __tmp48321))
                    (let ((__tmp48320 (gx#datum->syntax '#f 'if))
                          (__tmp48309
                           (let ((__tmp48319 (gx#datum->syntax '#f 'x))
                                 (__tmp48310
                                  (let ((__tmp48313
                                         (let ((__tmp48318
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch))
                                               (__tmp48314
                                                (let ((__tmp48317
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp48315
                                                       (let ((__tmp48316
                                                              (lambda (_g96279630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g96289633_)
                        (let ()
                          (declare (not safe))
                          (cons _g96279630_ _g96289633_)))))
                 (declare (not safe))
                 (foldr1 __tmp48316 '() _L9546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48317
                                                        __tmp48315))))
                                           (declare (not safe))
                                           (cons __tmp48318 __tmp48314)))
                                        (__tmp48311
                                         (let ((__tmp48312
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L9548_ '()))))
                                           (declare (not safe))
                                           (cons __tmp48312 '()))))
                                    (declare (not safe))
                                    (cons __tmp48313 __tmp48311))))
                             (declare (not safe))
                             (cons __tmp48319 __tmp48310))))
                      (declare (not safe))
                      (cons __tmp48320 __tmp48309)))))))
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
                                    (let ((_e91779217_
                                           (gx#syntax-e _g91679214_)))
                                      (let ((_hd91769221_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e91779217_)))
                                            (_tl91759224_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e91779217_))))
                                        (if (gx#stx-pair? _tl91759224_)
                                            (let ((_e91809227_
                                                   (gx#syntax-e _tl91759224_)))
                                              (let ((_hd91799231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e91809227_)))
                                                    (_tl91789234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e91809227_))))
                                                (if (gx#stx-pair? _tl91789234_)
                                                    (let ((_e91839237_
                                                           (gx#syntax-e
                                                            _tl91789234_)))
                                                      (let ((_hd91829241_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e91839237_)))
                    (_tl91819244_
                     (let () (declare (not safe)) (##cdr _e91839237_))))
                (if (gx#stx-pair? _tl91819244_)
                    (let ((_e91869247_ (gx#syntax-e _tl91819244_)))
                      (let ((_hd91859251_
                             (let () (declare (not safe)) (##car _e91869247_)))
                            (_tl91849254_
                             (let ()
                               (declare (not safe))
                               (##cdr _e91869247_))))
                        (if (gx#stx-pair/null? _hd91859251_)
                            (let ((_g48326_
                                   (gx#syntax-split-splice _hd91859251_ '0)))
                              (begin
                                (let ((_g48327_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48326_)
                                             (##vector-length _g48326_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48327_ 2)))
                                      (error "Context expects 2 values"
                                             _g48327_)))
                                (let ((_target91879257_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48326_ 0)))
                                      (_tl91899260_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48326_ 1))))
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
                (if (gx#stx-pair? _tl91849254_)
                    (let ((_e91989287_ (gx#syntax-e _tl91849254_)))
                      (let ((_hd91979291_
                             (let () (declare (not safe)) (##car _e91989287_)))
                            (_tl91969294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e91989287_))))
                        (if (gx#stx-pair? _tl91969294_)
                            (let ((_e92019297_ (gx#syntax-e _tl91969294_)))
                              (let ((_hd92009301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e92019297_)))
                                    (_tl91999304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e92019297_))))
                                (if (gx#stx-pair? _tl91999304_)
                                    (let ((_e92049307_
                                           (gx#syntax-e _tl91999304_)))
                                      (let ((_hd92039311_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e92049307_)))
                                            (_tl92029314_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e92049307_))))
                                        (if (gx#stx-null? _tl92029314_)
                                            ((lambda (_L9317_
                                                      _L9319_
                                                      _L9320_
                                                      _L9321_
                                                      _L9322_
                                                      _L9323_
                                                      _L9324_)
                                               (let ()
                                                 (let ((__tmp48411
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp48328
                                                        (let ((__tmp48398
                                                               (let ((__tmp48405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48406
                                     (let ((__tmp48407
                                            (let ((__tmp48410
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp48408
                                                   (let ((__tmp48409
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp48409))))
                                              (declare (not safe))
                                              (cons __tmp48410 __tmp48408))))
                                       (declare (not safe))
                                       (cons __tmp48407 '()))))
                                (declare (not safe))
                                (cons _L9323_ __tmp48406)))
                             (__tmp48399
                              (let ((__tmp48400
                                     (let ((__tmp48401
                                            (let ((__tmp48402
                                                   (let ((__tmp48404
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp48403
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48404
                                                           __tmp48403))))
                                              (declare (not safe))
                                              (cons __tmp48402 '()))))
                                       (declare (not safe))
                                       (cons _L9322_ __tmp48401))))
                                (declare (not safe))
                                (cons __tmp48400 '()))))
                         (declare (not safe))
                         (cons __tmp48405 __tmp48399)))
                      (__tmp48329
                       (let ((__tmp48330
                              (let ((__tmp48397 (gx#datum->syntax '#f 'if))
                                    (__tmp48331
                                     (let ((__tmp48394
                                            (let ((__tmp48396
                                                   (gx#datum->syntax
                                                    '#f
                                                    'fixnum?))
                                                  (__tmp48395
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9324_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48396 __tmp48395)))
                                           (__tmp48332
                                            (let ((__tmp48335
                                                   (let ((__tmp48393
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp48336
                                                          (let ((__tmp48376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48386
                                (let ((__tmp48392 (gx#datum->syntax '#f 'ix))
                                      (__tmp48387
                                       (let ((__tmp48388
                                              (let ((__tmp48391
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fxmodulo))
                                                    (__tmp48389
                                                     (let ((__tmp48390
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L9324_ __tmp48390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48391 __tmp48389))))
                                         (declare (not safe))
                                         (cons __tmp48388 '()))))
                                  (declare (not safe))
                                  (cons __tmp48392 __tmp48387)))
                               (__tmp48377
                                (let ((__tmp48378
                                       (let ((__tmp48385
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp48379
                                              (let ((__tmp48380
                                                     (let ((__tmp48384
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref))
                                                           (__tmp48381
                                                            (let ((__tmp48382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48383 (gx#datum->syntax '#f 'ix)))
                             (declare (not safe))
                             (cons __tmp48383 '()))))
                      (declare (not safe))
                      (cons _L9322_ __tmp48382))))
               (declare (not safe))
               (cons __tmp48384 __tmp48381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48380 '()))))
                                         (declare (not safe))
                                         (cons __tmp48385 __tmp48379))))
                                  (declare (not safe))
                                  (cons __tmp48378 '()))))
                           (declare (not safe))
                           (cons __tmp48386 __tmp48377)))
                        (__tmp48337
                         (let ((__tmp48338
                                (let ((__tmp48375 (gx#datum->syntax '#f 'if))
                                      (__tmp48339
                                       (let ((__tmp48374
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp48340
                                              (let ((__tmp48343
                                                     (let ((__tmp48373
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp48344
                                                            (let ((__tmp48365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48372 (gx#datum->syntax '#f 'eq?))
                                 (__tmp48366
                                  (let ((__tmp48368
                                         (let ((__tmp48371
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp48369
                                                (let ((__tmp48370
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp48370 '()))))
                                           (declare (not safe))
                                           (cons __tmp48371 __tmp48369)))
                                        (__tmp48367
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9324_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48368 __tmp48367))))
                             (declare (not safe))
                             (cons __tmp48372 __tmp48366)))
                          (__tmp48345
                           (let ((__tmp48348
                                  (let ((__tmp48364
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp48349
                                         (let ((__tmp48357
                                                (let ((__tmp48363
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp48358
                                                       (let ((__tmp48359
                                                              (let ((__tmp48362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp48360
                             (let ((__tmp48361 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp48361 '()))))
                        (declare (not safe))
                        (cons __tmp48362 __tmp48360))))
                 (declare (not safe))
                 (cons __tmp48359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48363
                                                        __tmp48358)))
                                               (__tmp48350
                                                (let ((__tmp48351
                                                       (let ((__tmp48356
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp48352
                                                              (let ((__tmp48355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp48353
                             (let ((__tmp48354
                                    (lambda (_g93619364_ _g93629367_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g93619364_ _g93629367_)))))
                               (declare (not safe))
                               (foldr1 __tmp48354 '() _L9321_))))
                        (declare (not safe))
                        (cons __tmp48355 __tmp48353))))
                 (declare (not safe))
                 (cons __tmp48356 __tmp48352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48351 '()))))
                                           (declare (not safe))
                                           (cons __tmp48357 __tmp48350))))
                                    (declare (not safe))
                                    (cons __tmp48364 __tmp48349)))
                                 (__tmp48346
                                  (let ((__tmp48347
                                         (let ()
                                           (declare (not safe))
                                           (cons _L9323_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48347 '()))))
                             (declare (not safe))
                             (cons __tmp48348 __tmp48346))))
                      (declare (not safe))
                      (cons __tmp48365 __tmp48345))))
               (declare (not safe))
               (cons __tmp48373 __tmp48344)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48341
                                                     (let ((__tmp48342
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp48342 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48343 __tmp48341))))
                                         (declare (not safe))
                                         (cons __tmp48374 __tmp48340))))
                                  (declare (not safe))
                                  (cons __tmp48375 __tmp48339))))
                           (declare (not safe))
                           (cons __tmp48338 '()))))
                    (declare (not safe))
                    (cons __tmp48376 __tmp48337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48393
                                                           __tmp48336)))
                                                  (__tmp48333
                                                   (let ((__tmp48334
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L9323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48334 '()))))
                                              (declare (not safe))
                                              (cons __tmp48335 __tmp48333))))
                                       (declare (not safe))
                                       (cons __tmp48394 __tmp48332))))
                                (declare (not safe))
                                (cons __tmp48397 __tmp48331))))
                         (declare (not safe))
                         (cons __tmp48330 '()))))
                  (declare (not safe))
                  (cons __tmp48398 __tmp48329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48411
                                                         __tmp48328))))
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
                    (let ((_g48412_
                           (if (_eq-datums?8745_ _datums8890_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e8894_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g48412_ 0)))
                              (_hashf8896_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g48412_ 1)))
                              (_eqf8897_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g48412_ 2))))
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
                                          (let ((_e89208966_
                                                 (gx#syntax-e _g89088963_)))
                                            (let ((_hd89198970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e89208966_)))
                                                  (_tl89188973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e89208966_))))
                                              (if (gx#stx-pair? _tl89188973_)
                                                  (let ((_e89238976_
                                                         (gx#syntax-e
                                                          _tl89188973_)))
                                                    (let ((_hd89228980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e89238976_)))
                                                          (_tl89218983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e89238976_))))
                                                      (if (gx#stx-pair?
                                                           _tl89218983_)
                                                          (let ((_e89268986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl89218983_)))
                    (let ((_hd89258990_
                           (let () (declare (not safe)) (##car _e89268986_)))
                          (_tl89248993_
                           (let () (declare (not safe)) (##cdr _e89268986_))))
                      (if (gx#stx-pair? _tl89248993_)
                          (let ((_e89298996_ (gx#syntax-e _tl89248993_)))
                            (let ((_hd89289000_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e89298996_)))
                                  (_tl89279003_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e89298996_))))
                              (if (gx#stx-pair/null? _hd89289000_)
                                  (let ((_g48413_
                                         (gx#syntax-split-splice
                                          _hd89289000_
                                          '0)))
                                    (begin
                                      (let ((_g48414_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g48413_)
                                                   (##vector-length _g48413_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g48414_ 2)))
                                            (error "Context expects 2 values"
                                                   _g48414_)))
                                      (let ((_target89309006_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g48413_ 0)))
                                            (_tl89329009_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g48413_ 1))))
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
                      (if (gx#stx-pair? _tl89279003_)
                          (let ((_e89419036_ (gx#syntax-e _tl89279003_)))
                            (let ((_hd89409040_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e89419036_)))
                                  (_tl89399043_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e89419036_))))
                              (if (gx#stx-pair? _tl89399043_)
                                  (let ((_e89449046_
                                         (gx#syntax-e _tl89399043_)))
                                    (let ((_hd89439050_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e89449046_)))
                                          (_tl89429053_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e89449046_))))
                                      (if (gx#stx-pair? _tl89429053_)
                                          (let ((_e89479056_
                                                 (gx#syntax-e _tl89429053_)))
                                            (let ((_hd89469060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e89479056_)))
                                                  (_tl89459063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e89479056_))))
                                              (if (gx#stx-pair? _tl89459063_)
                                                  (let ((_e89509066_
                                                         (gx#syntax-e
                                                          _tl89459063_)))
                                                    (let ((_hd89499070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e89509066_)))
                                                          (_tl89489073_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e89509066_))))
                                                      (if (gx#stx-pair?
                                                           _tl89489073_)
                                                          (let ((_e89539076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl89489073_)))
                    (let ((_hd89529080_
                           (let () (declare (not safe)) (##car _e89539076_)))
                          (_tl89519083_
                           (let () (declare (not safe)) (##cdr _e89539076_))))
                      (if (gx#stx-null? _tl89519083_)
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
                               (let ((__tmp48495 (gx#datum->syntax '#f 'let))
                                     (__tmp48415
                                      (let ((__tmp48482
                                             (let ((__tmp48489
                                                    (let ((__tmp48490
                                                           (let ((__tmp48491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48494 (gx#datum->syntax '#f 'lambda))
                                (__tmp48492
                                 (let ((__tmp48493
                                        (let ()
                                          (declare (not safe))
                                          (cons _L9091_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp48493))))
                            (declare (not safe))
                            (cons __tmp48494 __tmp48492))))
                     (declare (not safe))
                     (cons __tmp48491 '()))))
              (declare (not safe))
              (cons _L9094_ __tmp48490)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48483
                                                    (let ((__tmp48484
                                                           (let ((__tmp48485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48486
                                 (let ((__tmp48488
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48487
                                        (let ()
                                          (declare (not safe))
                                          (cons _L9090_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48488 __tmp48487))))
                            (declare (not safe))
                            (cons __tmp48486 '()))))
                     (declare (not safe))
                     (cons _L9093_ __tmp48485))))
              (declare (not safe))
              (cons __tmp48484 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48489 __tmp48483)))
                                            (__tmp48416
                                             (let ((__tmp48417
                                                    (let ((__tmp48481
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let*))
                                                          (__tmp48418
                                                           (let ((__tmp48457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48476
                                 (let ((__tmp48480 (gx#datum->syntax '#f 'h))
                                       (__tmp48477
                                        (let ((__tmp48478
                                               (let ((__tmp48479
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L9095_ '()))))
                                                 (declare (not safe))
                                                 (cons _L9088_ __tmp48479))))
                                          (declare (not safe))
                                          (cons __tmp48478 '()))))
                                   (declare (not safe))
                                   (cons __tmp48480 __tmp48477)))
                                (__tmp48458
                                 (let ((__tmp48468
                                        (let ((__tmp48475
                                               (gx#datum->syntax '#f 'ix))
                                              (__tmp48469
                                               (let ((__tmp48470
                                                      (let ((__tmp48474
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fxmodulo))
                                                            (__tmp48471
                                                             (let ((__tmp48473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'h))
                           (__tmp48472
                            (let () (declare (not safe)) (cons _L9089_ '()))))
                       (declare (not safe))
                       (cons __tmp48473 __tmp48472))))
                (declare (not safe))
                (cons __tmp48474 __tmp48471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48470 '()))))
                                          (declare (not safe))
                                          (cons __tmp48475 __tmp48469)))
                                       (__tmp48459
                                        (let ((__tmp48460
                                               (let ((__tmp48467
                                                      (gx#datum->syntax
                                                       '#f
                                                       'q))
                                                     (__tmp48461
                                                      (let ((__tmp48462
                                                             (let ((__tmp48466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##vector-ref))
                           (__tmp48463
                            (let ((__tmp48464
                                   (let ((__tmp48465
                                          (gx#datum->syntax '#f 'ix)))
                                     (declare (not safe))
                                     (cons __tmp48465 '()))))
                              (declare (not safe))
                              (cons _L9093_ __tmp48464))))
                       (declare (not safe))
                       (cons __tmp48466 __tmp48463))))
                (declare (not safe))
                (cons __tmp48462 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48467
                                                       __tmp48461))))
                                          (declare (not safe))
                                          (cons __tmp48460 '()))))
                                   (declare (not safe))
                                   (cons __tmp48468 __tmp48459))))
                            (declare (not safe))
                            (cons __tmp48476 __tmp48458)))
                         (__tmp48419
                          (let ((__tmp48420
                                 (let ((__tmp48456 (gx#datum->syntax '#f 'if))
                                       (__tmp48421
                                        (let ((__tmp48455
                                               (gx#datum->syntax '#f 'q))
                                              (__tmp48422
                                               (let ((__tmp48425
                                                      (let ((__tmp48454
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp48426
                                                             (let ((__tmp48447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48448
                                   (let ((__tmp48450
                                          (let ((__tmp48453
                                                 (gx#datum->syntax '#f '##car))
                                                (__tmp48451
                                                 (let ((__tmp48452
                                                        (gx#datum->syntax
                                                         '#f
                                                         'q)))
                                                   (declare (not safe))
                                                   (cons __tmp48452 '()))))
                                            (declare (not safe))
                                            (cons __tmp48453 __tmp48451)))
                                         (__tmp48449
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9095_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48450 __tmp48449))))
                              (declare (not safe))
                              (cons _L9086_ __tmp48448)))
                           (__tmp48427
                            (let ((__tmp48430
                                   (let ((__tmp48446
                                          (gx#datum->syntax '#f 'let))
                                         (__tmp48431
                                          (let ((__tmp48439
                                                 (let ((__tmp48445
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp48440
                                                        (let ((__tmp48441
                                                               (let ((__tmp48444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '##cdr))
                             (__tmp48442
                              (let ((__tmp48443 (gx#datum->syntax '#f 'q)))
                                (declare (not safe))
                                (cons __tmp48443 '()))))
                         (declare (not safe))
                         (cons __tmp48444 __tmp48442))))
                  (declare (not safe))
                  (cons __tmp48441 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48445
                                                         __tmp48440)))
                                                (__tmp48432
                                                 (let ((__tmp48433
                                                        (let ((__tmp48438
                                                               (gx#datum->syntax
                                                                '#f
                                                                '~case-dispatch))
                                                              (__tmp48434
                                                               (let ((__tmp48437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'x))
                             (__tmp48435
                              (let ((__tmp48436
                                     (lambda (_g91399142_ _g91409145_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g91399142_ _g91409145_)))))
                                (declare (not safe))
                                (foldr1 __tmp48436 '() _L9092_))))
                         (declare (not safe))
                         (cons __tmp48437 __tmp48435))))
                  (declare (not safe))
                  (cons __tmp48438 __tmp48434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48433 '()))))
                                            (declare (not safe))
                                            (cons __tmp48439 __tmp48432))))
                                     (declare (not safe))
                                     (cons __tmp48446 __tmp48431)))
                                  (__tmp48428
                                   (let ((__tmp48429
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9094_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48429 '()))))
                              (declare (not safe))
                              (cons __tmp48430 __tmp48428))))
                       (declare (not safe))
                       (cons __tmp48447 __tmp48427))))
                (declare (not safe))
                (cons __tmp48454 __tmp48426)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48423
                                                      (let ((__tmp48424
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L9094_ '()))))
                (declare (not safe))
                (cons __tmp48424 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48425
                                                       __tmp48423))))
                                          (declare (not safe))
                                          (cons __tmp48455 __tmp48422))))
                                   (declare (not safe))
                                   (cons __tmp48456 __tmp48421))))
                            (declare (not safe))
                            (cons __tmp48420 '()))))
                     (declare (not safe))
                     (cons __tmp48457 __tmp48419))))
              (declare (not safe))
              (cons __tmp48481 __tmp48418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48417 '()))))
                                        (declare (not safe))
                                        (cons __tmp48482 __tmp48416))))
                                 (declare (not safe))
                                 (cons __tmp48495 __tmp48415))))
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
                        (let ((_e87708795_ (gx#syntax-e _g87658792_)))
                          (let ((_hd87698799_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e87708795_)))
                                (_tl87688802_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e87708795_))))
                            (if (gx#stx-pair? _tl87688802_)
                                (let ((_e87738805_ (gx#syntax-e _tl87688802_)))
                                  (let ((_hd87728809_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e87738805_)))
                                        (_tl87718812_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e87738805_))))
                                    (if (gx#stx-pair/null? _tl87718812_)
                                        (let ((_g48496_
                                               (gx#syntax-split-splice
                                                _tl87718812_
                                                '0)))
                                          (begin
                                            (let ((_g48497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g48496_)
                                                         (##vector-length
                                                          _g48496_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g48497_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g48497_)))
                                            (let ((_target87748815_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48496_
                                                      0)))
                                                  (_tl87768818_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g48496_
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
                               (let ((_g48498_
                                      (_parse-clauses8738_
                                       _L8847_
                                       (let ((__tmp48500
                                              (lambda (_g88658868_ _g88668871_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g88658868_
                                                        _g88668871_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48500 '() _L8845_)))))
                                 (begin
                                   (let ((_g48499_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g48498_)
                                                (##vector-length _g48498_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g48499_ 3)))
                                         (error "Context expects 3 values"
                                                _g48499_)))
                                   (let ((_datums8874_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48498_ 0)))
                                         (_dispatch8876_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48498_ 1)))
                                         (_default8877_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48498_ 2))))
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
                      (let ((_e1179511814_ (gx#syntax-e _g1179011811_)))
                        (let ((_hd1179411818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1179511814_)))
                              (_tl1179311821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1179511814_))))
                          (if (gx#stx-pair? _tl1179311821_)
                              (let ((_e1179811824_
                                     (gx#syntax-e _tl1179311821_)))
                                (let ((_hd1179711828_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1179811824_)))
                                      (_tl1179611831_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1179811824_))))
                                  (if (gx#stx-pair? _tl1179611831_)
                                      (let ((_e1180111834_
                                             (gx#syntax-e _tl1179611831_)))
                                        (let ((_hd1180011838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1180111834_)))
                                              (_tl1179911841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1180111834_))))
                                          (if (gx#stx-null? _tl1179911841_)
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
                                                       (let ((__tmp48518
                                                              (gx#datum->syntax
                                                               '#f
                                                               'eq?))
                                                             (__tmp48513
                                                              (let ((__tmp48515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48517 (gx#datum->syntax '#f 'quote))
                                   (__tmp48516
                                    (let ()
                                      (declare (not safe))
                                      (cons _L11846_ '()))))
                               (declare (not safe))
                               (cons __tmp48517 __tmp48516)))
                            (__tmp48514
                             (let ()
                               (declare (not safe))
                               (cons _L11844_ '()))))
                        (declare (not safe))
                        (cons __tmp48515 __tmp48514))))
                 (declare (not safe))
                 (cons __tmp48518 __tmp48513))
               (if (let () (declare (not safe)) (number? _datum-e11862_))
                   (let ((__tmp48512 (gx#datum->syntax '#f 'eqv?))
                         (__tmp48507
                          (let ((__tmp48509
                                 (let ((__tmp48511
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48510
                                        (let ()
                                          (declare (not safe))
                                          (cons _L11846_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48511 __tmp48510)))
                                (__tmp48508
                                 (let ()
                                   (declare (not safe))
                                   (cons _L11844_ '()))))
                            (declare (not safe))
                            (cons __tmp48509 __tmp48508))))
                     (declare (not safe))
                     (cons __tmp48512 __tmp48507))
                   (let ((__tmp48506 (gx#datum->syntax '#f 'equal?))
                         (__tmp48501
                          (let ((__tmp48503
                                 (let ((__tmp48505
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48504
                                        (let ()
                                          (declare (not safe))
                                          (cons _L11846_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48505 __tmp48504)))
                                (__tmp48502
                                 (let ()
                                   (declare (not safe))
                                   (cons _L11844_ '()))))
                            (declare (not safe))
                            (cons __tmp48503 __tmp48502))))
                     (declare (not safe))
                     (cons __tmp48506 __tmp48501))))))
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
                      (let ((_e1188711912_ (gx#syntax-e _g1188211909_)))
                        (let ((_hd1188611916_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1188711912_)))
                              (_tl1188511919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1188711912_))))
                          (if (gx#stx-pair? _tl1188511919_)
                              (let ((_e1189011922_
                                     (gx#syntax-e _tl1188511919_)))
                                (let ((_hd1188911926_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1189011922_)))
                                      (_tl1188811929_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1189011922_))))
                                  (if (gx#stx-pair/null? _tl1188811929_)
                                      (let ((_g48519_
                                             (gx#syntax-split-splice
                                              _tl1188811929_
                                              '0)))
                                        (begin
                                          (let ((_g48520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48519_)
                                                       (##vector-length
                                                        _g48519_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48520_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48520_)))
                                          (let ((_target1189111932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48519_ 0)))
                                                (_tl1189311935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48519_ 1))))
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
                             (let ((__tmp48525
                                    (gx#datum->syntax '#f '~case-dispatch*))
                                   (__tmp48521
                                    (let ((__tmp48522
                                           (let ((__tmp48523
                                                  (let ((__tmp48524
                                                         (lambda (_g1198111984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1198211987_)
                   (let ()
                     (declare (not safe))
                     (cons _g1198111984_ _g1198211987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp48524
                                                            '()
                                                            _L11962_))))
                                             (declare (not safe))
                                             (cons _L11964_ __tmp48523))))
                                      (declare (not safe))
                                      (cons '0 __tmp48522))))
                               (declare (not safe))
                               (cons __tmp48525 __tmp48521)))
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
        (let* ((___stx4307443075_ _stx11995_)
               (_g1200212098_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4307443075_))))
          (let ((___kont4307743078_
                 (lambda (_L12575_ _L12577_)
                   (let ((__tmp48527 (gx#datum->syntax '#f 'quote))
                         (__tmp48526
                          (let () (declare (not safe)) (cons '#!void '()))))
                     (declare (not safe))
                     (cons __tmp48527 __tmp48526))))
                (___kont4307943080_
                 (lambda (_L12517_ _L12519_ _L12520_) _L12517_))
                (___kont4308143082_
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
                                  (let ((__tmp48535 (gx#datum->syntax '#f 'if))
                                        (__tmp48528
                                         (let ((__tmp48531
                                                (let ((__tmp48534
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##fx=))
                                                      (__tmp48532
                                                       (let ((__tmp48533
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L12454_ '()))))
                 (declare (not safe))
                 (cons _L12417_ __tmp48533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48534
                                                        __tmp48532)))
                                               (__tmp48529
                                                (let ((__tmp48530
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L12414_ '()))))
                                                  (declare (not safe))
                                                  (cons _L12416_ __tmp48530))))
                                           (declare (not safe))
                                           (cons __tmp48531 __tmp48529))))
                                    (declare (not safe))
                                    (cons __tmp48535 __tmp48528))))
                              _g1244012451_))))
                     (_g1243812466_ (gx#stx-e _L12418_)))))
                (___kont4308343084_
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
                                 (let ((_e1229912315_
                                        (gx#syntax-e _g1229412312_)))
                                   (let ((_hd1229812319_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1229912315_)))
                                         (_tl1229712322_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1229912315_))))
                                     (if (gx#stx-pair? _tl1229712322_)
                                         (let ((_e1230212325_
                                                (gx#syntax-e _tl1229712322_)))
                                           (let ((_hd1230112329_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1230212325_)))
                                                 (_tl1230012332_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1230212325_))))
                                             (if (gx#stx-null? _tl1230012332_)
                                                 ((lambda (_L12335_ _L12337_)
                                                    (let ()
                                                      (let ((__tmp48552
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp48536
                                                             (let ((__tmp48548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48551 (gx#datum->syntax '#f '##fx=))
                                  (__tmp48549
                                   (let ((__tmp48550
                                          (let ()
                                            (declare (not safe))
                                            (cons _L12337_ '()))))
                                     (declare (not safe))
                                     (cons _L12268_ __tmp48550))))
                              (declare (not safe))
                              (cons __tmp48551 __tmp48549)))
                           (__tmp48537
                            (let ((__tmp48538
                                   (let ((__tmp48539
                                          (let ((__tmp48547
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp48540
                                                 (let ((__tmp48543
                                                        (let ((__tmp48546
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx=))
                                                              (__tmp48544
                                                               (let ((__tmp48545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L12335_ '()))))
                         (declare (not safe))
                         (cons _L12268_ __tmp48545))))
                  (declare (not safe))
                  (cons __tmp48546 __tmp48544)))
               (__tmp48541
                (let ((__tmp48542
                       (let () (declare (not safe)) (cons _L12264_ '()))))
                  (declare (not safe))
                  (cons _L12266_ __tmp48542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48543
                                                         __tmp48541))))
                                            (declare (not safe))
                                            (cons __tmp48547 __tmp48540))))
                                     (declare (not safe))
                                     (cons __tmp48539 '()))))
                              (declare (not safe))
                              (cons _L12267_ __tmp48538))))
                       (declare (not safe))
                       (cons __tmp48548 __tmp48537))))
                (declare (not safe))
                (cons __tmp48552 __tmp48536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1230112329_
                                                  _hd1229812319_)
                                                 (_g1229312308_
                                                  _g1229412312_))))
                                         (_g1229312308_ _g1229412312_))))
                                 (_g1229312308_ _g1229412312_)))))
                     (_g1229212353_
                      (list (gx#stx-e _L12269_)
                            (let ((__tmp48553 (gx#stx-e _L12269_)))
                              (declare (not safe))
                              (fx+ __tmp48553 '1)))))))
                (___kont4308543086_
                 (lambda (_L12165_ _L12167_ _L12168_)
                   (let ((__tmp48558
                          (gx#datum->syntax '#f '~case-dispatch-bsearch))
                         (__tmp48554
                          (let ((__tmp48555
                                 (let ((__tmp48556
                                        (let ((__tmp48557
                                               (lambda (_g1218812191_
                                                        _g1218912194_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1218812191_
                                                         _g1218912194_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp48557 '() _L12165_))))
                                   (declare (not safe))
                                   (cons _L12167_ __tmp48556))))
                            (declare (not safe))
                            (cons _L12168_ __tmp48555))))
                     (declare (not safe))
                     (cons __tmp48558 __tmp48554)))))
            (let ((___match4323143232_
                   (lambda (_e1207712105_
                            _hd1207612109_
                            _tl1207512112_
                            _e1208012115_
                            _hd1207912119_
                            _tl1207812122_
                            _e1208312125_
                            _hd1208212129_
                            _tl1208112132_
                            ___splice4308743088_
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
                                       (___kont4308543086_
                                        _K1209212161_
                                        _hd1208212129_
                                        _hd1207912119_))))))
                       (_loop1208712141_ _target1208412135_ '())))))
              (if (gx#stx-pair? ___stx4307443075_)
                  (let ((_e1200812545_ (gx#syntax-e ___stx4307443075_)))
                    (let ((_tl1200612552_
                           (let () (declare (not safe)) (##cdr _e1200812545_)))
                          (_hd1200712549_
                           (let ()
                             (declare (not safe))
                             (##car _e1200812545_))))
                      (if (gx#stx-pair? _tl1200612552_)
                          (let ((_e1201112555_ (gx#syntax-e _tl1200612552_)))
                            (let ((_tl1200912562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1201112555_)))
                                  (_hd1201012559_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1201112555_))))
                              (if (gx#stx-pair? _tl1200912562_)
                                  (let ((_e1201412565_
                                         (gx#syntax-e _tl1200912562_)))
                                    (let ((_tl1201212572_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1201412565_)))
                                          (_hd1201312569_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1201412565_))))
                                      (if (gx#stx-null? _tl1201212572_)
                                          (___kont4307743078_
                                           _hd1201312569_
                                           _hd1201012559_)
                                          (if (gx#stx-pair? _tl1201212572_)
                                              (let ((_e1202912507_
                                                     (gx#syntax-e
                                                      _tl1201212572_)))
                                                (let ((_tl1202712514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1202912507_)))
                                                      (_hd1202812511_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1202912507_))))
                                                  (if (gx#stx-null?
                                                       _tl1202712514_)
                                                      (___kont4307943080_
                                                       _hd1202812511_
                                                       _hd1201312569_
                                                       _hd1201012559_)
                                                      (if (gx#stx-pair?
                                                           _tl1202712514_)
                                                          (let ((_e1204812404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1202712514_)))
                    (let ((_tl1204612411_
                           (let () (declare (not safe)) (##cdr _e1204812404_)))
                          (_hd1204712408_
                           (let ()
                             (declare (not safe))
                             (##car _e1204812404_))))
                      (if (gx#stx-null? _tl1204612411_)
                          (___kont4308143082_
                           _hd1204712408_
                           _hd1202812511_
                           _hd1201312569_
                           _hd1201012559_)
                          (if (gx#stx-pair? _tl1204612411_)
                              (let ((_e1207112254_
                                     (gx#syntax-e _tl1204612411_)))
                                (let ((_tl1206912261_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1207112254_)))
                                      (_hd1207012258_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1207112254_))))
                                  (if (gx#stx-null? _tl1206912261_)
                                      (___kont4308343084_
                                       _hd1207012258_
                                       _hd1204712408_
                                       _hd1202812511_
                                       _hd1201312569_
                                       _hd1201012559_)
                                      (if (gx#stx-pair/null? _tl1201212572_)
                                          (let ((___splice4308743088_
                                                 (gx#syntax-split-splice
                                                  _tl1201212572_
                                                  '0)))
                                            (let ((_tl1208612138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4308743088_
                                                      '1)))
                                                  (_target1208412135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4308743088_
                                                      '0))))
                                              (if (gx#stx-null? _tl1208612138_)
                                                  (___match4323143232_
                                                   _e1200812545_
                                                   _hd1200712549_
                                                   _tl1200612552_
                                                   _e1201112555_
                                                   _hd1201012559_
                                                   _tl1200912562_
                                                   _e1201412565_
                                                   _hd1201312569_
                                                   _tl1201212572_
                                                   ___splice4308743088_
                                                   _target1208412135_
                                                   _tl1208612138_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1200212098_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1200212098_))))))
                              (if (gx#stx-pair/null? _tl1201212572_)
                                  (let ((___splice4308743088_
                                         (gx#syntax-split-splice
                                          _tl1201212572_
                                          '0)))
                                    (let ((_tl1208612138_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4308743088_
                                              '1)))
                                          (_target1208412135_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4308743088_
                                              '0))))
                                      (if (gx#stx-null? _tl1208612138_)
                                          (___match4323143232_
                                           _e1200812545_
                                           _hd1200712549_
                                           _tl1200612552_
                                           _e1201112555_
                                           _hd1201012559_
                                           _tl1200912562_
                                           _e1201412565_
                                           _hd1201312569_
                                           _tl1201212572_
                                           ___splice4308743088_
                                           _target1208412135_
                                           _tl1208612138_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1200212098_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1200212098_)))))))
                  (if (gx#stx-pair/null? _tl1201212572_)
                      (let ((___splice4308743088_
                             (gx#syntax-split-splice _tl1201212572_ '0)))
                        (let ((_tl1208612138_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4308743088_ '1)))
                              (_target1208412135_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4308743088_ '0))))
                          (if (gx#stx-null? _tl1208612138_)
                              (___match4323143232_
                               _e1200812545_
                               _hd1200712549_
                               _tl1200612552_
                               _e1201112555_
                               _hd1201012559_
                               _tl1200912562_
                               _e1201412565_
                               _hd1201312569_
                               _tl1201212572_
                               ___splice4308743088_
                               _target1208412135_
                               _tl1208612138_)
                              (let () (declare (not safe)) (_g1200212098_)))))
                      (let () (declare (not safe)) (_g1200212098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1201212572_)
                                                  (let ((___splice4308743088_
                                                         (gx#syntax-split-splice
                                                          _tl1201212572_
                                                          '0)))
                                                    (let ((_tl1208612138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4308743088_
                                                              '1)))
                                                          (_target1208412135_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4308743088_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1208612138_)
                                                          (___match4323143232_
                                                           _e1200812545_
                                                           _hd1200712549_
                                                           _tl1200612552_
                                                           _e1201112555_
                                                           _hd1201012559_
                                                           _tl1200912562_
                                                           _e1201412565_
                                                           _hd1201312569_
                                                           _tl1201212572_
                                                           ___splice4308743088_
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
                           (let ((__tmp48559 (car _rest12970_)))
                             (declare (not safe))
                             (cons __tmp48559 _left12971_)))
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
                        (let ((_e1261012638_ (gx#syntax-e _g1260412635_)))
                          (let ((_hd1260912642_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1261012638_)))
                                (_tl1260812645_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1261012638_))))
                            (if (gx#stx-pair? _tl1260812645_)
                                (let ((_e1261312648_
                                       (gx#syntax-e _tl1260812645_)))
                                  (let ((_hd1261212652_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1261312648_)))
                                        (_tl1261112655_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1261312648_))))
                                    (if (gx#stx-pair? _tl1261112655_)
                                        (let ((_e1261612658_
                                               (gx#syntax-e _tl1261112655_)))
                                          (let ((_hd1261512662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1261612658_)))
                                                (_tl1261412665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1261612658_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1261412665_)
                                                (let ((_g48560_
                                                       (gx#syntax-split-splice
                                                        _tl1261412665_
                                                        '0)))
                                                  (begin
                                                    (let ((_g48561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g48560_)
                         (##vector-length _g48560_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g48561_ 2)))
                  (error "Context expects 2 values" _g48561_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1261712668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48560_
                                                              0)))
                                                          (_tl1261912671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48560_
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
                                               (length (let ((__tmp48562
                                                              (lambda (_g1272212725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1272312728_)
                        (let ()
                          (declare (not safe))
                          (cons _g1272212725_ _g1272312728_)))))
                 (declare (not safe))
                 (foldr1 __tmp48562 '() _L12698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid12734_
                                               (quotient _len12731_ '2))
                                              (_g48563_
                                               (_split12600_
                                                (let ((__tmp48565
                                                       (lambda (_g1273612739_
                                                                _g1273712742_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1273612739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1273712742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp48565
                                                          '()
                                                          _L12698_))
                                                _mid12734_)))
                                         (begin
                                           (let ((_g48564_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48563_)
                                                        (##vector-length
                                                         _g48563_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48564_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48564_)))
                                           (let ((_left12745_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48563_ 0)))
                                                 (_right12747_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48563_
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
                                                             (let ((_e1275912799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1275212796_)))
                       (let ((_hd1275812803_
                              (let ()
                                (declare (not safe))
                                (##car _e1275912799_)))
                             (_tl1275712806_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1275912799_))))
                         (if (gx#stx-pair? _tl1275712806_)
                             (let ((_e1276212809_
                                    (gx#syntax-e _tl1275712806_)))
                               (let ((_hd1276112813_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1276212809_)))
                                     (_tl1276012816_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1276212809_))))
                                 (if (gx#stx-pair/null? _hd1276112813_)
                                     (let ((_g48566_
                                            (gx#syntax-split-splice
                                             _hd1276112813_
                                             '0)))
                                       (begin
                                         (let ((_g48567_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48566_)
                                                      (##vector-length
                                                       _g48566_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48567_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48567_)))
                                         (let ((_target1276312819_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48566_ 0)))
                                               (_tl1276512822_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48566_ 1))))
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
                         (if (gx#stx-pair? _tl1276012816_)
                             (let ((_e1277412849_
                                    (gx#syntax-e _tl1276012816_)))
                               (let ((_hd1277312853_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1277412849_)))
                                     (_tl1277212856_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1277412849_))))
                                 (if (gx#stx-pair/null? _hd1277312853_)
                                     (let ((_g48568_
                                            (gx#syntax-split-splice
                                             _hd1277312853_
                                             '0)))
                                       (begin
                                         (let ((_g48569_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48568_)
                                                      (##vector-length
                                                       _g48568_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48569_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48569_)))
                                         (let ((_target1277512859_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48568_ 0)))
                                               (_tl1277712862_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g48568_ 1))))
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
                         (if (gx#stx-pair? _tl1277212856_)
                             (let ((_e1278612889_
                                    (gx#syntax-e _tl1277212856_)))
                               (let ((_hd1278512893_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1278612889_)))
                                     (_tl1278412896_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1278612889_))))
                                 (if (gx#stx-null? _tl1278412896_)
                                     ((lambda (_L12899_
                                               _L12901_
                                               _L12902_
                                               _L12903_)
                                        (let ()
                                          (let ((__tmp48589
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp48570
                                                 (let ((__tmp48585
                                                        (let ((__tmp48588
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx<))
                                                              (__tmp48586
                                                               (let ((__tmp48587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L12899_ '()))))
                         (declare (not safe))
                         (cons _L12700_ __tmp48587))))
                  (declare (not safe))
                  (cons __tmp48588 __tmp48586)))
               (__tmp48571
                (let ((__tmp48579
                       (let ((__tmp48584
                              (gx#datum->syntax '#f '~case-dispatch*))
                             (__tmp48580
                              (let ((__tmp48581
                                     (let ((__tmp48582
                                            (let ((__tmp48583
                                                   (lambda (_g1293812941_
                                                            _g1293912944_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1293812941_
                                                             _g1293912944_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp48583
                                                      '()
                                                      _L12902_))))
                                       (declare (not safe))
                                       (cons _L12700_ __tmp48582))))
                                (declare (not safe))
                                (cons _L12701_ __tmp48581))))
                         (declare (not safe))
                         (cons __tmp48584 __tmp48580)))
                      (__tmp48572
                       (let ((__tmp48573
                              (let ((__tmp48578
                                     (gx#datum->syntax '#f '~case-dispatch*))
                                    (__tmp48574
                                     (let ((__tmp48575
                                            (let ((__tmp48576
                                                   (let ((__tmp48577
                                                          (lambda (_g1293612947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1293712950_)
                    (let ()
                      (declare (not safe))
                      (cons _g1293612947_ _g1293712950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp48577
                                                             '()
                                                             _L12901_))))
                                              (declare (not safe))
                                              (cons _L12700_ __tmp48576))))
                                       (declare (not safe))
                                       (cons _L12899_ __tmp48575))))
                                (declare (not safe))
                                (cons __tmp48578 __tmp48574))))
                         (declare (not safe))
                         (cons __tmp48573 '()))))
                  (declare (not safe))
                  (cons __tmp48579 __tmp48572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48585
                                                         __tmp48571))))
                                            (declare (not safe))
                                            (cons __tmp48589 __tmp48570))))
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
                      (let ((_e1299113059_ (gx#syntax-e _g1298213056_)))
                        (let ((_hd1299013063_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1299113059_)))
                              (_tl1298913066_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1299113059_))))
                          (if (gx#stx-pair? _tl1298913066_)
                              (let ((_e1299413069_
                                     (gx#syntax-e _tl1298913066_)))
                                (let ((_hd1299313073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1299413069_)))
                                      (_tl1299213076_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1299413069_))))
                                  (if (gx#stx-pair/null? _hd1299313073_)
                                      (let ((_g48590_
                                             (gx#syntax-split-splice
                                              _hd1299313073_
                                              '0)))
                                        (begin
                                          (let ((_g48591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48590_)
                                                       (##vector-length
                                                        _g48590_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48591_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48591_)))
                                          (let ((_target1299513079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48590_ 0)))
                                                (_tl1299713082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48590_ 1))))
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
                                (let ((_e1301013109_
                                       (gx#syntax-e _lp-hd1300013103_)))
                                  (let ((_hd1300913113_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1301013109_)))
                                        (_tl1300813116_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1301013109_))))
                                    (if (gx#stx-pair? _tl1300813116_)
                                        (let ((_e1301313119_
                                               (gx#syntax-e _tl1300813116_)))
                                          (let ((_hd1301213123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1301313119_)))
                                                (_tl1301113126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1301313119_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1301113126_)
                                                (let ((_g48630_
                                                       (gx#syntax-split-splice
                                                        _tl1301113126_
                                                        '0)))
                                                  (begin
                                                    (let ((_g48631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g48630_)
                         (##vector-length _g48630_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g48631_ 2)))
                  (error "Context expects 2 values" _g48631_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1301413129_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48630_
                                                              0)))
                                                          (_tl1301613132_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48630_
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
                          (if (gx#stx-pair? _tl1299213076_)
                              (let ((_e1302513167_
                                     (gx#syntax-e _tl1299213076_)))
                                (let ((_hd1302413171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1302513167_)))
                                      (_tl1302313174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1302513167_))))
                                  (if (gx#stx-pair? _hd1302413171_)
                                      (let ((_e1302813177_
                                             (gx#syntax-e _hd1302413171_)))
                                        (let ((_hd1302713181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1302813177_)))
                                              (_tl1302613184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1302813177_))))
                                          (if (gx#stx-pair/null?
                                               _tl1302613184_)
                                              (let ((_g48592_
                                                     (gx#syntax-split-splice
                                                      _tl1302613184_
                                                      '0)))
                                                (begin
                                                  (let ((_g48593_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g48592_)
                                                               (##vector-length
                                                                _g48592_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g48593_ 2)))
                (error "Context expects 2 values" _g48593_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1302913187_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48592_
                                                            0)))
                                                        (_tl1303113190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48592_
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
                                  (if (gx#stx-pair/null? _tl1302313174_)
                                      (let ((_g48594_
                                             (gx#syntax-split-splice
                                              _tl1302313174_
                                              '0)))
                                        (begin
                                          (let ((_g48595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48594_)
                                                       (##vector-length
                                                        _g48594_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48595_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48595_)))
                                          (let ((_target1303813217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48594_ 0)))
                                                (_tl1304013220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48594_ 1))))
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
                                  (let ((__tmp48629
                                         (lambda (_g1328613289_ _g1328713292_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1328613289_
                                                   _g1328713292_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp48629 '() _L13253_)))
                                 (let ((__tmp48628 (gx#datum->syntax '#f 'let))
                                       (__tmp48596
                                        (let ((__tmp48627
                                               (gx#datum->syntax '#f '$loop))
                                              (__tmp48597
                                               (let ((__tmp48623
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _L13252_
                                                         _L13253_)
                                                        (let ((__tmp48624
                                                               (lambda (_g1330313307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1330413310_
                                _g1330513312_)
                         (let ((__tmp48625
                                (let ((__tmp48626
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1330313307_ '()))))
                                  (declare (not safe))
                                  (cons _g1330413310_ __tmp48626))))
                           (declare (not safe))
                           (cons __tmp48625 _g1330513312_)))))
                  (declare (not safe))
                  (foldr2 __tmp48624 '() _L13252_ _L13253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48598
                                                      (let ((__tmp48599
                                                             (let ((__tmp48622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'if))
                           (__tmp48600
                            (let ((__tmp48601
                                   (let ((__tmp48617
                                          (let ((__tmp48621
                                                 (gx#datum->syntax '#f 'begin))
                                                (__tmp48618
                                                 (let ((__tmp48619
                                                        (let ((__tmp48620
                                                               (lambda (_g1330113315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1330213318_)
                         (let ()
                           (declare (not safe))
                           (cons _g1330113315_ _g1330213318_)))))
                  (declare (not safe))
                  (foldr1 __tmp48620 '() _L13249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '#!void __tmp48619))))
                                            (declare (not safe))
                                            (cons __tmp48621 __tmp48618)))
                                         (__tmp48602
                                          (let ((__tmp48603
                                                 (let ((__tmp48616
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp48604
                                                        (let ((__tmp48615
                                                               (lambda (_g1329413321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1329513324_)
                         (let ()
                           (declare (not safe))
                           (cons _g1329413321_ _g1329513324_))))
                      (__tmp48605
                       (let ((__tmp48606
                              (let ((__tmp48614 (gx#datum->syntax '#f '$loop))
                                    (__tmp48607
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L13251_
                                        _L13253_)
                                       (let ((__tmp48608
                                              (lambda (_g1329613327_
                                                       _g1329713330_
                                                       _g1329813332_)
                                                (let ((__tmp48609
                                                       (let ((__tmp48613
                                                              (gx#datum->syntax
                                                               '#f
                                                               'begin))
                                                             (__tmp48610
                                                              (let ((__tmp48611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48612
                                    (lambda (_g1329913335_ _g1330013338_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1329913335_ _g1330013338_)))))
                               (declare (not safe))
                               (foldr1 __tmp48612 '() _g1329613327_))))
                        (declare (not safe))
                        (cons _g1329713330_ __tmp48611))))
                 (declare (not safe))
                 (cons __tmp48613 __tmp48610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48609
                                                        _g1329813332_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp48608
                                                 '()
                                                 _L13251_
                                                 _L13253_)))))
                                (declare (not safe))
                                (cons __tmp48614 __tmp48607))))
                         (declare (not safe))
                         (cons __tmp48606 '()))))
                  (declare (not safe))
                  (foldr1 __tmp48615 __tmp48605 _L13247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48616
                                                         __tmp48604))))
                                            (declare (not safe))
                                            (cons __tmp48603 '()))))
                                     (declare (not safe))
                                     (cons __tmp48617 __tmp48602))))
                              (declare (not safe))
                              (cons _L13250_ __tmp48601))))
                       (declare (not safe))
                       (cons __tmp48622 __tmp48600))))
                (declare (not safe))
                (cons __tmp48599 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48623
                                                       __tmp48598))))
                                          (declare (not safe))
                                          (cons __tmp48627 __tmp48597))))
                                   (declare (not safe))
                                   (cons __tmp48628 __tmp48596))
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
                      (let ((_e1336113383_ (gx#syntax-e _g1335413380_)))
                        (let ((_hd1336013387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1336113383_)))
                              (_tl1335913390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1336113383_))))
                          (if (gx#stx-pair? _tl1335913390_)
                              (let ((_e1336413393_
                                     (gx#syntax-e _tl1335913390_)))
                                (let ((_hd1336313397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1336413393_)))
                                      (_tl1336213400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1336413393_))))
                                  (if (gx#stx-pair? _tl1336213400_)
                                      (let ((_e1336713403_
                                             (gx#syntax-e _tl1336213400_)))
                                        (let ((_hd1336613407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1336713403_)))
                                              (_tl1336513410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1336713403_))))
                                          (if (gx#stx-pair? _hd1336613407_)
                                              (let ((_e1337013413_
                                                     (gx#syntax-e
                                                      _hd1336613407_)))
                                                (let ((_hd1336913417_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1337013413_)))
                                                      (_tl1336813420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1337013413_))))
                                                  ((lambda (_L13423_
                                                            _L13425_
                                                            _L13426_
                                                            _L13427_)
                                                     (let ((__tmp48638
                                                            (gx#datum->syntax
                                                             '#f
                                                             'do))
                                                           (__tmp48632
                                                            (let ((__tmp48633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48634
                                  (let ((__tmp48635
                                         (let ((__tmp48637
                                                (gx#datum->syntax '#f 'not))
                                               (__tmp48636
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13426_ '()))))
                                           (declare (not safe))
                                           (cons __tmp48637 __tmp48636))))
                                    (declare (not safe))
                                    (cons __tmp48635 _L13425_))))
                             (declare (not safe))
                             (cons __tmp48634 _L13423_))))
                      (declare (not safe))
                      (cons _L13427_ __tmp48633))))
               (declare (not safe))
               (cons __tmp48638 __tmp48632)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1336513410_
                                                   _tl1336813420_
                                                   _hd1336913417_
                                                   _hd1336313397_)))
                                              (_g1335313376_ _g1335413380_))))
                                      (_g1335313376_ _g1335413380_))))
                              (_g1335313376_ _g1335413380_))))
                      (_g1335313376_ _g1335413380_)))))
          (_g1335213447_ _$stx13349_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13451_)
        (let* ((___stx4323443235_ _$stx13451_)
               (_g1345613487_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4323443235_))))
          (let ((___kont4323743238_ (lambda (_L13599_) _L13599_))
                (___kont4323943240_
                 (lambda (_L13544_ _L13546_)
                   (let ((__tmp48653 (gx#datum->syntax '#f 'let))
                         (__tmp48639
                          (let ((__tmp48650
                                 (let ((__tmp48652 (gx#datum->syntax '#f '$r))
                                       (__tmp48651
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13546_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48652 __tmp48651)))
                                (__tmp48640
                                 (let ((__tmp48643
                                        (let ((__tmp48649
                                               (gx#datum->syntax
                                                '#f
                                                '%#expression))
                                              (__tmp48644
                                               (let ((__tmp48645
                                                      (let ((__tmp48648
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp48646
                                                             (let ((__tmp48647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1356313566_ _g1356413569_)
                              (let ()
                                (declare (not safe))
                                (cons _g1356313566_ _g1356413569_)))))
                       (declare (not safe))
                       (foldr1 __tmp48647 '() _L13544_))))
                (declare (not safe))
                (cons __tmp48648 __tmp48646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48645 '()))))
                                          (declare (not safe))
                                          (cons __tmp48649 __tmp48644)))
                                       (__tmp48641
                                        (let ((__tmp48642
                                               (gx#datum->syntax '#f '$r)))
                                          (declare (not safe))
                                          (cons __tmp48642 '()))))
                                   (declare (not safe))
                                   (cons __tmp48643 __tmp48641))))
                            (declare (not safe))
                            (cons __tmp48650 __tmp48640))))
                     (declare (not safe))
                     (cons __tmp48653 __tmp48639)))))
            (let ((___match4327743278_
                   (lambda (_e1346913494_
                            _hd1346813498_
                            _tl1346713501_
                            _e1347213504_
                            _hd1347113508_
                            _tl1347013511_
                            ___splice4324143242_
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
                                       (___kont4323943240_
                                        _rest1348113540_
                                        _hd1347113508_))))))
                       (_loop1347613520_ _target1347313514_ '())))))
              (if (gx#stx-pair? ___stx4323443235_)
                  (let ((_e1346113579_ (gx#syntax-e ___stx4323443235_)))
                    (let ((_tl1345913586_
                           (let () (declare (not safe)) (##cdr _e1346113579_)))
                          (_hd1346013583_
                           (let ()
                             (declare (not safe))
                             (##car _e1346113579_))))
                      (if (gx#stx-pair? _tl1345913586_)
                          (let ((_e1346413589_ (gx#syntax-e _tl1345913586_)))
                            (let ((_tl1346213596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1346413589_)))
                                  (_hd1346313593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1346413589_))))
                              (if (gx#stx-null? _tl1346213596_)
                                  (___kont4323743238_ _hd1346313593_)
                                  (if (gx#stx-pair/null? _tl1346213596_)
                                      (let ((___splice4324143242_
                                             (gx#syntax-split-splice
                                              _tl1346213596_
                                              '0)))
                                        (let ((_tl1347513517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4324143242_
                                                  '1)))
                                              (_target1347313514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4324143242_
                                                  '0))))
                                          (if (gx#stx-null? _tl1347513517_)
                                              (___match4327743278_
                                               _e1346113579_
                                               _hd1346013583_
                                               _tl1345913586_
                                               _e1346413589_
                                               _hd1346313593_
                                               _tl1346213596_
                                               ___splice4324143242_
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
        (let* ((___stx4328043281_ _$stx13617_)
               (_g1362313676_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4328043281_))))
          (let ((___kont4328343284_
                 (lambda (_L13878_ _L13880_)
                   (let ((__tmp48659 (gx#datum->syntax '#f 'letrec))
                         (__tmp48654
                          (let ((__tmp48656
                                 (let ((__tmp48657
                                        (let ((__tmp48658
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L13878_ '()))))
                                          (declare (not safe))
                                          (cons _L13880_ __tmp48658))))
                                   (declare (not safe))
                                   (cons __tmp48657 '())))
                                (__tmp48655
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13880_ '()))))
                            (declare (not safe))
                            (cons __tmp48656 __tmp48655))))
                     (declare (not safe))
                     (cons __tmp48659 __tmp48654))))
                (___kont4328543286_
                 (lambda (_L13822_ _L13824_)
                   (let ((__tmp48667 (gx#datum->syntax '#f 'letrec-values))
                         (__tmp48660
                          (let ((__tmp48664
                                 (let ((__tmp48665
                                        (let ((__tmp48666
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L13822_ '()))))
                                          (declare (not safe))
                                          (cons _L13824_ __tmp48666))))
                                   (declare (not safe))
                                   (cons __tmp48665 '())))
                                (__tmp48661
                                 (let ((__tmp48662
                                        (let ((__tmp48663
                                               (gx#datum->syntax '#f 'values)))
                                          (declare (not safe))
                                          (cons __tmp48663 _L13824_))))
                                   (declare (not safe))
                                   (cons __tmp48662 '()))))
                            (declare (not safe))
                            (cons __tmp48664 __tmp48661))))
                     (declare (not safe))
                     (cons __tmp48667 __tmp48660))))
                (___kont4328743288_
                 (lambda (_L13743_ _L13745_ _L13746_)
                   (let ((__tmp48678 (gx#datum->syntax '#f 'letrec))
                         (__tmp48668
                          (let ((__tmp48670
                                 (let ((__tmp48671
                                        (let ((__tmp48672
                                               (let ((__tmp48673
                                                      (let ((__tmp48677
                                                             (gx#datum->syntax
                                                              '#f
                                                              'lambda))
                                                            (__tmp48674
                                                             (let ((__tmp48675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48676
                                   (lambda (_g1376613769_ _g1376713772_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1376613769_ _g1376713772_)))))
                              (declare (not safe))
                              (foldr1 __tmp48676 '() _L13743_))))
                       (declare (not safe))
                       (cons _L13745_ __tmp48675))))
                (declare (not safe))
                (cons __tmp48677 __tmp48674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48673 '()))))
                                          (declare (not safe))
                                          (cons _L13746_ __tmp48672))))
                                   (declare (not safe))
                                   (cons __tmp48671 '())))
                                (__tmp48669
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13746_ '()))))
                            (declare (not safe))
                            (cons __tmp48670 __tmp48669))))
                     (declare (not safe))
                     (cons __tmp48678 __tmp48668)))))
            (let* ((___match4336743368_
                    (lambda (_e1365513683_
                             _hd1365413687_
                             _tl1365313690_
                             _e1365813693_
                             _hd1365713697_
                             _tl1365613700_
                             _e1366113703_
                             _hd1366013707_
                             _tl1365913710_
                             ___splice4328943290_
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
                                              (_L13745_ _tl1365913710_)
                                              (_L13746_ _hd1366013707_))
                                          (if (gx#identifier? _L13746_)
                                              (___kont4328743288_
                                               _L13743_
                                               _L13745_
                                               _L13746_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1362313676_)))))))))
                        (_loop1366513719_ _target1366213713_ '()))))
                   (___match4334143342_
                    (lambda (_e1364013782_
                             _hd1363913786_
                             _tl1363813789_
                             _e1364313792_
                             _hd1364213796_
                             _tl1364113799_
                             _e1364613802_
                             _hd1364513806_
                             _tl1364413809_
                             _e1364913812_
                             _hd1364813816_
                             _tl1364713819_)
                      (let ((_L13822_ _hd1364813816_)
                            (_L13824_ _tl1364413809_))
                        (if (gx#identifier-list? _L13824_)
                            (___kont4328543286_ _L13822_ _L13824_)
                            (if (gx#stx-pair/null? _tl1364113799_)
                                (let ((___splice4328943290_
                                       (gx#syntax-split-splice
                                        _tl1364113799_
                                        '0)))
                                  (let ((_tl1366413716_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4328943290_
                                            '1)))
                                        (_target1366213713_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4328943290_
                                            '0))))
                                    (if (gx#stx-null? _tl1366413716_)
                                        (___match4336743368_
                                         _e1364013782_
                                         _hd1363913786_
                                         _tl1363813789_
                                         _e1364313792_
                                         _hd1364213796_
                                         _tl1364113799_
                                         _e1364613802_
                                         _hd1364513806_
                                         _tl1364413809_
                                         ___splice4328943290_
                                         _target1366213713_
                                         _tl1366413716_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1362313676_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1362313676_)))))))
                   (___match4331143312_
                    (lambda (_e1362913848_
                             _hd1362813852_
                             _tl1362713855_
                             _e1363213858_
                             _hd1363113862_
                             _tl1363013865_
                             _e1363513868_
                             _hd1363413872_
                             _tl1363313875_)
                      (let ((_L13878_ _hd1363413872_)
                            (_L13880_ _hd1363113862_))
                        (if (gx#identifier? _L13880_)
                            (___kont4328343284_ _L13878_ _L13880_)
                            (if (gx#stx-pair? _hd1363113862_)
                                (let ((_e1364613802_
                                       (gx#syntax-e _hd1363113862_)))
                                  (let ((_tl1364413809_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1364613802_)))
                                        (_hd1364513806_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1364613802_))))
                                    (if (gx#identifier? _hd1364513806_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g48679_|
                                             _hd1364513806_)
                                            (___match4334143342_
                                             _e1362913848_
                                             _hd1362813852_
                                             _tl1362713855_
                                             _e1363213858_
                                             _hd1363113862_
                                             _tl1363013865_
                                             _e1364613802_
                                             _hd1364513806_
                                             _tl1364413809_
                                             _e1363513868_
                                             _hd1363413872_
                                             _tl1363313875_)
                                            (if (gx#stx-pair/null?
                                                 _tl1363013865_)
                                                (let ((___splice4328943290_
                                                       (gx#syntax-split-splice
                                                        _tl1363013865_
                                                        '0)))
                                                  (let ((_tl1366413716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4328943290_
                                                            '1)))
                                                        (_target1366213713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4328943290_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1366413716_)
                                                        (___match4336743368_
                                                         _e1362913848_
                                                         _hd1362813852_
                                                         _tl1362713855_
                                                         _e1363213858_
                                                         _hd1363113862_
                                                         _tl1363013865_
                                                         _e1364613802_
                                                         _hd1364513806_
                                                         _tl1364413809_
                                                         ___splice4328943290_
                                                         _target1366213713_
                                                         _tl1366413716_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1362313676_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1362313676_))))
                                        (if (gx#stx-pair/null? _tl1363013865_)
                                            (let ((___splice4328943290_
                                                   (gx#syntax-split-splice
                                                    _tl1363013865_
                                                    '0)))
                                              (let ((_tl1366413716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4328943290_
                                                        '1)))
                                                    (_target1366213713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4328943290_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1366413716_)
                                                    (___match4336743368_
                                                     _e1362913848_
                                                     _hd1362813852_
                                                     _tl1362713855_
                                                     _e1363213858_
                                                     _hd1363113862_
                                                     _tl1363013865_
                                                     _e1364613802_
                                                     _hd1364513806_
                                                     _tl1364413809_
                                                     ___splice4328943290_
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
              (if (gx#stx-pair? ___stx4328043281_)
                  (let ((_e1362913848_ (gx#syntax-e ___stx4328043281_)))
                    (let ((_tl1362713855_
                           (let () (declare (not safe)) (##cdr _e1362913848_)))
                          (_hd1362813852_
                           (let ()
                             (declare (not safe))
                             (##car _e1362913848_))))
                      (if (gx#stx-pair? _tl1362713855_)
                          (let ((_e1363213858_ (gx#syntax-e _tl1362713855_)))
                            (let ((_tl1363013865_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1363213858_)))
                                  (_hd1363113862_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1363213858_))))
                              (if (gx#stx-pair? _tl1363013865_)
                                  (let ((_e1363513868_
                                         (gx#syntax-e _tl1363013865_)))
                                    (let ((_tl1363313875_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1363513868_)))
                                          (_hd1363413872_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1363513868_))))
                                      (if (gx#stx-null? _tl1363313875_)
                                          (___match4331143312_
                                           _e1362913848_
                                           _hd1362813852_
                                           _tl1362713855_
                                           _e1363213858_
                                           _hd1363113862_
                                           _tl1363013865_
                                           _e1363513868_
                                           _hd1363413872_
                                           _tl1363313875_)
                                          (if (gx#stx-pair? _hd1363113862_)
                                              (let ((_e1364613802_
                                                     (gx#syntax-e
                                                      _hd1363113862_)))
                                                (let ((_tl1364413809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1364613802_)))
                                                      (_hd1364513806_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1364613802_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1363013865_)
                                                      (let ((___splice4328943290_
                                                             (gx#syntax-split-splice
                                                              _tl1363013865_
                                                              '0)))
                                                        (let ((_tl1366413716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4328943290_ '1)))
                      (_target1366213713_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4328943290_ '0))))
                  (if (gx#stx-null? _tl1366413716_)
                      (___match4336743368_
                       _e1362913848_
                       _hd1362813852_
                       _tl1362713855_
                       _e1363213858_
                       _hd1363113862_
                       _tl1363013865_
                       _e1364613802_
                       _hd1364513806_
                       _tl1364413809_
                       ___splice4328943290_
                       _target1366213713_
                       _tl1366413716_)
                      (let () (declare (not safe)) (_g1362313676_)))))
              (let () (declare (not safe)) (_g1362313676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1362313676_))))))
                                  (if (gx#stx-pair? _hd1363113862_)
                                      (let ((_e1364613802_
                                             (gx#syntax-e _hd1363113862_)))
                                        (let ((_tl1364413809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1364613802_)))
                                              (_hd1364513806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1364613802_))))
                                          (if (gx#stx-pair/null?
                                               _tl1363013865_)
                                              (let ((___splice4328943290_
                                                     (gx#syntax-split-splice
                                                      _tl1363013865_
                                                      '0)))
                                                (let ((_tl1366413716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4328943290_
                                                          '1)))
                                                      (_target1366213713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4328943290_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1366413716_)
                                                      (___match4336743368_
                                                       _e1362913848_
                                                       _hd1362813852_
                                                       _tl1362713855_
                                                       _e1363213858_
                                                       _hd1363113862_
                                                       _tl1363013865_
                                                       _e1364613802_
                                                       _hd1364513806_
                                                       _tl1364413809_
                                                       ___splice4328943290_
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
                    (let* ((___stx4337043371_ _x14826_)
                           (_g1483114850_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4337043371_))))
                      (let ((___kont4337343374_
                             (lambda (_L14918_ _L14920_)
                               (_let-head?13906_ _L14920_)))
                            (___kont4337543376_ (lambda (_L14878_) '#t))
                            (___kont4337743378_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx4337043371_)
                            (let ((_e1483714898_
                                   (gx#syntax-e ___stx4337043371_)))
                              (let ((_tl1483514905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1483714898_)))
                                    (_hd1483614902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1483714898_))))
                                (if (gx#stx-pair? _tl1483514905_)
                                    (let ((_e1484014908_
                                           (gx#syntax-e _tl1483514905_)))
                                      (let ((_tl1483814915_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1484014908_)))
                                            (_hd1483914912_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1484014908_))))
                                        (if (gx#stx-null? _tl1483814915_)
                                            (___kont4337343374_
                                             _hd1483914912_
                                             _hd1483614902_)
                                            (___kont4337743378_))))
                                    (if (gx#stx-null? _tl1483514905_)
                                        (___kont4337543376_ _hd1483614902_)
                                        (___kont4337743378_)))))
                            (___kont4337743378_))))))
                 (_let-bind13905_
                  (lambda (_x14728_)
                    (let* ((___stx4340443405_ _x14728_)
                           (_g1473214751_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4340443405_))))
                      (let ((___kont4340743408_
                             (lambda (_L14807_ _L14809_) _x14728_))
                            (___kont4340943410_
                             (lambda (_L14768_)
                               (let ((__tmp48681 (gx#datum->syntax '#f '_))
                                     (__tmp48680
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14768_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48681 __tmp48680)))))
                        (if (gx#stx-pair? ___stx4340443405_)
                            (let ((_e1473814787_
                                   (gx#syntax-e ___stx4340443405_)))
                              (let ((_tl1473614794_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1473814787_)))
                                    (_hd1473714791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1473814787_))))
                                (if (gx#stx-pair? _tl1473614794_)
                                    (let ((_e1474114797_
                                           (gx#syntax-e _tl1473614794_)))
                                      (let ((_tl1473914804_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1474114797_)))
                                            (_hd1474014801_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1474114797_))))
                                        (if (gx#stx-null? _tl1473914804_)
                                            (___kont4340743408_
                                             _hd1474014801_
                                             _hd1473714791_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1473214751_)))))
                                    (if (gx#stx-null? _tl1473614794_)
                                        (___kont4340943410_ _hd1473714791_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1473214751_))))))
                            (let () (declare (not safe)) (_g1473214751_)))))))
                 (_let-head?13906_
                  (lambda (_x14668_)
                    (let* ((___stx4343643437_ _x14668_)
                           (_g1467214683_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4343643437_))))
                      (let ((___kont4343943440_
                             (lambda (_L14711_)
                               (gx#stx-andmap gx#identifier? _L14711_)))
                            (___kont4344143442_
                             (lambda () (gx#identifier? _x14668_))))
                        (if (gx#stx-pair? ___stx4343643437_)
                            (let ((_e1467714701_
                                   (gx#syntax-e ___stx4343643437_)))
                              (let ((_tl1467514708_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1467714701_)))
                                    (_hd1467614705_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1467714701_))))
                                (if (gx#identifier? _hd1467614705_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g48682_|
                                         _hd1467614705_)
                                        (___kont4343943440_ _tl1467514708_)
                                        (___kont4344143442_))
                                    (___kont4344143442_))))
                            (___kont4344143442_))))))
                 (_let-head13907_
                  (lambda (_x14608_)
                    (let* ((___stx4345643457_ _x14608_)
                           (_g1461214623_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4345643457_))))
                      (let ((___kont4345943460_ (lambda (_L14651_) _L14651_))
                            (___kont4346143462_ (lambda () (list _x14608_))))
                        (if (gx#stx-pair? ___stx4345643457_)
                            (let ((_e1461714641_
                                   (gx#syntax-e ___stx4345643457_)))
                              (let ((_tl1461514648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1461714641_)))
                                    (_hd1461614645_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1461714641_))))
                                (if (gx#identifier? _hd1461614645_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g48683_|
                                         _hd1461614645_)
                                        (___kont4345943460_ _tl1461514648_)
                                        (___kont4346143462_))
                                    (___kont4346143462_))))
                            (___kont4346143462_)))))))
          (let* ((___stx4347643477_ _stx13900_)
                 (_g1391113983_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4347643477_))))
            (let ((___kont4347943480_
                   (lambda (_L14581_ _L14583_ _L14584_ _L14585_)
                     (let ((__tmp48684
                            (let ((__tmp48685
                                   (let ((__tmp48686
                                          (let ((__tmp48687
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L14583_ '()))))
                                            (declare (not safe))
                                            (cons _L14584_ __tmp48687))))
                                     (declare (not safe))
                                     (cons __tmp48686 '()))))
                              (declare (not safe))
                              (cons __tmp48685 _L14581_))))
                       (declare (not safe))
                       (cons _L14585_ __tmp48684))))
                  (___kont4348143482_
                   (lambda (_L14503_ _L14505_)
                     (let ((__tmp48695 (gx#datum->syntax '#f 'and))
                           (__tmp48688
                            (let ((__tmp48689
                                   (let ((__tmp48690
                                          (let ((__tmp48694
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp48691
                                                 (let ((__tmp48692
                                                        (let ((__tmp48693
                                                               (lambda (_g1452514528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1452614531_)
                         (let ()
                           (declare (not safe))
                           (cons _g1452514528_ _g1452614531_)))))
                  (declare (not safe))
                  (foldr1 __tmp48693 '() _L14503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp48692))))
                                            (declare (not safe))
                                            (cons __tmp48694 __tmp48691))))
                                     (declare (not safe))
                                     (cons __tmp48690 '()))))
                              (declare (not safe))
                              (cons _L14505_ __tmp48689))))
                       (declare (not safe))
                       (cons __tmp48695 __tmp48688))))
                  (___kont4348543486_
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
                                   (let ((_g48696_
                                          (gx#syntax-split-splice
                                           _g1410414133_
                                           '0)))
                                     (begin
                                       (let ((_g48697_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g48696_)
                                                    (##vector-length _g48696_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g48697_ 2)))
                                             (error "Context expects 2 values"
                                                    _g48697_)))
                                       (let ((_target1410714136_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48696_ 0)))
                                             (_tl1410914139_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48696_ 1))))
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
                             (let ((_e1412014164_
                                    (gx#syntax-e _lp-hd1411214158_)))
                               (let ((_hd1411914168_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1412014164_)))
                                     (_tl1411814171_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1412014164_))))
                                 (if (gx#stx-pair? _tl1411814171_)
                                     (let ((_e1412314174_
                                            (gx#syntax-e _tl1411814171_)))
                                       (let ((_hd1412214178_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1412314174_)))
                                             (_tl1412114181_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1412314174_))))
                                         (if (gx#stx-null? _tl1412114181_)
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
                                          (let ((_g48698_
                                                 (gx#syntax-split-splice
                                                  _g1420914229_
                                                  '0)))
                                            (begin
                                              (let ((_g48699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g48698_)
                                                           (##vector-length
                                                            _g48698_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g48699_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g48699_)))
                                              (let ((_target1421114232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48698_
                                                        0)))
                                                    (_tl1421314235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g48698_
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
                                                 (let ((_g48700_
                                                        (gx#syntax-split-splice
                                                         _g1428014300_
                                                         '0)))
                                                   (begin
                                                     (let ((_g48701_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g48700_)
                          (##vector-length _g48700_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g48701_ 2)))
                   (error "Context expects 2 values" _g48701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1428214303_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48700_
                                                               0)))
                                                           (_tl1428414306_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48700_
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
                                            (let ((__tmp48723
                                                   (gx#datum->syntax
                                                    '#f
                                                    'let-values))
                                                  (__tmp48702
                                                   (let ((__tmp48718
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _L14190_
                                                             _L14262_)
                                                            (let ((__tmp48719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1435814362_ _g1435914365_ _g1436014367_)
                             (let ((__tmp48720
                                    (let ((__tmp48722
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1435914365_ '())))
                                          (__tmp48721
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1435814362_ '()))))
                                      (declare (not safe))
                                      (cons __tmp48722 __tmp48721))))
                               (declare (not safe))
                               (cons __tmp48720 _g1436014367_)))))
                      (declare (not safe))
                      (foldr2 __tmp48719 '() _L14190_ _L14262_))))
                 (__tmp48703
                  (let ((__tmp48704
                         (let ((__tmp48717 (gx#datum->syntax '#f 'and))
                               (__tmp48705
                                (let ((__tmp48716
                                       (lambda (_g1435114370_ _g1435214373_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1435114370_
                                                 _g1435214373_))))
                                      (__tmp48706
                                       (let ((__tmp48707
                                              (let ((__tmp48715
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let-values))
                                                    (__tmp48708
                                                     (let ((__tmp48711
                                                            (begin
                                                              (gx#syntax-check-splice-targets
                                                               _L14262_
                                                               _L14333_)
                                                              (let ((__tmp48712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1435514376_
                                      _g1435614379_
                                      _g1435714381_)
                               (let ((__tmp48713
                                      (let ((__tmp48714
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1435514376_ '()))))
                                        (declare (not safe))
                                        (cons _g1435614379_ __tmp48714))))
                                 (declare (not safe))
                                 (cons __tmp48713 _g1435714381_)))))
                        (declare (not safe))
                        (foldr2 __tmp48712 '() _L14262_ _L14333_))))
                   (__tmp48709
                    (let ((__tmp48710
                           (lambda (_g1435314384_ _g1435414387_)
                             (let ()
                               (declare (not safe))
                               (cons _g1435314384_ _g1435414387_)))))
                      (declare (not safe))
                      (foldr1 __tmp48710 '() _L14070_))))
               (declare (not safe))
               (cons __tmp48711 __tmp48709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48715 __tmp48708))))
                                         (declare (not safe))
                                         (cons __tmp48707 '()))))
                                  (declare (not safe))
                                  (foldr1 __tmp48716 __tmp48706 _L14262_))))
                           (declare (not safe))
                           (cons __tmp48717 __tmp48705))))
                    (declare (not safe))
                    (cons __tmp48704 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48718
                                                           __tmp48703))))
                                              (declare (not safe))
                                              (cons __tmp48723 __tmp48702)))))
                                      _hd-bind1429014329_))))))
                     (_loop1428514309_ _target1428214303_ '()))
                   (_g1427914296_ _g1428014300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1427914296_
                                                  _g1428014300_)))))
                                     (_g1427814390_
                                      (gx#stx-map
                                       _let-head13907_
                                       (let ((__tmp48724
                                              (lambda (_g1439314396_
                                                       _g1439414399_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1439314396_
                                                        _g1439414399_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48724 '() _L14192_)))))))
                               _$e1421914258_))))))
              (_loop1421414238_ _target1421114232_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1420814225_
                                                     _g1420914229_)))))
                                          (_g1420814225_ _g1420914229_)))))
                              (_g1420714402_
                               (gx#gentemps
                                (let ((__tmp48725
                                       (lambda (_g1440514408_ _g1440614411_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1440514408_
                                                 _g1440614411_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp48725 '() _L14192_)))))))
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
                         (let ((__tmp48726
                                (lambda (_g1441714420_ _g1441814423_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1441714420_ _g1441814423_)))))
                           (declare (not safe))
                           (foldr1 __tmp48726 '() _L14072_))))))))
              (let* ((___match4357343574_
                      (lambda (_e1395613990_
                               _hd1395513994_
                               _tl1395413997_
                               _e1395914000_
                               _hd1395814004_
                               _tl1395714007_
                               ___splice4348743488_
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
                                               _tl1395714007_)
                                              (let ((___splice4348943490_
                                                     (gx#syntax-split-splice
                                                      _tl1395714007_
                                                      '0)))
                                                (let ((_tl1397114043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4348943490_
                                                          '1)))
                                                      (_target1396914040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4348943490_
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
                                       (let ((__tmp48727
                                              (lambda (_g1409414097_
                                                       _g1409514100_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1409414097_
                                                        _g1409514100_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48727 '() _L14072_)))
                                      (___kont4348543486_ _L14070_ _L14072_)
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
                     (___match4355343554_
                      (lambda (_e1393314433_
                               _hd1393214437_
                               _tl1393114440_
                               _e1393614443_
                               _hd1393514447_
                               _tl1393414450_
                               _e1393914453_
                               _hd1393814457_
                               _tl1393714460_
                               _e1394214463_
                               _hd1394114467_
                               _tl1394014470_
                               ___splice4348343484_
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
                                          (___kont4348143482_
                                           _body1395114499_
                                           _hd1394114467_))))))
                          (_loop1394614479_ _target1394314473_ '()))))
                     (___match4351743518_
                      (lambda (_e1391914541_
                               _hd1391814545_
                               _tl1391714548_
                               _e1392214551_
                               _hd1392114555_
                               _tl1392014558_
                               _e1392514561_
                               _hd1392414565_
                               _tl1392314568_
                               _e1392814571_
                               _hd1392714575_
                               _tl1392614578_)
                        (let ((_L14581_ _tl1392014558_)
                              (_L14583_ _hd1392714575_)
                              (_L14584_ _hd1392414565_)
                              (_L14585_ _hd1391814545_))
                          (if (_let-head?13906_ _L14584_)
                              (___kont4347943480_
                               _L14581_
                               _L14583_
                               _L14584_
                               _L14585_)
                              (if (gx#stx-pair? _hd1392414565_)
                                  (let ((_e1394214463_
                                         (gx#syntax-e _hd1392414565_)))
                                    (let ((_tl1394014470_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1394214463_)))
                                          (_hd1394114467_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1394214463_))))
                                      (if (gx#stx-pair/null? _hd1392114555_)
                                          (let ((___splice4348743488_
                                                 (gx#syntax-split-splice
                                                  _hd1392114555_
                                                  '0)))
                                            (let ((_tl1396214013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4348743488_
                                                      '1)))
                                                  (_target1396014010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4348743488_
                                                      '0))))
                                              (if (gx#stx-null? _tl1396214013_)
                                                  (___match4357343574_
                                                   _e1391914541_
                                                   _hd1391814545_
                                                   _tl1391714548_
                                                   _e1392214551_
                                                   _hd1392114555_
                                                   _tl1392014558_
                                                   ___splice4348743488_
                                                   _target1396014010_
                                                   _tl1396214013_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1391113983_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1391113983_)))))
                                  (if (gx#stx-pair/null? _hd1392114555_)
                                      (let ((___splice4348743488_
                                             (gx#syntax-split-splice
                                              _hd1392114555_
                                              '0)))
                                        (let ((_tl1396214013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4348743488_
                                                  '1)))
                                              (_target1396014010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4348743488_
                                                  '0))))
                                          (if (gx#stx-null? _tl1396214013_)
                                              (___match4357343574_
                                               _e1391914541_
                                               _hd1391814545_
                                               _tl1391714548_
                                               _e1392214551_
                                               _hd1392114555_
                                               _tl1392014558_
                                               ___splice4348743488_
                                               _target1396014010_
                                               _tl1396214013_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1391113983_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1391113983_)))))))))
                (if (gx#stx-pair? ___stx4347643477_)
                    (let ((_e1391914541_ (gx#syntax-e ___stx4347643477_)))
                      (let ((_tl1391714548_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1391914541_)))
                            (_hd1391814545_
                             (let ()
                               (declare (not safe))
                               (##car _e1391914541_))))
                        (if (gx#stx-pair? _tl1391714548_)
                            (let ((_e1392214551_ (gx#syntax-e _tl1391714548_)))
                              (let ((_tl1392014558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1392214551_)))
                                    (_hd1392114555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1392214551_))))
                                (if (gx#stx-pair? _hd1392114555_)
                                    (let ((_e1392514561_
                                           (gx#syntax-e _hd1392114555_)))
                                      (let ((_tl1392314568_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1392514561_)))
                                            (_hd1392414565_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1392514561_))))
                                        (if (gx#stx-pair? _tl1392314568_)
                                            (let ((_e1392814571_
                                                   (gx#syntax-e
                                                    _tl1392314568_)))
                                              (let ((_tl1392614578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1392814571_)))
                                                    (_hd1392714575_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1392814571_))))
                                                (if (gx#stx-null?
                                                     _tl1392614578_)
                                                    (___match4351743518_
                                                     _e1391914541_
                                                     _hd1391814545_
                                                     _tl1391714548_
                                                     _e1392214551_
                                                     _hd1392114555_
                                                     _tl1392014558_
                                                     _e1392514561_
                                                     _hd1392414565_
                                                     _tl1392314568_
                                                     _e1392814571_
                                                     _hd1392714575_
                                                     _tl1392614578_)
                                                    (if (gx#stx-pair?
                                                         _hd1392414565_)
                                                        (let ((_e1394214463_
                                                               (gx#syntax-e
                                                                _hd1392414565_)))
                                                          (let ((_tl1394014470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1394214463_)))
                        (_hd1394114467_
                         (let () (declare (not safe)) (##car _e1394214463_))))
                    (if (gx#stx-pair/null? _hd1392114555_)
                        (let ((___splice4348743488_
                               (gx#syntax-split-splice _hd1392114555_ '0)))
                          (let ((_tl1396214013_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4348743488_ '1)))
                                (_target1396014010_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4348743488_ '0))))
                            (if (gx#stx-null? _tl1396214013_)
                                (___match4357343574_
                                 _e1391914541_
                                 _hd1391814545_
                                 _tl1391714548_
                                 _e1392214551_
                                 _hd1392114555_
                                 _tl1392014558_
                                 ___splice4348743488_
                                 _target1396014010_
                                 _tl1396214013_)
                                (let ()
                                  (declare (not safe))
                                  (_g1391113983_)))))
                        (let () (declare (not safe)) (_g1391113983_)))))
                (if (gx#stx-pair/null? _hd1392114555_)
                    (let ((___splice4348743488_
                           (gx#syntax-split-splice _hd1392114555_ '0)))
                      (let ((_tl1396214013_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4348743488_ '1)))
                            (_target1396014010_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4348743488_ '0))))
                        (if (gx#stx-null? _tl1396214013_)
                            (___match4357343574_
                             _e1391914541_
                             _hd1391814545_
                             _tl1391714548_
                             _e1392214551_
                             _hd1392114555_
                             _tl1392014558_
                             ___splice4348743488_
                             _target1396014010_
                             _tl1396214013_)
                            (let () (declare (not safe)) (_g1391113983_)))))
                    (let () (declare (not safe)) (_g1391113983_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1392414565_)
                                                (let ((_e1394214463_
                                                       (gx#syntax-e
                                                        _hd1392414565_)))
                                                  (let ((_tl1394014470_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1394214463_)))
                                                        (_hd1394114467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1394214463_))))
                                                    (if (gx#stx-null?
                                                         _tl1394014470_)
                                                        (if (gx#stx-null?
                                                             _tl1392314568_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1392014558_)
                        (let ((___splice4348343484_
                               (gx#syntax-split-splice _tl1392014558_ '0)))
                          (let ((_tl1394514476_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4348343484_ '1)))
                                (_target1394314473_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4348343484_ '0))))
                            (if (gx#stx-null? _tl1394514476_)
                                (___match4355343554_
                                 _e1391914541_
                                 _hd1391814545_
                                 _tl1391714548_
                                 _e1392214551_
                                 _hd1392114555_
                                 _tl1392014558_
                                 _e1392514561_
                                 _hd1392414565_
                                 _tl1392314568_
                                 _e1394214463_
                                 _hd1394114467_
                                 _tl1394014470_
                                 ___splice4348343484_
                                 _target1394314473_
                                 _tl1394514476_)
                                (if (gx#stx-pair/null? _hd1392114555_)
                                    (let ((___splice4348743488_
                                           (gx#syntax-split-splice
                                            _hd1392114555_
                                            '0)))
                                      (let ((_tl1396214013_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4348743488_
                                                '1)))
                                            (_target1396014010_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4348743488_
                                                '0))))
                                        (if (gx#stx-null? _tl1396214013_)
                                            (___match4357343574_
                                             _e1391914541_
                                             _hd1391814545_
                                             _tl1391714548_
                                             _e1392214551_
                                             _hd1392114555_
                                             _tl1392014558_
                                             ___splice4348743488_
                                             _target1396014010_
                                             _tl1396214013_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1391113983_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1391113983_))))))
                        (if (gx#stx-pair/null? _hd1392114555_)
                            (let ((___splice4348743488_
                                   (gx#syntax-split-splice _hd1392114555_ '0)))
                              (let ((_tl1396214013_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4348743488_ '1)))
                                    (_target1396014010_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4348743488_
                                        '0))))
                                (if (gx#stx-null? _tl1396214013_)
                                    (___match4357343574_
                                     _e1391914541_
                                     _hd1391814545_
                                     _tl1391714548_
                                     _e1392214551_
                                     _hd1392114555_
                                     _tl1392014558_
                                     ___splice4348743488_
                                     _target1396014010_
                                     _tl1396214013_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1391113983_)))))
                            (let () (declare (not safe)) (_g1391113983_))))
                    (if (gx#stx-pair/null? _hd1392114555_)
                        (let ((___splice4348743488_
                               (gx#syntax-split-splice _hd1392114555_ '0)))
                          (let ((_tl1396214013_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4348743488_ '1)))
                                (_target1396014010_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4348743488_ '0))))
                            (if (gx#stx-null? _tl1396214013_)
                                (___match4357343574_
                                 _e1391914541_
                                 _hd1391814545_
                                 _tl1391714548_
                                 _e1392214551_
                                 _hd1392114555_
                                 _tl1392014558_
                                 ___splice4348743488_
                                 _target1396014010_
                                 _tl1396214013_)
                                (let ()
                                  (declare (not safe))
                                  (_g1391113983_)))))
                        (let () (declare (not safe)) (_g1391113983_))))
                (if (gx#stx-pair/null? _hd1392114555_)
                    (let ((___splice4348743488_
                           (gx#syntax-split-splice _hd1392114555_ '0)))
                      (let ((_tl1396214013_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4348743488_ '1)))
                            (_target1396014010_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4348743488_ '0))))
                        (if (gx#stx-null? _tl1396214013_)
                            (___match4357343574_
                             _e1391914541_
                             _hd1391814545_
                             _tl1391714548_
                             _e1392214551_
                             _hd1392114555_
                             _tl1392014558_
                             ___splice4348743488_
                             _target1396014010_
                             _tl1396214013_)
                            (let () (declare (not safe)) (_g1391113983_)))))
                    (let () (declare (not safe)) (_g1391113983_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1392114555_)
                                                    (let ((___splice4348743488_
                                                           (gx#syntax-split-splice
                                                            _hd1392114555_
                                                            '0)))
                                                      (let ((_tl1396214013_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4348743488_ '1)))
                    (_target1396014010_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4348743488_ '0))))
                (if (gx#stx-null? _tl1396214013_)
                    (___match4357343574_
                     _e1391914541_
                     _hd1391814545_
                     _tl1391714548_
                     _e1392214551_
                     _hd1392114555_
                     _tl1392014558_
                     ___splice4348743488_
                     _target1396014010_
                     _tl1396214013_)
                    (let () (declare (not safe)) (_g1391113983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1391113983_)))))))
                                    (if (gx#stx-pair/null? _hd1392114555_)
                                        (let ((___splice4348743488_
                                               (gx#syntax-split-splice
                                                _hd1392114555_
                                                '0)))
                                          (let ((_tl1396214013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4348743488_
                                                    '1)))
                                                (_target1396014010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4348743488_
                                                    '0))))
                                            (if (gx#stx-null? _tl1396214013_)
                                                (___match4357343574_
                                                 _e1391914541_
                                                 _hd1391814545_
                                                 _tl1391714548_
                                                 _e1392214551_
                                                 _hd1392114555_
                                                 _tl1392014558_
                                                 ___splice4348743488_
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
        (let* ((___stx4357643577_ _$stx14943_)
               (_g1494915000_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4357643577_))))
          (let ((___kont4357943580_ (lambda () '#t))
                (___kont4358143582_
                 (lambda (_L15158_)
                   (let ((__tmp48731 (gx#datum->syntax '#f 'let))
                         (__tmp48728
                          (let ((__tmp48729
                                 (let ((__tmp48730
                                        (lambda (_g1517415177_ _g1517515180_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1517415177_
                                                  _g1517515180_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp48730 '() _L15158_))))
                            (declare (not safe))
                            (cons '() __tmp48729))))
                     (declare (not safe))
                     (cons __tmp48731 __tmp48728))))
                (___kont4358543586_
                 (lambda (_L15067_ _L15069_ _L15070_ _L15071_)
                   (let ((__tmp48739 (gx#datum->syntax '#f 'alet))
                         (__tmp48732
                          (let ((__tmp48738
                                 (let ()
                                   (declare (not safe))
                                   (cons _L15070_ '())))
                                (__tmp48733
                                 (let ((__tmp48734
                                        (let ((__tmp48735
                                               (let ((__tmp48736
                                                      (let ((__tmp48737
                                                             (lambda (_g1509215095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1509315098_)
                       (let ()
                         (declare (not safe))
                         (cons _g1509215095_ _g1509315098_)))))
                (declare (not safe))
                (foldr1 __tmp48737 '() _L15067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L15069_ __tmp48736))))
                                          (declare (not safe))
                                          (cons _L15071_ __tmp48735))))
                                   (declare (not safe))
                                   (cons __tmp48734 '()))))
                            (declare (not safe))
                            (cons __tmp48738 __tmp48733))))
                     (declare (not safe))
                     (cons __tmp48739 __tmp48732)))))
            (let* ((___match4365343654_
                    (lambda (_e1497915007_
                             _hd1497815011_
                             _tl1497715014_
                             _e1498215017_
                             _hd1498115021_
                             _tl1498015024_
                             _e1498515027_
                             _hd1498415031_
                             _tl1498315034_
                             ___splice4358743588_
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
                                        (___kont4358543586_
                                         _body1499415063_
                                         _tl1498315034_
                                         _hd1498415031_
                                         _hd1497815011_))))))
                        (_loop1498915043_ _target1498615037_ '()))))
                   (___match4362743628_
                    (lambda (_e1496015108_
                             _hd1495915112_
                             _tl1495815115_
                             _e1496315118_
                             _hd1496215122_
                             _tl1496115125_
                             ___splice4358343584_
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
                                        (___kont4358143582_
                                         _body1497215154_))))))
                        (_loop1496715134_ _target1496415128_ '())))))
              (if (gx#stx-pair? ___stx4357643577_)
                  (let ((_e1495315190_ (gx#syntax-e ___stx4357643577_)))
                    (let ((_tl1495115197_
                           (let () (declare (not safe)) (##cdr _e1495315190_)))
                          (_hd1495215194_
                           (let ()
                             (declare (not safe))
                             (##car _e1495315190_))))
                      (if (gx#stx-pair? _tl1495115197_)
                          (let ((_e1495615200_ (gx#syntax-e _tl1495115197_)))
                            (let ((_tl1495415207_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1495615200_)))
                                  (_hd1495515204_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1495615200_))))
                              (if (gx#stx-null? _hd1495515204_)
                                  (if (gx#stx-null? _tl1495415207_)
                                      (___kont4357943580_)
                                      (if (gx#stx-pair/null? _tl1495415207_)
                                          (let ((___splice4358343584_
                                                 (gx#syntax-split-splice
                                                  _tl1495415207_
                                                  '0)))
                                            (let ((_tl1496615131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4358343584_
                                                      '1)))
                                                  (_target1496415128_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4358343584_
                                                      '0))))
                                              (if (gx#stx-null? _tl1496615131_)
                                                  (___match4362743628_
                                                   _e1495315190_
                                                   _hd1495215194_
                                                   _tl1495115197_
                                                   _e1495615200_
                                                   _hd1495515204_
                                                   _tl1495415207_
                                                   ___splice4358343584_
                                                   _target1496415128_
                                                   _tl1496615131_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1494915000_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1494915000_))))
                                  (if (gx#stx-pair? _hd1495515204_)
                                      (let ((_e1498515027_
                                             (gx#syntax-e _hd1495515204_)))
                                        (let ((_tl1498315034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1498515027_)))
                                              (_hd1498415031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1498515027_))))
                                          (if (gx#stx-pair/null?
                                               _tl1495415207_)
                                              (let ((___splice4358743588_
                                                     (gx#syntax-split-splice
                                                      _tl1495415207_
                                                      '0)))
                                                (let ((_tl1498815040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4358743588_
                                                          '1)))
                                                      (_target1498615037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4358743588_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1498815040_)
                                                      (___match4365343654_
                                                       _e1495315190_
                                                       _hd1495215194_
                                                       _tl1495115197_
                                                       _e1495615200_
                                                       _hd1495515204_
                                                       _tl1495415207_
                                                       _e1498515027_
                                                       _hd1498415031_
                                                       _tl1498315034_
                                                       ___splice4358743588_
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
        (let* ((___stx4365643657_ _$stx15220_)
               (_g1523115309_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4365643657_))))
          (let ((___kont4365943660_
                 (lambda ()
                   (let ((__tmp48741 (gx#datum->syntax '#f 'quote))
                         (__tmp48740
                          (let () (declare (not safe)) (cons '() '()))))
                     (declare (not safe))
                     (cons __tmp48741 __tmp48740))))
                (___kont4366143662_
                 (lambda (_L15640_)
                   (let ((__tmp48743 (gx#datum->syntax '#f 'quote))
                         (__tmp48742
                          (let () (declare (not safe)) (cons _L15640_ '()))))
                     (declare (not safe))
                     (cons __tmp48743 __tmp48742))))
                (___kont4366343664_
                 (lambda (_L15588_)
                   (let ((__tmp48745 (gx#datum->syntax '#f 'quasiquote))
                         (__tmp48744
                          (let () (declare (not safe)) (cons _L15588_ '()))))
                     (declare (not safe))
                     (cons __tmp48745 __tmp48744))))
                (___kont4366543666_ (lambda (_L15535_) _L15535_))
                (___kont4366743668_ (lambda (_L15477_ _L15479_) _L15479_))
                (___kont4366943670_
                 (lambda (_L15419_ _L15421_ _L15422_ _L15423_)
                   (let ((__tmp48751 (gx#datum->syntax '#f 'foldr))
                         (__tmp48746
                          (let ((__tmp48750 (gx#datum->syntax '#f 'cons))
                                (__tmp48747
                                 (let ((__tmp48749
                                        (let ()
                                          (declare (not safe))
                                          (cons _L15423_ _L15419_)))
                                       (__tmp48748
                                        (let ()
                                          (declare (not safe))
                                          (cons _L15422_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48749 __tmp48748))))
                            (declare (not safe))
                            (cons __tmp48750 __tmp48747))))
                     (declare (not safe))
                     (cons __tmp48751 __tmp48746))))
                (___kont4367143672_
                 (lambda (_L15365_ _L15367_ _L15368_)
                   (let ((__tmp48755 (gx#datum->syntax '#f 'cons))
                         (__tmp48752
                          (let ((__tmp48753
                                 (let ((__tmp48754
                                        (let ()
                                          (declare (not safe))
                                          (cons _L15368_ _L15365_))))
                                   (declare (not safe))
                                   (cons __tmp48754 '()))))
                            (declare (not safe))
                            (cons _L15367_ __tmp48753))))
                     (declare (not safe))
                     (cons __tmp48755 __tmp48752))))
                (___kont4367343674_ (lambda (_L15326_) _L15326_)))
            (let* ((___match4379543796_
                    (lambda (_e1528415389_
                             _hd1528315393_
                             _tl1528215396_
                             _e1528715399_
                             _hd1528615403_
                             _tl1528515406_
                             _e1529015409_
                             _hd1528915413_
                             _tl1528815416_)
                      (let ((_L15419_ _tl1528815416_)
                            (_L15421_ _hd1528915413_)
                            (_L15422_ _hd1528615403_)
                            (_L15423_ _hd1528315393_))
                        (if (gx#ellipsis? _L15421_)
                            (___kont4366943670_
                             _L15419_
                             _L15421_
                             _L15422_
                             _L15423_)
                            (___kont4367143672_
                             _tl1528515406_
                             _hd1528615403_
                             _hd1528315393_)))))
                   (___match4377743778_
                    (lambda (_e1527115447_
                             _hd1527015451_
                             _tl1526915454_
                             _e1527415457_
                             _hd1527315461_
                             _tl1527215464_
                             _e1527715467_
                             _hd1527615471_
                             _tl1527515474_)
                      (let ((_L15477_ _hd1527615471_)
                            (_L15479_ _hd1527315461_))
                        (if (gx#ellipsis? _L15477_)
                            (___kont4366743668_ _L15477_ _L15479_)
                            (___match4379543796_
                             _e1527115447_
                             _hd1527015451_
                             _tl1526915454_
                             _e1527415457_
                             _hd1527315461_
                             _tl1527215464_
                             _e1527715467_
                             _hd1527615471_
                             _tl1527515474_))))))
              (if (gx#stx-pair? ___stx4365643657_)
                  (let ((_e1523515662_ (gx#syntax-e ___stx4365643657_)))
                    (let ((_tl1523315669_
                           (let () (declare (not safe)) (##cdr _e1523515662_)))
                          (_hd1523415666_
                           (let ()
                             (declare (not safe))
                             (##car _e1523515662_))))
                      (if (gx#stx-null? _tl1523315669_)
                          (___kont4365943660_)
                          (if (gx#stx-pair? _tl1523315669_)
                              (let ((_e1524215620_
                                     (gx#syntax-e _tl1523315669_)))
                                (let ((_tl1524015627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1524215620_)))
                                      (_hd1524115624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1524215620_))))
                                  (if (gx#identifier? _hd1524115624_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g48757_|
                                           _hd1524115624_)
                                          (if (gx#stx-pair? _tl1524015627_)
                                              (let ((_e1524515630_
                                                     (gx#syntax-e
                                                      _tl1524015627_)))
                                                (let ((_tl1524315637_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1524515630_)))
                                                      (_hd1524415634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1524515630_))))
                                                  (if (gx#stx-null?
                                                       _tl1524315637_)
                                                      (___kont4366143662_
                                                       _hd1524415634_)
                                                      (___match4379543796_
                                                       _e1523515662_
                                                       _hd1523415666_
                                                       _tl1523315669_
                                                       _e1524215620_
                                                       _hd1524115624_
                                                       _tl1524015627_
                                                       _e1524515630_
                                                       _hd1524415634_
                                                       _tl1524315637_))))
                                              (___kont4367143672_
                                               _tl1524015627_
                                               _hd1524115624_
                                               _hd1523415666_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g48756_|
                                               _hd1524115624_)
                                              (if (gx#stx-pair? _tl1524015627_)
                                                  (let ((_e1525515578_
                                                         (gx#syntax-e
                                                          _tl1524015627_)))
                                                    (let ((_tl1525315585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1525515578_)))
                                                          (_hd1525415582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1525515578_))))
                                                      (if (gx#stx-null?
                                                           _tl1525315585_)
                                                          (___kont4366343664_
                                                           _hd1525415582_)
                                                          (___match4379543796_
                                                           _e1523515662_
                                                           _hd1523415666_
                                                           _tl1523315669_
                                                           _e1524215620_
                                                           _hd1524115624_
                                                           _tl1524015627_
                                                           _e1525515578_
                                                           _hd1525415582_
                                                           _tl1525315585_))))
                                                  (___kont4367143672_
                                                   _tl1524015627_
                                                   _hd1524115624_
                                                   _hd1523415666_))
                                              (if (gx#stx-pair? _tl1524015627_)
                                                  (let ((_e1527715467_
                                                         (gx#syntax-e
                                                          _tl1524015627_)))
                                                    (let ((_tl1527515474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1527715467_)))
                                                          (_hd1527615471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1527715467_))))
                                                      (if (gx#stx-null?
                                                           _tl1527515474_)
                                                          (___match4377743778_
                                                           _e1523515662_
                                                           _hd1523415666_
                                                           _tl1523315669_
                                                           _e1524215620_
                                                           _hd1524115624_
                                                           _tl1524015627_
                                                           _e1527715467_
                                                           _hd1527615471_
                                                           _tl1527515474_)
                                                          (___match4379543796_
                                                           _e1523515662_
                                                           _hd1523415666_
                                                           _tl1523315669_
                                                           _e1524215620_
                                                           _hd1524115624_
                                                           _tl1524015627_
                                                           _e1527715467_
                                                           _hd1527615471_
                                                           _tl1527515474_))))
                                                  (___kont4367143672_
                                                   _tl1524015627_
                                                   _hd1524115624_
                                                   _hd1523415666_))))
                                      (if (gx#stx-datum? _hd1524115624_)
                                          (let ((_e1526315521_
                                                 (gx#stx-e _hd1524115624_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e1526315521_ '::))
                                                (if (gx#stx-pair?
                                                     _tl1524015627_)
                                                    (let ((_e1526615525_
                                                           (gx#syntax-e
                                                            _tl1524015627_)))
                                                      (let ((_tl1526415532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1526615525_)))
                    (_hd1526515529_
                     (let () (declare (not safe)) (##car _e1526615525_))))
                (if (gx#stx-null? _tl1526415532_)
                    (___kont4366543666_ _hd1526515529_)
                    (___match4379543796_
                     _e1523515662_
                     _hd1523415666_
                     _tl1523315669_
                     _e1524215620_
                     _hd1524115624_
                     _tl1524015627_
                     _e1526615525_
                     _hd1526515529_
                     _tl1526415532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4367143672_
                                                     _tl1524015627_
                                                     _hd1524115624_
                                                     _hd1523415666_))
                                                (if (gx#stx-pair?
                                                     _tl1524015627_)
                                                    (let ((_e1527715467_
                                                           (gx#syntax-e
                                                            _tl1524015627_)))
                                                      (let ((_tl1527515474_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1527715467_)))
                    (_hd1527615471_
                     (let () (declare (not safe)) (##car _e1527715467_))))
                (if (gx#stx-null? _tl1527515474_)
                    (___match4377743778_
                     _e1523515662_
                     _hd1523415666_
                     _tl1523315669_
                     _e1524215620_
                     _hd1524115624_
                     _tl1524015627_
                     _e1527715467_
                     _hd1527615471_
                     _tl1527515474_)
                    (___match4379543796_
                     _e1523515662_
                     _hd1523415666_
                     _tl1523315669_
                     _e1524215620_
                     _hd1524115624_
                     _tl1524015627_
                     _e1527715467_
                     _hd1527615471_
                     _tl1527515474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4367143672_
                                                     _tl1524015627_
                                                     _hd1524115624_
                                                     _hd1523415666_))))
                                          (if (gx#stx-pair? _tl1524015627_)
                                              (let ((_e1527715467_
                                                     (gx#syntax-e
                                                      _tl1524015627_)))
                                                (let ((_tl1527515474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1527715467_)))
                                                      (_hd1527615471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1527715467_))))
                                                  (if (gx#stx-null?
                                                       _tl1527515474_)
                                                      (___match4377743778_
                                                       _e1523515662_
                                                       _hd1523415666_
                                                       _tl1523315669_
                                                       _e1524215620_
                                                       _hd1524115624_
                                                       _tl1524015627_
                                                       _e1527715467_
                                                       _hd1527615471_
                                                       _tl1527515474_)
                                                      (___match4379543796_
                                                       _e1523515662_
                                                       _hd1523415666_
                                                       _tl1523315669_
                                                       _e1524215620_
                                                       _hd1524115624_
                                                       _tl1524015627_
                                                       _e1527715467_
                                                       _hd1527615471_
                                                       _tl1527515474_))))
                                              (___kont4367143672_
                                               _tl1524015627_
                                               _hd1524115624_
                                               _hd1523415666_))))))
                              (___kont4367343674_ _tl1523315669_)))))
                  (let () (declare (not safe)) (_g1523115309_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15680_)
        (letrec ((_simple-quote?15683_
                  (lambda (_e16375_)
                    (let* ((___stx4381643817_ _e16375_)
                           (_g1638316420_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4381643817_))))
                      (let ((___kont4381943820_ (lambda () '#f))
                            (___kont4382143822_ (lambda () '#f))
                            (___kont4382343824_
                             (lambda (_L16534_ _L16536_)
                               (if (_simple-quote?15683_ _L16536_)
                                   (_simple-quote?15683_ _L16534_)
                                   '#f)))
                            (___kont4382543826_
                             (lambda (_L16495_)
                               (_simple-quote?15683_
                                (let ((__tmp48758
                                       (lambda (_g1650816511_ _g1650916514_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1650816511_
                                                 _g1650916514_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp48758 '() _L16495_)))))
                            (___kont4382943830_
                             (lambda (_L16442_)
                               (_simple-quote?15683_ _L16442_)))
                            (___kont4383143832_ (lambda () '#t)))
                        (let* ((_g1638116454_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4381643817_)
                                      (let ((_e1641416438_
                                             (unbox (gx#syntax-e
                                                     ___stx4381643817_))))
                                        (___kont4382943830_ _e1641416438_))
                                      (___kont4383143832_))))
                               (___match4388743888_
                                (lambda (_e1640316461_
                                         ___splice4382743828_
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
                                                    (___kont4382543826_
                                                     _e1641216491_))))))
                                    (_loop1640716471_
                                     _target1640416465_
                                     '()))))
                               (_g1638016517_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4381643817_)
                                      (let ((_e1640316461_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4381643817_))))
                                        (if (gx#stx-pair/null? _e1640316461_)
                                            (let ((___splice4382743828_
                                                   (gx#syntax-split-splice
                                                    _e1640316461_
                                                    '0)))
                                              (let ((_tl1640616468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4382743828_
                                                        '1)))
                                                    (_target1640416465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4382743828_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1640616468_)
                                                    (___match4388743888_
                                                     _e1640316461_
                                                     ___splice4382743828_
                                                     _target1640416465_
                                                     _tl1640616468_)
                                                    (___kont4383143832_))))
                                            (___kont4383143832_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1638116454_))))))
                          (if (gx#stx-pair? ___stx4381643817_)
                              (let ((_e1638716585_
                                     (gx#syntax-e ___stx4381643817_)))
                                (let ((_tl1638516592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1638716585_)))
                                      (_hd1638616589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1638716585_))))
                                  (if (gx#identifier? _hd1638616589_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g48760_|
                                           _hd1638616589_)
                                          (if (gx#stx-pair? _tl1638516592_)
                                              (let ((_e1639016595_
                                                     (gx#syntax-e
                                                      _tl1638516592_)))
                                                (let ((_tl1638816602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1639016595_)))
                                                      (_hd1638916599_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1639016595_))))
                                                  (if (gx#stx-null?
                                                       _tl1638816602_)
                                                      (___kont4381943820_)
                                                      (___kont4382343824_
                                                       _tl1638516592_
                                                       _hd1638616589_))))
                                              (___kont4382343824_
                                               _tl1638516592_
                                               _hd1638616589_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g48759_|
                                               _hd1638616589_)
                                              (if (gx#stx-pair? _tl1638516592_)
                                                  (let ((_e1639616564_
                                                         (gx#syntax-e
                                                          _tl1638516592_)))
                                                    (let ((_tl1639416571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1639616564_)))
                                                          (_hd1639516568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1639616564_))))
                                                      (if (gx#stx-null?
                                                           _tl1639416571_)
                                                          (___kont4382143822_)
                                                          (___kont4382343824_
                                                           _tl1638516592_
                                                           _hd1638616589_))))
                                                  (___kont4382343824_
                                                   _tl1638516592_
                                                   _hd1638616589_))
                                              (___kont4382343824_
                                               _tl1638516592_
                                               _hd1638616589_)))
                                      (___kont4382343824_
                                       _tl1638516592_
                                       _hd1638616589_))))
                              (let ()
                                (declare (not safe))
                                (_g1638016517_))))))))
                 (_generate15685_
                  (lambda (_e15747_ _d15749_)
                    (let* ((___stx4389443895_ _e15747_)
                           (_g1575815816_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4389443895_))))
                      (let ((___kont4389743898_
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
                                              (let ((__tmp48767
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list))
                                                    (__tmp48761
                                                     (let ((__tmp48763
                                                            (let ((__tmp48766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'quote))
                          (__tmp48764
                           (let ((__tmp48765
                                  (gx#datum->syntax '#f 'quasiquote)))
                             (declare (not safe))
                             (cons __tmp48765 '()))))
                      (declare (not safe))
                      (cons __tmp48766 __tmp48764)))
                   (__tmp48762
                    (let () (declare (not safe)) (cons _L16355_ '()))))
               (declare (not safe))
               (cons __tmp48763 __tmp48762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48767 __tmp48761))))
                                          _g1634116352_))))
                                 (_g1633916367_
                                  (_generate15685_
                                   _L16327_
                                   (let ()
                                     (declare (not safe))
                                     (fx+ _d15749_ '1)))))))
                            (___kont4389943900_
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
                                                  (let ((__tmp48774
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp48768
                                                         (let ((__tmp48770
                                                                (let ((__tmp48773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp48771
                               (let ((__tmp48772
                                      (gx#datum->syntax '#f 'unquote)))
                                 (declare (not safe))
                                 (cons __tmp48772 '()))))
                          (declare (not safe))
                          (cons __tmp48773 __tmp48771)))
                       (__tmp48769
                        (let () (declare (not safe)) (cons _L16284_ '()))))
                   (declare (not safe))
                   (cons __tmp48770 __tmp48769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48774
                                                          __tmp48768))))
                                              _g1627016281_))))
                                     (_g1626816296_
                                      (_generate15685_
                                       _L16256_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d15749_ '1))))))))
                            (___kont4390143902_
                             (lambda (_L16185_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d15749_))
                                   (let ((__tmp48789
                                          (gx#datum->syntax '#f 'foldr))
                                         (__tmp48782
                                          (let ((__tmp48788
                                                 (gx#datum->syntax '#f 'cons))
                                                (__tmp48783
                                                 (let ((__tmp48785
                                                        (let ((__tmp48787
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48786
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '() '()))))
                  (declare (not safe))
                  (cons __tmp48787 __tmp48786)))
               (__tmp48784 (let () (declare (not safe)) (cons _L16185_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48785
                                                         __tmp48784))))
                                            (declare (not safe))
                                            (cons __tmp48788 __tmp48783))))
                                     (declare (not safe))
                                     (cons __tmp48789 __tmp48782))
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
                                                  (let ((__tmp48781
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp48775
                                                         (let ((__tmp48777
                                                                (let ((__tmp48780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp48778
                               (let ((__tmp48779
                                      (gx#datum->syntax
                                       '#f
                                       'unquote-splicing)))
                                 (declare (not safe))
                                 (cons __tmp48779 '()))))
                          (declare (not safe))
                          (cons __tmp48780 __tmp48778)))
                       (__tmp48776
                        (let () (declare (not safe)) (cons _L16213_ '()))))
                   (declare (not safe))
                   (cons __tmp48777 __tmp48776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48781
                                                          __tmp48775))))
                                              _g1619916210_))))
                                     (_g1619716225_
                                      (_generate15685_
                                       _L16185_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d15749_ '1))))))))
                            (___kont4390343904_
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
                                              (let ((__tmp48794
                                                     (gx#datum->syntax
                                                      '#f
                                                      'foldr))
                                                    (__tmp48790
                                                     (let ((__tmp48793
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cons))
                                                           (__tmp48791
                                                            (let ((__tmp48792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L16112_ '()))))
                      (declare (not safe))
                      (cons _L16142_ __tmp48792))))
               (declare (not safe))
               (cons __tmp48793 __tmp48791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48794 __tmp48790))))
                                          _g1612816139_))))
                                 (_g1612616154_
                                  (_generate15685_ _L16110_ _d15749_)))))
                            (___kont4390543906_
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
                                             (let ((_e1601516031_
                                                    (gx#syntax-e
                                                     _g1601016028_)))
                                               (let ((_hd1601416035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1601516031_)))
                                                     (_tl1601316038_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1601516031_))))
                                                 (if (gx#stx-pair?
                                                      _tl1601316038_)
                                                     (let ((_e1601816041_
                                                            (gx#syntax-e
                                                             _tl1601316038_)))
                                                       (let ((_hd1601716045_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1601816041_)))
                     (_tl1601616048_
                      (let () (declare (not safe)) (##cdr _e1601816041_))))
                 (if (gx#stx-null? _tl1601616048_)
                     ((lambda (_L16051_ _L16053_)
                        (let ()
                          (let ((__tmp48797 (gx#datum->syntax '#f 'cons))
                                (__tmp48795
                                 (let ((__tmp48796
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16051_ '()))))
                                   (declare (not safe))
                                   (cons _L16053_ __tmp48796))))
                            (declare (not safe))
                            (cons __tmp48797 __tmp48795))))
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
                            (___kont4390743908_
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
                                              (let ((__tmp48799
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list->vector))
                                                    (__tmp48798
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L15955_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48799 __tmp48798))))
                                          _g1594115952_))))
                                 (_g1593915967_
                                  (_generate15685_
                                   (let ((__tmp48800
                                          (lambda (_g1597015973_ _g1597115976_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g1597015973_
                                                    _g1597115976_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp48800 '() _L15926_))
                                   _d15749_)))))
                            (___kont4391143912_
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
                                              (let ((__tmp48802
                                                     (gx#datum->syntax
                                                      '#f
                                                      'box))
                                                    (__tmp48801
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L15869_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48802 __tmp48801))))
                                          _g1585515866_))))
                                 (_g1585315881_
                                  (_generate15685_ _L15844_ _d15749_)))))
                            (___kont4391343914_
                             (lambda (_L15823_)
                               (let ((__tmp48804 (gx#datum->syntax '#f 'quote))
                                     (__tmp48803
                                      (let ()
                                        (declare (not safe))
                                        (cons _L15823_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48804 __tmp48803)))))
                        (let* ((_g1575615885_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4389443895_)
                                      (let ((_e1580915840_
                                             (unbox (gx#syntax-e
                                                     ___stx4389443895_))))
                                        (___kont4391143912_ _e1580915840_))
                                      (___kont4391343914_ ___stx4389443895_))))
                               (___match4401344014_
                                (lambda (_e1579815892_
                                         ___splice4390943910_
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
                                                    (___kont4390743908_
                                                     _e1580715922_))))))
                                    (_loop1580215902_
                                     _target1579915896_
                                     '()))))
                               (_g1575515979_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4389443895_)
                                      (let ((_e1579815892_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4389443895_))))
                                        (if (gx#stx-pair/null? _e1579815892_)
                                            (let ((___splice4390943910_
                                                   (gx#syntax-split-splice
                                                    _e1579815892_
                                                    '0)))
                                              (let ((_tl1580115899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4390943910_
                                                        '1)))
                                                    (_target1579915896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4390943910_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1580115899_)
                                                    (___match4401344014_
                                                     _e1579815892_
                                                     ___splice4390943910_
                                                     _target1579915896_
                                                     _tl1580115899_)
                                                    (___kont4391343914_
                                                     ___stx4389443895_))))
                                            (___kont4391343914_
                                             ___stx4389443895_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1575615885_))))))
                          (if (gx#stx-pair? ___stx4389443895_)
                              (let ((_e1576316307_
                                     (gx#syntax-e ___stx4389443895_)))
                                (let ((_tl1576116314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1576316307_)))
                                      (_hd1576216311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1576316307_))))
                                  (if (gx#identifier? _hd1576216311_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g48808_|
                                           _hd1576216311_)
                                          (if (gx#stx-pair? _tl1576116314_)
                                              (let ((_e1576616317_
                                                     (gx#syntax-e
                                                      _tl1576116314_)))
                                                (let ((_tl1576416324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1576616317_)))
                                                      (_hd1576516321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1576616317_))))
                                                  (if (gx#stx-null?
                                                       _tl1576416324_)
                                                      (___kont4389743898_
                                                       _hd1576516321_)
                                                      (___kont4390543906_
                                                       _tl1576116314_
                                                       _hd1576216311_))))
                                              (___kont4390543906_
                                               _tl1576116314_
                                               _hd1576216311_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g48807_|
                                               _hd1576216311_)
                                              (if (gx#stx-pair? _tl1576116314_)
                                                  (let ((_e1577316246_
                                                         (gx#syntax-e
                                                          _tl1576116314_)))
                                                    (let ((_tl1577116253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1577316246_)))
                                                          (_hd1577216250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1577316246_))))
                                                      (if (gx#stx-null?
                                                           _tl1577116253_)
                                                          (___kont4389943900_
                                                           _hd1577216250_)
                                                          (___kont4390543906_
                                                           _tl1576116314_
                                                           _hd1576216311_))))
                                                  (___kont4390543906_
                                                   _tl1576116314_
                                                   _hd1576216311_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g48806_|
                                                   _hd1576216311_)
                                                  (if (gx#stx-pair?
                                                       _tl1576116314_)
                                                      (let ((_e1578016175_
                                                             (gx#syntax-e
                                                              _tl1576116314_)))
                                                        (let ((_tl1577816182_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1578016175_)))
                      (_hd1577916179_
                       (let () (declare (not safe)) (##car _e1578016175_))))
                  (if (gx#stx-null? _tl1577816182_)
                      (___kont4390143902_ _hd1577916179_)
                      (___kont4390543906_ _tl1576116314_ _hd1576216311_))))
              (___kont4390543906_ _tl1576116314_ _hd1576216311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4390543906_
                                                   _tl1576116314_
                                                   _hd1576216311_))))
                                      (if (gx#stx-pair? _hd1576216311_)
                                          (let ((_e1578816090_
                                                 (gx#syntax-e _hd1576216311_)))
                                            (let ((_tl1578616097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1578816090_)))
                                                  (_hd1578716094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1578816090_))))
                                              (if (gx#identifier?
                                                   _hd1578716094_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g48805_|
                                                       _hd1578716094_)
                                                      (if (gx#stx-pair?
                                                           _tl1578616097_)
                                                          (let ((_e1579116100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1578616097_)))
                    (let ((_tl1578916107_
                           (let () (declare (not safe)) (##cdr _e1579116100_)))
                          (_hd1579016104_
                           (let ()
                             (declare (not safe))
                             (##car _e1579116100_))))
                      (if (gx#stx-null? _tl1578916107_)
                          (if (let () (declare (not safe)) (fxzero? _d15749_))
                              (let ((_L16110_ _tl1576116314_)
                                    (_L16112_ _hd1579016104_))
                                (___kont4390343904_ _L16110_ _L16112_))
                              (___kont4390543906_
                               _tl1576116314_
                               _hd1576216311_))
                          (___kont4390543906_ _tl1576116314_ _hd1576216311_))))
                  (___kont4390543906_ _tl1576116314_ _hd1576216311_))
              (___kont4390543906_ _tl1576116314_ _hd1576216311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4390543906_
                                                   _tl1576116314_
                                                   _hd1576216311_))))
                                          (___kont4390543906_
                                           _tl1576116314_
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
                        (let ((_e1569215708_ (gx#syntax-e _g1568815705_)))
                          (let ((_hd1569115712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1569215708_)))
                                (_tl1569015715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1569215708_))))
                            (if (gx#stx-pair? _tl1569015715_)
                                (let ((_e1569515718_
                                       (gx#syntax-e _tl1569015715_)))
                                  (let ((_hd1569415722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1569515718_)))
                                        (_tl1569315725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1569515718_))))
                                    (if (gx#stx-null? _tl1569315725_)
                                        ((lambda (_L15728_)
                                           (if (_simple-quote?15683_ _L15728_)
                                               (let ((__tmp48810
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp48809
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L15728_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp48810 __tmp48809))
                                               (_generate15685_ _L15728_ '0)))
                                         _hd1569415722_)
                                        (_g1568715701_ _g1568815705_))))
                                (_g1568715701_ _g1568815705_))))
                        (_g1568715701_ _g1568815705_)))))
            (_g1568615743_ _stx15680_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16615_)
        (let* ((___stx4402044021_ _$stx16615_)
               (_g1662016641_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4402044021_))))
          (let ((___kont4402344024_
                 (lambda (_L16709_)
                   (let ((__tmp48812 (gx#datum->syntax '#f 'quote))
                         (__tmp48811
                          (let () (declare (not safe)) (cons _L16709_ '()))))
                     (declare (not safe))
                     (cons __tmp48812 __tmp48811))))
                (___kont4402544026_
                 (lambda (_L16668_)
                   (let ((__tmp48818 (gx#datum->syntax '#f 'make-promise))
                         (__tmp48813
                          (let ((__tmp48814
                                 (let ((__tmp48817
                                        (gx#datum->syntax '#f 'lambda%))
                                       (__tmp48815
                                        (let ((__tmp48816
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L16668_ '()))))
                                          (declare (not safe))
                                          (cons '() __tmp48816))))
                                   (declare (not safe))
                                   (cons __tmp48817 __tmp48815))))
                            (declare (not safe))
                            (cons __tmp48814 '()))))
                     (declare (not safe))
                     (cons __tmp48818 __tmp48813)))))
            (let ((___match4404144042_
                   (lambda (_e1662516689_
                            _hd1662416693_
                            _tl1662316696_
                            _e1662816699_
                            _hd1662716703_
                            _tl1662616706_)
                     (let ((_L16709_ _hd1662716703_))
                       (if (gx#stx-datum? _L16709_)
                           (___kont4402344024_ _L16709_)
                           (___kont4402544026_ _hd1662716703_))))))
              (if (gx#stx-pair? ___stx4402044021_)
                  (let ((_e1662516689_ (gx#syntax-e ___stx4402044021_)))
                    (let ((_tl1662316696_
                           (let () (declare (not safe)) (##cdr _e1662516689_)))
                          (_hd1662416693_
                           (let ()
                             (declare (not safe))
                             (##car _e1662516689_))))
                      (if (gx#stx-pair? _tl1662316696_)
                          (let ((_e1662816699_ (gx#syntax-e _tl1662316696_)))
                            (let ((_tl1662616706_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1662816699_)))
                                  (_hd1662716703_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1662816699_))))
                              (if (gx#stx-null? _tl1662616706_)
                                  (___match4404144042_
                                   _e1662516689_
                                   _hd1662416693_
                                   _tl1662316696_
                                   _e1662816699_
                                   _hd1662716703_
                                   _tl1662616706_)
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
                      (let* ((___stx4407844079_ _rest16854_)
                             (_g1686016872_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4407844079_))))
                        (let ((___kont4408144082_
                               (lambda (_L16900_ _L16902_)
                                 (let* ((___stx4405844059_ _L16902_)
                                        (_g1691916926_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4405844059_))))
                                   (let ((___kont4406144062_
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
                                         (___kont4406344064_
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
                  (let ((__tmp48819 (list _tail16948_)))
                    (declare (not safe))
                    (foldl1 cons __tmp48819 _body16857_))
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx16726_
                                                 _L16902_))))
                                         (___kont4406544066_
                                          (lambda ()
                                            (_lp16851_
                                             _L16900_
                                             _hd16856_
                                             (let ()
                                               (declare (not safe))
                                               (cons _L16902_ _body16857_))))))
                                     (if (gx#identifier? ___stx4405844059_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g48821_|
                                              ___stx4405844059_)
                                             (___kont4406144062_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g48820_|
                                                  ___stx4405844059_)
                                                 (___kont4406344064_)
                                                 (___kont4406544066_)))
                                         (___kont4406544066_))))))
                              (___kont4408344084_
                               (lambda ()
                                 (values (reverse _hd16856_)
                                         (reverse _body16857_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx4407844079_)
                              (let ((_e1686616890_
                                     (gx#syntax-e ___stx4407844079_)))
                                (let ((_tl1686416897_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1686616890_)))
                                      (_hd1686516894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1686616890_))))
                                  (___kont4408144082_
                                   _tl1686416897_
                                   _hd1686516894_)))
                              (___kont4408344084_))))))))
          (let* ((_g1673216743_
                  (lambda (_g1673316739_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1673316739_)))
                 (_g1673116844_
                  (lambda (_g1673316747_)
                    (if (gx#stx-pair? _g1673316747_)
                        (let ((_e1673716750_ (gx#syntax-e _g1673316747_)))
                          (let ((_hd1673616754_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1673716750_)))
                                (_tl1673516757_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1673716750_))))
                            ((lambda (_L16760_)
                               (if (and (gx#stx-list? _L16760_)
                                        (let ((__tmp48832
                                               (gx#stx-null? _L16760_)))
                                          (declare (not safe))
                                          (not __tmp48832)))
                                   (let ((_g48822_ (_generate16729_ _L16760_)))
                                     (begin
                                       (let ((_g48823_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g48822_)
                                                    (##vector-length _g48822_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g48823_ 3)))
                                             (error "Context expects 3 values"
                                                    _g48823_)))
                                       (let ((_hd16773_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48822_ 0)))
                                             (_body16775_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48822_ 1)))
                                             (_tail?16776_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g48822_ 2))))
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
                                     (let ((__tmp48831
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp48827
                                            (let ((__tmp48828
                                                   (let ((__tmp48829
                                                          (let ((__tmp48830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'apply)))
                    (declare (not safe))
                    (cons __tmp48830 _L16821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48829 '()))))
                                              (declare (not safe))
                                              (cons _L16793_ __tmp48828))))
                                       (declare (not safe))
                                       (cons __tmp48831 __tmp48827))
                                     (let ((__tmp48826
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp48824
                                            (let ((__tmp48825
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L16821_ '()))))
                                              (declare (not safe))
                                              (cons _L16793_ __tmp48825))))
                                       (declare (not safe))
                                       (cons __tmp48826 __tmp48824))))))
                           _g1680716818_))))
                  (_g1680516836_ _body16775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1677916790_))))
                                           (_g1677716840_ _hd16773_)))))
                                   (_g1673216743_ _g1673316747_)))
                             _tl1673516757_)))
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
