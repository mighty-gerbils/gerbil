(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42654_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42655_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42656_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42692_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42693_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42988_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42995_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42996_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42997_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42998_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42999_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g43000_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g43001_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g43002_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g43003_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g43004_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4655_)
        (letrec ((_simple-lambda?4658_
                  (lambda (_hd8055_) (gx#stx-andmap gx#identifier? _hd8055_)))
                 (_opt-lambda?4660_
                  (lambda (_hd7907_)
                    (let _lp7910_ ((_rest7913_ _hd7907_) (_opt?7915_ '#f))
                      (let* ((___stx3783437835_ _rest7913_)
                             (_g79187930_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx3783437835_))))
                        (let ((___kont3783737838_
                               (lambda (_L7962_ _L7964_)
                                 (let* ((___stx3781037811_ _L7964_)
                                        (_g79807994_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx3781037811_))))
                                   (let ((___kont3781337814_
                                          (lambda (_L8032_)
                                            (_lp7910_ _L7962_ '#t)))
                                         (___kont3781537816_
                                          (lambda ()
                                            (if (gx#identifier? _L7964_)
                                                (if (not _opt?7915_)
                                                    (_lp7910_ _L7962_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match3783137832_
                                            (lambda (_e79858012_
                                                     _hd79848016_
                                                     _tl79838019_
                                                     _e79888022_
                                                     _hd79878026_
                                                     _tl79868029_)
                                              (let ((_L8032_ _hd79848016_))
                                                (if (gx#identifier? _L8032_)
                                                    (___kont3781337814_
                                                     _L8032_)
                                                    (___kont3781537816_))))))
                                       (if (gx#stx-pair? ___stx3781037811_)
                                           (let ((_e79858012_
                                                  (gx#syntax-e
                                                   ___stx3781037811_)))
                                             (let ((_tl79838019_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e79858012_)))
                                                   (_hd79848016_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e79858012_))))
                                               (if (gx#stx-pair? _tl79838019_)
                                                   (let ((_e79888022_
                                                          (gx#syntax-e
                                                           _tl79838019_)))
                                                     (let ((_tl79868029_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e79888022_)))
                                                           (_hd79878026_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e79888022_))))
                                                       (if (gx#stx-null?
                                                            _tl79868029_)
                                                           (___match3783137832_
                                                            _e79858012_
                                                            _hd79848016_
                                                            _tl79838019_
                                                            _e79888022_
                                                            _hd79878026_
                                                            _tl79868029_)
                                                           (___kont3781537816_))))
                                                   (___kont3781537816_))))
                                           (___kont3781537816_)))))))
                              (___kont3783937840_
                               (lambda ()
                                 (if _opt?7915_
                                     (let ((_$e7941_
                                            (gx#stx-null? _rest7913_)))
                                       (if _$e7941_
                                           _$e7941_
                                           (gx#identifier? _rest7913_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx3783437835_)
                              (let ((_e79247952_
                                     (gx#syntax-e ___stx3783437835_)))
                                (let ((_tl79227959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e79247952_)))
                                      (_hd79237956_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e79247952_))))
                                  (___kont3783737838_
                                   _tl79227959_
                                   _hd79237956_)))
                              (___kont3783937840_)))))))
                 (_opt-lambda-split4661_
                  (lambda (_hd7759_)
                    (let _lp7762_ ((_rest7765_ _hd7759_)
                                   (_pre7767_ '())
                                   (_opt7768_ '()))
                      (let* ((___stx3787437875_ _rest7765_)
                             (_g77717783_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx3787437875_))))
                        (let ((___kont3787737878_
                               (lambda (_L7811_ _L7813_)
                                 (let* ((___stx3785037851_ _L7813_)
                                        (_g78297844_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx3785037851_))))
                                   (let ((___kont3785337854_
                                          (lambda (_L7882_ _L7884_)
                                            (_lp7762_
                                             _L7811_
                                             _pre7767_
                                             (cons (cons (_generate-bind4664_
                                                          _L7884_)
                                                         _L7882_)
                                                   _opt7768_))))
                                         (___kont3785537856_
                                          (lambda ()
                                            (_lp7762_
                                             _L7811_
                                             (cons (_generate-bind4664_
                                                    _L7813_)
                                                   _pre7767_)
                                             _opt7768_))))
                                     (if (gx#stx-pair? ___stx3785037851_)
                                         (let ((_e78357862_
                                                (gx#syntax-e
                                                 ___stx3785037851_)))
                                           (let ((_tl78337869_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e78357862_)))
                                                 (_hd78347866_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e78357862_))))
                                             (if (gx#stx-pair? _tl78337869_)
                                                 (let ((_e78387872_
                                                        (gx#syntax-e
                                                         _tl78337869_)))
                                                   (let ((_tl78367879_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e78387872_)))
                                                         (_hd78377876_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e78387872_))))
                                                     (if (gx#stx-null?
                                                          _tl78367879_)
                                                         (___kont3785337854_
                                                          _hd78377876_
                                                          _hd78347866_)
                                                         (___kont3785537856_))))
                                                 (___kont3785537856_))))
                                         (___kont3785537856_))))))
                              (___kont3787937880_
                               (lambda ()
                                 (values (reverse _pre7767_)
                                         (reverse _opt7768_)
                                         (if (gx#identifier? _rest7765_)
                                             (_generate-bind4664_ _rest7765_)
                                             _rest7765_)))))
                          (if (gx#stx-pair? ___stx3787437875_)
                              (let ((_e77777801_
                                     (gx#syntax-e ___stx3787437875_)))
                                (let ((_tl77757808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e77777801_)))
                                      (_hd77767805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e77777801_))))
                                  (___kont3787737878_
                                   _tl77757808_
                                   _hd77767805_)))
                              (___kont3787937880_)))))))
                 (_kw-lambda?4662_
                  (lambda (_hd7427_)
                    (let _lp7430_ ((_rest7433_ _hd7427_)
                                   (_opt?7435_ '#f)
                                   (_key?7436_ '#f))
                      (let* ((___stx3793837939_ _rest7433_)
                             (_g74417471_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx3793837939_))))
                        (let ((___kont3794137942_
                               (lambda (_L7666_ _L7668_ _L7669_)
                                 (let* ((___stx3791437915_ _L7668_)
                                        (_g76847698_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx3791437915_))))
                                   (let ((___kont3791737918_
                                          (lambda (_L7736_)
                                            (if (gx#identifier? _L7736_)
                                                (_lp7430_
                                                 _L7666_
                                                 _opt?7435_
                                                 '#t)
                                                '#f)))
                                         (___kont3791937920_
                                          (lambda ()
                                            (if (gx#identifier? _L7668_)
                                                (_lp7430_
                                                 _L7666_
                                                 _opt?7435_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3791437915_)
                                         (let ((_e76897716_
                                                (gx#syntax-e
                                                 ___stx3791437915_)))
                                           (let ((_tl76877723_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e76897716_)))
                                                 (_hd76887720_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e76897716_))))
                                             (if (gx#stx-pair? _tl76877723_)
                                                 (let ((_e76927726_
                                                        (gx#syntax-e
                                                         _tl76877723_)))
                                                   (let ((_tl76907733_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e76927726_)))
                                                         (_hd76917730_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e76927726_))))
                                                     (if (gx#stx-null?
                                                          _tl76907733_)
                                                         (___kont3791737918_
                                                          _hd76887720_)
                                                         (___kont3791937920_))))
                                                 (___kont3791937920_))))
                                         (___kont3791937920_))))))
                              (___kont3794337944_
                               (lambda (_L7623_ _L7625_)
                                 (if (gx#identifier? _L7625_)
                                     (_lp7430_ _L7623_ _opt?7435_ '#t)
                                     '#f)))
                              (___kont3794537946_
                               (lambda (_L7503_ _L7505_)
                                 (let* ((___stx3789037891_ _L7505_)
                                        (_g75217535_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx3789037891_))))
                                   (let ((___kont3789337894_
                                          (lambda (_L7573_)
                                            (if (gx#identifier? _L7573_)
                                                (_lp7430_
                                                 _L7503_
                                                 '#t
                                                 _key?7436_)
                                                '#f)))
                                         (___kont3789537896_
                                          (lambda ()
                                            (if (gx#identifier? _L7505_)
                                                (if (not _opt?7435_)
                                                    (_lp7430_
                                                     _L7503_
                                                     '#f
                                                     _key?7436_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3789037891_)
                                         (let ((_e75267553_
                                                (gx#syntax-e
                                                 ___stx3789037891_)))
                                           (let ((_tl75247560_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e75267553_)))
                                                 (_hd75257557_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e75267553_))))
                                             (if (gx#stx-pair? _tl75247560_)
                                                 (let ((_e75297563_
                                                        (gx#syntax-e
                                                         _tl75247560_)))
                                                   (let ((_tl75277570_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e75297563_)))
                                                         (_hd75287567_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e75297563_))))
                                                     (if (gx#stx-null?
                                                          _tl75277570_)
                                                         (___kont3789337894_
                                                          _hd75257557_)
                                                         (___kont3789537896_))))
                                                 (___kont3789537896_))))
                                         (___kont3789537896_))))))
                              (___kont3794737948_
                               (lambda ()
                                 (if _key?7436_
                                     (let ((_$e7482_
                                            (gx#stx-null? _rest7433_)))
                                       (if _$e7482_
                                           _$e7482_
                                           (gx#identifier? _rest7433_)))
                                     '#f))))
                          (let ((___match3796137962_
                                 (lambda (_e74487646_
                                          _hd74477650_
                                          _tl74467653_
                                          _e74517656_
                                          _hd74507660_
                                          _tl74497663_)
                                   (let ((_L7666_ _tl74497663_)
                                         (_L7668_ _hd74507660_)
                                         (_L7669_ _hd74477650_))
                                     (if (gx#stx-keyword? _L7669_)
                                         (___kont3794137942_
                                          _L7666_
                                          _L7668_
                                          _L7669_)
                                         (if (gx#stx-datum? _hd74477650_)
                                             (let ((_e74577609_
                                                    (gx#stx-e _hd74477650_)))
                                               (if (equal? _e74577609_ '#!key)
                                                   (___kont3794337944_
                                                    _tl74497663_
                                                    _hd74507660_)
                                                   (___kont3794537946_
                                                    _tl74467653_
                                                    _hd74477650_)))
                                             (___kont3794537946_
                                              _tl74467653_
                                              _hd74477650_)))))))
                            (if (gx#stx-pair? ___stx3793837939_)
                                (let ((_e74487646_
                                       (gx#syntax-e ___stx3793837939_)))
                                  (let ((_tl74467653_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e74487646_)))
                                        (_hd74477650_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e74487646_))))
                                    (if (gx#stx-pair? _tl74467653_)
                                        (let ((_e74517656_
                                               (gx#syntax-e _tl74467653_)))
                                          (let ((_tl74497663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e74517656_)))
                                                (_hd74507660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e74517656_))))
                                            (___match3796137962_
                                             _e74487646_
                                             _hd74477650_
                                             _tl74467653_
                                             _e74517656_
                                             _hd74507660_
                                             _tl74497663_)))
                                        (if (gx#stx-datum? _hd74477650_)
                                            (let ((_e74577609_
                                                   (gx#stx-e _hd74477650_)))
                                              (___kont3794537946_
                                               _tl74467653_
                                               _hd74477650_))
                                            (___kont3794537946_
                                             _tl74467653_
                                             _hd74477650_)))))
                                (___kont3794737948_))))))))
                 (_kw-lambda-split4663_
                  (lambda (_hd7160_)
                    (let _lp7163_ ((_rest7166_ _hd7160_)
                                   (_kwvar7168_ '#f)
                                   (_kwargs7169_ '())
                                   (_args7170_ '()))
                      (let* ((___stx3801238013_ _rest7166_)
                             (_g71757205_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx3801238013_))))
                        (let ((___kont3801538016_
                               (lambda (_L7324_ _L7326_ _L7327_)
                                 (let ((_key7341_ (gx#stx-e _L7327_)))
                                   (if (find (lambda (_kwarg7344_)
                                               (eq? _key7341_
                                                    (car _kwarg7344_)))
                                             _kwargs7169_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; duplicate keyword argument"
                                        _stx4655_
                                        _hd7160_
                                        _key7341_)
                                       (let* ((___stx3798837989_ _L7326_)
                                              (_g73487363_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx3798837989_))))
                                         (let ((___kont3799137992_
                                                (lambda (_L7401_ _L7403_)
                                                  (_lp7163_
                                                   _L7324_
                                                   _kwvar7168_
                                                   (cons (list _key7341_
                                                               (_generate-bind4664_
                                                                _L7403_)
                                                               _L7401_)
                                                         _kwargs7169_)
                                                   _args7170_)))
                                               (___kont3799337994_
                                                (lambda ()
                                                  (_lp7163_
                                                   _L7324_
                                                   _kwvar7168_
                                                   (cons (list _key7341_
                                                               (_generate-bind4664_
                                                                _L7326_)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _L7327_ '()))))
                 _kwargs7169_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _args7170_))))
                                           (if (gx#stx-pair? ___stx3798837989_)
                                               (let ((_e73547381_
                                                      (gx#syntax-e
                                                       ___stx3798837989_)))
                                                 (let ((_tl73527388_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e73547381_)))
                                                       (_hd73537385_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e73547381_))))
                                                   (if (gx#stx-pair?
                                                        _tl73527388_)
                                                       (let ((_e73577391_
                                                              (gx#syntax-e
                                                               _tl73527388_)))
                                                         (let ((_tl73557398_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e73577391_)))
                       (_hd73567395_
                        (let () (declare (not safe)) (##car _e73577391_))))
                   (if (gx#stx-null? _tl73557398_)
                       (___kont3799137992_ _hd73567395_ _hd73537385_)
                       (___kont3799337994_))))
               (___kont3799337994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3799337994_))))))))
                              (___kont3801738018_
                               (lambda (_L7281_ _L7283_)
                                 (if _kwvar7168_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; duplicate #!key argument"
                                      _stx4655_
                                      _hd7160_
                                      _L7283_)
                                     (_lp7163_
                                      _L7281_
                                      (_generate-bind4664_ _L7283_)
                                      _kwargs7169_
                                      _args7170_))))
                              (___kont3801938020_
                               (lambda (_L7233_ _L7235_)
                                 (_lp7163_
                                  _L7233_
                                  _kwvar7168_
                                  _kwargs7169_
                                  (cons _L7235_ _args7170_))))
                              (___kont3802138022_
                               (lambda ()
                                 (values _kwvar7168_
                                         (reverse _kwargs7169_)
                                         (foldl cons _rest7166_ _args7170_)))))
                          (let ((___match3803538036_
                                 (lambda (_e71827304_
                                          _hd71817308_
                                          _tl71807311_
                                          _e71857314_
                                          _hd71847318_
                                          _tl71837321_)
                                   (let ((_L7324_ _tl71837321_)
                                         (_L7326_ _hd71847318_)
                                         (_L7327_ _hd71817308_))
                                     (if (gx#stx-keyword? _L7327_)
                                         (___kont3801538016_
                                          _L7324_
                                          _L7326_
                                          _L7327_)
                                         (if (gx#stx-datum? _hd71817308_)
                                             (let ((_e71917267_
                                                    (gx#stx-e _hd71817308_)))
                                               (if (equal? _e71917267_ '#!key)
                                                   (___kont3801738018_
                                                    _tl71837321_
                                                    _hd71847318_)
                                                   (___kont3801938020_
                                                    _tl71807311_
                                                    _hd71817308_)))
                                             (___kont3801938020_
                                              _tl71807311_
                                              _hd71817308_)))))))
                            (if (gx#stx-pair? ___stx3801238013_)
                                (let ((_e71827304_
                                       (gx#syntax-e ___stx3801238013_)))
                                  (let ((_tl71807311_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e71827304_)))
                                        (_hd71817308_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e71827304_))))
                                    (if (gx#stx-pair? _tl71807311_)
                                        (let ((_e71857314_
                                               (gx#syntax-e _tl71807311_)))
                                          (let ((_tl71837321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e71857314_)))
                                                (_hd71847318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e71857314_))))
                                            (___match3803538036_
                                             _e71827304_
                                             _hd71817308_
                                             _tl71807311_
                                             _e71857314_
                                             _hd71847318_
                                             _tl71837321_)))
                                        (if (gx#stx-datum? _hd71817308_)
                                            (let ((_e71917267_
                                                   (gx#stx-e _hd71817308_)))
                                              (___kont3801938020_
                                               _tl71807311_
                                               _hd71817308_))
                                            (___kont3801938020_
                                             _tl71807311_
                                             _hd71817308_)))))
                                (___kont3802138022_))))))))
                 (_generate-bind4664_
                  (lambda (_e7157_)
                    (if (gx#underscore? _e7157_)
                        (gx#genident _e7157_)
                        _e7157_)))
                 (_check-duplicate-bindings4665_
                  (lambda (_hd6854_)
                    (letrec ((_cons-id6857_
                              (lambda (_id7153_ _ids7155_)
                                (if (gx#underscore? _id7153_)
                                    _ids7155_
                                    (cons _id7153_ _ids7155_)))))
                      (let _lp6860_ ((_rest6863_ _hd6854_) (_ids6865_ '()))
                        (let* ((___stx3808638087_ _rest6863_)
                               (_g68686880_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx3808638087_))))
                          (let ((___kont3808938090_
                                 (lambda (_L6908_ _L6910_)
                                   (if (gx#identifier? _L6910_)
                                       (_lp6860_
                                        _L6908_
                                        (_cons-id6857_ _L6910_ _ids6865_))
                                       (if (gx#stx-pair? _L6910_)
                                           (let* ((_g69266940_
                                                   (lambda (_g69276936_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g69276936_)))
                                                  (_g69256981_
                                                   (lambda (_g69276944_)
                                                     (if (gx#stx-pair?
                                                          _g69276944_)
                                                         (let ((_e69316947_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69276944_)))
                   (let ((_hd69306951_
                          (let () (declare (not safe)) (##car _e69316947_)))
                         (_tl69296954_
                          (let () (declare (not safe)) (##cdr _e69316947_))))
                     (if (gx#stx-pair? _tl69296954_)
                         (let ((_e69346957_ (gx#syntax-e _tl69296954_)))
                           (let ((_hd69336961_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e69346957_)))
                                 (_tl69326964_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e69346957_))))
                             (if (gx#stx-null? _tl69326964_)
                                 ((lambda (_L6967_)
                                    (_lp6860_
                                     _L6908_
                                     (_cons-id6857_ _L6967_ _ids6865_)))
                                  _hd69306951_)
                                 (_g69266940_ _g69276944_))))
                         (_g69266940_ _g69276944_))))
                 (_g69266940_ _g69276944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g69256981_ _L6910_))
                                           (if (gx#stx-keyword? _L6910_)
                                               (let* ((_g69856997_
                                                       (lambda (_g69866993_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g69866993_)))
                                                      (_g69847099_
                                                       (lambda (_g69867001_)
                                                         (if (gx#stx-pair?
                                                              _g69867001_)
                                                             (let ((_e69917004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g69867001_)))
                       (let ((_hd69907008_
                              (let ()
                                (declare (not safe))
                                (##car _e69917004_)))
                             (_tl69897011_
                              (let ()
                                (declare (not safe))
                                (##cdr _e69917004_))))
                         ((lambda (_L7014_ _L7016_)
                            (let* ((___stx3806238063_ _L7016_)
                                   (_g70287042_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx3806238063_))))
                              (let ((___kont3806538066_
                                     (lambda (_L7080_)
                                       (_lp6860_
                                        _L7014_
                                        (_cons-id6857_ _L7080_ _ids6865_))))
                                    (___kont3806738068_
                                     (lambda ()
                                       (_lp6860_
                                        _L7014_
                                        (_cons-id6857_ _L7016_ _ids6865_)))))
                                (if (gx#stx-pair? ___stx3806238063_)
                                    (let ((_e70337060_
                                           (gx#syntax-e ___stx3806238063_)))
                                      (let ((_tl70317067_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e70337060_)))
                                            (_hd70327064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e70337060_))))
                                        (if (gx#stx-pair? _tl70317067_)
                                            (let ((_e70367070_
                                                   (gx#syntax-e _tl70317067_)))
                                              (let ((_tl70347077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e70367070_)))
                                                    (_hd70357074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e70367070_))))
                                                (if (gx#stx-null? _tl70347077_)
                                                    (___kont3806538066_
                                                     _hd70327064_)
                                                    (___kont3806738068_))))
                                            (___kont3806738068_))))
                                    (___kont3806738068_)))))
                          _tl69897011_
                          _hd69907008_)))
                     (_g69856997_ _g69867001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g69847099_ _L6908_))
                                               (if (eq? (gx#stx-e _L6910_)
                                                        '#!key)
                                                   (let* ((_g71037115_
                                                           (lambda (_g71047111_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g71047111_)))
                                                          (_g71027145_
                                                           (lambda (_g71047119_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g71047119_)
                         (let ((_e71097122_ (gx#syntax-e _g71047119_)))
                           (let ((_hd71087126_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e71097122_)))
                                 (_tl71077129_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e71097122_))))
                             ((lambda (_L7132_ _L7134_)
                                (_lp6860_
                                 _L7132_
                                 (_cons-id6857_ _L7134_ _ids6865_)))
                              _tl71077129_
                              _hd71087126_)))
                         (_g71037115_ _g71047119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71027145_ _L6908_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx4655_
                                                          _rest6863_)))))))
                                (___kont3809138092_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest6863_)
                                        _ids6865_
                                        (_cons-id6857_ _rest6863_ _ids6865_))
                                    _stx4655_))))
                            (if (gx#stx-pair? ___stx3808638087_)
                                (let ((_e68746898_
                                       (gx#syntax-e ___stx3808638087_)))
                                  (let ((_tl68726905_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e68746898_)))
                                        (_hd68736902_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e68746898_))))
                                    (___kont3808938090_
                                     _tl68726905_
                                     _hd68736902_)))
                                (___kont3809138092_))))))))
                 (_generate-opt-primary4666_
                  (lambda (_pre6646_ _opt6648_ _tail6649_ _body6650_)
                    (let* ((_g66526693_
                            (lambda (_g66536689_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g66536689_)))
                           (_g66516850_
                            (lambda (_g66536697_)
                              (if (gx#stx-pair? _g66536697_)
                                  (let ((_e66606700_
                                         (gx#syntax-e _g66536697_)))
                                    (let ((_hd66596704_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66606700_)))
                                          (_tl66586707_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66606700_))))
                                      (if (gx#stx-pair/null? _hd66596704_)
                                          (let ((_g42624_
                                                 (gx#syntax-split-splice
                                                  _hd66596704_
                                                  '0)))
                                            (begin
                                              (let ((_g42625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42624_)
                                                           (##vector-length
                                                            _g42624_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42625_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42625_)))
                                              (let ((_target66616710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42624_
                                                        0)))
                                                    (_tl66636713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42624_
                                                        1))))
                                                (if (gx#stx-null? _tl66636713_)
                                                    (letrec ((_loop66646716_
                                                              (lambda (_hd66626720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre66686723_)
                        (if (gx#stx-pair? _hd66626720_)
                            (let ((_e66656726_ (gx#syntax-e _hd66626720_)))
                              (let ((_lp-hd66666730_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e66656726_)))
                                    (_lp-tl66676733_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e66656726_))))
                                (_loop66646716_
                                 _lp-tl66676733_
                                 (cons _lp-hd66666730_ _pre66686723_))))
                            (let ((_pre66696736_ (reverse _pre66686723_)))
                              (if (gx#stx-pair? _tl66586707_)
                                  (let ((_e66726740_
                                         (gx#syntax-e _tl66586707_)))
                                    (let ((_hd66716744_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66726740_)))
                                          (_tl66706747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66726740_))))
                                      (if (gx#stx-pair/null? _hd66716744_)
                                          (let ((_g42626_
                                                 (gx#syntax-split-splice
                                                  _hd66716744_
                                                  '0)))
                                            (begin
                                              (let ((_g42627_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42626_)
                                                           (##vector-length
                                                            _g42626_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42627_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42627_)))
                                              (let ((_target66736750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42626_
                                                        0)))
                                                    (_tl66756753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42626_
                                                        1))))
                                                (if (gx#stx-null? _tl66756753_)
                                                    (letrec ((_loop66766756_
                                                              (lambda (_hd66746760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt66806763_)
                        (if (gx#stx-pair? _hd66746760_)
                            (let ((_e66776766_ (gx#syntax-e _hd66746760_)))
                              (let ((_lp-hd66786770_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e66776766_)))
                                    (_lp-tl66796773_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e66776766_))))
                                (_loop66766756_
                                 _lp-tl66796773_
                                 (cons _lp-hd66786770_ _opt66806763_))))
                            (let ((_opt66816776_ (reverse _opt66806763_)))
                              (if (gx#stx-pair? _tl66706747_)
                                  (let ((_e66846780_
                                         (gx#syntax-e _tl66706747_)))
                                    (let ((_hd66836784_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66846780_)))
                                          (_tl66826787_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66846780_))))
                                      (if (gx#stx-pair? _tl66826787_)
                                          (let ((_e66876790_
                                                 (gx#syntax-e _tl66826787_)))
                                            (let ((_hd66866794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e66876790_)))
                                                  (_tl66856797_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e66876790_))))
                                              (if (gx#stx-null? _tl66856797_)
                                                  ((lambda (_L6800_
                                                            _L6802_
                                                            _L6803_
                                                            _L6804_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_g68336838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g68346841_)
                                    (cons _g68336838_ _g68346841_))
                                  (foldr (lambda (_g68356844_ _g68366847_)
                                           (cons _g68356844_ _g68366847_))
                                         _L6802_
                                         _L6803_)
                                  _L6804_)
                           _L6800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd66866794_
                                                   _hd66836784_
                                                   _opt66816776_
                                                   _pre66696736_)
                                                  (_g66526693_ _g66536697_))))
                                          (_g66526693_ _g66536697_))))
                                  (_g66526693_ _g66536697_)))))))
              (_loop66766756_ _target66736750_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66526693_
                                                     _g66536697_)))))
                                          (_g66526693_ _g66536697_))))
                                  (_g66526693_ _g66536697_)))))))
              (_loop66646716_ _target66616710_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66526693_
                                                     _g66536697_)))))
                                          (_g66526693_ _g66536697_))))
                                  (_g66526693_ _g66536697_)))))
                      (_g66516850_
                       (list _pre6646_
                             (map car _opt6648_)
                             _tail6649_
                             _body6650_)))))
                 (_generate-opt-dispatch4667_
                  (lambda (_primary6640_ _pre6642_ _opt6643_ _tail6644_)
                    (cons (list _pre6642_
                                (_generate-opt-clause4669_
                                 _primary6640_
                                 _pre6642_
                                 _opt6643_))
                          (_generate-opt-dispatch*4668_
                           _primary6640_
                           _pre6642_
                           _opt6643_
                           _tail6644_))))
                 (_generate-opt-dispatch*4668_
                  (lambda (_primary6197_ _pre6199_ _opt6200_ _tail6201_)
                    (let _recur6203_ ((_opt-rest6206_ _opt6200_)
                                      (_right6208_ '()))
                      (if (pair? _opt-rest6206_)
                          (let* ((_hd6210_ (caar _opt-rest6206_))
                                 (_rest6213_ (cdr _opt-rest6206_))
                                 (_right*6216_ (cons _hd6210_ _right6208_))
                                 (_g62196236_
                                  (lambda (_g62206232_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g62206232_)))
                                 (_g62186419_
                                  (lambda (_g62206240_)
                                    (if (gx#stx-pair/null? _g62206240_)
                                        (let ((_g42632_
                                               (gx#syntax-split-splice
                                                _g62206240_
                                                '0)))
                                          (begin
                                            (let ((_g42633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g42632_)
                                                         (##vector-length
                                                          _g42632_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g42633_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g42633_)))
                                            (let ((_target62226243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42632_
                                                      0)))
                                                  (_tl62246246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42632_
                                                      1))))
                                              (if (gx#stx-null? _tl62246246_)
                                                  (letrec ((_loop62256249_
                                                            (lambda (_hd62236253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind62296256_)
                      (if (gx#stx-pair? _hd62236253_)
                          (let ((_e62266259_ (gx#syntax-e _hd62236253_)))
                            (let ((_lp-hd62276263_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e62266259_)))
                                  (_lp-tl62286266_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e62266259_))))
                              (_loop62256249_
                               _lp-tl62286266_
                               (cons _lp-hd62276263_ _pre-bind62296256_))))
                          (let ((_pre-bind62306269_
                                 (reverse _pre-bind62296256_)))
                            ((lambda (_L6273_)
                               (let ()
                                 (let* ((_g62946311_
                                         (lambda (_g62956307_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g62956307_)))
                                        (_g62936415_
                                         (lambda (_g62956315_)
                                           (if (gx#stx-pair/null? _g62956315_)
                                               (let ((_g42634_
                                                      (gx#syntax-split-splice
                                                       _g62956315_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42635_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42634_)
                        (##vector-length _g42634_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42635_ 2)))
                 (error "Context expects 2 values" _g42635_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target62976318_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42634_
                                                             0)))
                                                         (_tl62996321_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42634_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl62996321_)
                                                         (letrec ((_loop63006324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd62986328_ _opt-bind63046331_)
                             (if (gx#stx-pair? _hd62986328_)
                                 (let ((_e63016334_
                                        (gx#syntax-e _hd62986328_)))
                                   (let ((_lp-hd63026338_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e63016334_)))
                                         (_lp-tl63036341_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e63016334_))))
                                     (_loop63006324_
                                      _lp-tl63036341_
                                      (cons _lp-hd63026338_
                                            _opt-bind63046331_))))
                                 (let ((_opt-bind63056344_
                                        (reverse _opt-bind63046331_)))
                                   ((lambda (_L6348_)
                                      (let ()
                                        (let* ((_g63656373_
                                                (lambda (_g63666369_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g63666369_)))
                                               (_g63646411_
                                                (lambda (_g63666377_)
                                                  ((lambda (_L6380_)
                                                     (let ()
                                                       (let ()
                                                         (cons (list (foldr (lambda (_g63946399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _g63956402_)
                                      (cons _g63946399_ _g63956402_))
                                    (foldr (lambda (_g63966405_ _g63976408_)
                                             (cons _g63966405_ _g63976408_))
                                           (cons _L6380_ '())
                                           _L6348_)
                                    _L6273_)
                             (_generate-opt-clause4669_
                              _primary6197_
                              (foldr cons (reverse _right*6216_) _pre6199_)
                              _rest6213_))
                       (_recur6203_ _rest6213_ _right*6216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g63666377_))))
                                          (_g63646411_ _hd6210_))))
                                    _opt-bind63056344_))))))
                   (_loop63006324_ _target62976318_ '()))
                 (_g62946311_ _g62956315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g62946311_ _g62956315_)))))
                                   (_g62936415_ (reverse _right6208_)))))
                             _pre-bind62306269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop62256249_
                                                     _target62226243_
                                                     '()))
                                                  (_g62196236_ _g62206240_)))))
                                        (_g62196236_ _g62206240_)))))
                            (_g62186419_ _pre6199_))
                          (if (gx#stx-null? _tail6201_)
                              '()
                              (let* ((_g64236464_
                                      (lambda (_g64246460_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g64246460_)))
                                     (_g64226636_
                                      (lambda (_g64246468_)
                                        (if (gx#stx-pair? _g64246468_)
                                            (let ((_e64316471_
                                                   (gx#syntax-e _g64246468_)))
                                              (let ((_hd64306475_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64316471_)))
                                                    (_tl64296478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64316471_))))
                                                (if (gx#stx-pair/null?
                                                     _hd64306475_)
                                                    (let ((_g42628_
                                                           (gx#syntax-split-splice
                                                            _hd64306475_
                                                            '0)))
                                                      (begin
                                                        (let ((_g42629_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g42628_)
                             (##vector-length _g42628_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g42629_ 2)))
                      (error "Context expects 2 values" _g42629_)))
                (let ((_target64326481_
                       (let () (declare (not safe)) (##vector-ref _g42628_ 0)))
                      (_tl64346484_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g42628_ 1))))
                  (if (gx#stx-null? _tl64346484_)
                      (letrec ((_loop64356487_
                                (lambda (_hd64336491_ _pre64396494_)
                                  (if (gx#stx-pair? _hd64336491_)
                                      (let ((_e64366497_
                                             (gx#syntax-e _hd64336491_)))
                                        (let ((_lp-hd64376501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e64366497_)))
                                              (_lp-tl64386504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e64366497_))))
                                          (_loop64356487_
                                           _lp-tl64386504_
                                           (cons _lp-hd64376501_
                                                 _pre64396494_))))
                                      (let ((_pre64406507_
                                             (reverse _pre64396494_)))
                                        (if (gx#stx-pair? _tl64296478_)
                                            (let ((_e64436511_
                                                   (gx#syntax-e _tl64296478_)))
                                              (let ((_hd64426515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64436511_)))
                                                    (_tl64416518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64436511_))))
                                                (if (gx#stx-pair/null?
                                                     _hd64426515_)
                                                    (let ((_g42630_
                                                           (gx#syntax-split-splice
                                                            _hd64426515_
                                                            '0)))
                                                      (begin
                                                        (let ((_g42631_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g42630_)
                             (##vector-length _g42630_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g42631_ 2)))
                      (error "Context expects 2 values" _g42631_)))
                (let ((_target64446521_
                       (let () (declare (not safe)) (##vector-ref _g42630_ 0)))
                      (_tl64466524_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g42630_ 1))))
                  (if (gx#stx-null? _tl64466524_)
                      (letrec ((_loop64476527_
                                (lambda (_hd64456531_ _opt64516534_)
                                  (if (gx#stx-pair? _hd64456531_)
                                      (let ((_e64486537_
                                             (gx#syntax-e _hd64456531_)))
                                        (let ((_lp-hd64496541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e64486537_)))
                                              (_lp-tl64506544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e64486537_))))
                                          (_loop64476527_
                                           _lp-tl64506544_
                                           (cons _lp-hd64496541_
                                                 _opt64516534_))))
                                      (let ((_opt64526547_
                                             (reverse _opt64516534_)))
                                        (if (gx#stx-pair? _tl64416518_)
                                            (let ((_e64556551_
                                                   (gx#syntax-e _tl64416518_)))
                                              (let ((_hd64546555_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e64556551_)))
                                                    (_tl64536558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e64556551_))))
                                                (if (gx#stx-pair? _tl64536558_)
                                                    (let ((_e64586561_
                                                           (gx#syntax-e
                                                            _tl64536558_)))
                                                      (let ((_hd64576565_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e64586561_)))
                    (_tl64566568_
                     (let () (declare (not safe)) (##cdr _e64586561_))))
                (if (gx#stx-null? _tl64566568_)
                    ((lambda (_L6571_ _L6573_ _L6574_ _L6575_)
                       (let ()
                         (list (list (foldr (lambda (_g66036608_ _g66046611_)
                                              (cons _g66036608_ _g66046611_))
                                            (foldr (lambda (_g66056614_
                                                            _g66066617_)
                                                     (cons _g66056614_
                                                           _g66066617_))
                                                   _L6573_
                                                   _L6574_)
                                            _L6575_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'apply)
                                            (cons _L6571_
                                                  (foldr (lambda (_g66196624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g66206627_)
                   (cons _g66196624_ _g66206627_))
                 (foldr (lambda (_g66216630_ _g66226633_)
                          (cons _g66216630_ _g66226633_))
                        (cons _L6573_ '())
                        _L6574_)
                 _L6575_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _stx4655_))))))
                     _hd64576565_
                     _hd64546555_
                     _opt64526547_
                     _pre64406507_)
                    (_g64236464_ _g64246468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64236464_
                                                     _g64246468_))))
                                            (_g64236464_ _g64246468_)))))))
                        (_loop64476527_ _target64446521_ '()))
                      (_g64236464_ _g64246468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64236464_
                                                     _g64246468_))))
                                            (_g64236464_ _g64246468_)))))))
                        (_loop64356487_ _target64326481_ '()))
                      (_g64236464_ _g64246468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64236464_
                                                     _g64246468_))))
                                            (_g64236464_ _g64246468_)))))
                                (_g64226636_
                                 (list _pre6199_
                                       (reverse _right6208_)
                                       _tail6201_
                                       _primary6197_))))))))
                 (_generate-opt-clause4669_
                  (lambda (_primary5895_ _pre5897_ _opt5898_)
                    (let _recur5900_ ((_opt-rest5903_ _opt5898_)
                                      (_right5905_ '()))
                      (if (pair? _opt-rest5903_)
                          (let* ((_hd5907_ (car _opt-rest5903_))
                                 (_rest5910_ (cdr _opt-rest5903_))
                                 (_g59135921_
                                  (lambda (_g59145917_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g59145917_)))
                                 (_g59126010_
                                  (lambda (_g59145925_)
                                    ((lambda (_L5928_)
                                       (let ()
                                         (let* ((_g59445952_
                                                 (lambda (_g59455948_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g59455948_)))
                                                (_g59436006_
                                                 (lambda (_g59455956_)
                                                   ((lambda (_L5959_)
                                                      (let ()
                                                        (let* ((_g59725980_
                                                                (lambda (_g59735976_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g59735976_)))
                       (_g59716002_
                        (lambda (_g59735984_)
                          ((lambda (_L5987_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L5928_ '())
                                                         (cons _L5959_ '()))
                                                   '())
                                             (cons _L5987_ '()))))))
                           _g59735984_))))
                  (_g59716002_
                   (_recur5900_ _rest5910_ (cons _L5928_ _right5905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g59455956_))))
                                           (_g59436006_ (cdr _hd5907_)))))
                                     _g59145925_))))
                            (_g59126010_ (car _hd5907_)))
                          (let* ((_g60146051_
                                  (lambda (_g60156047_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g60156047_)))
                                 (_g60136193_
                                  (lambda (_g60156055_)
                                    (if (gx#stx-pair? _g60156055_)
                                        (let ((_e60216058_
                                               (gx#syntax-e _g60156055_)))
                                          (let ((_hd60206062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60216058_)))
                                                (_tl60196065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60216058_))))
                                            (if (gx#stx-pair/null?
                                                 _hd60206062_)
                                                (let ((_g42636_
                                                       (gx#syntax-split-splice
                                                        _hd60206062_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42636_)
                         (##vector-length _g42636_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42637_ 2)))
                  (error "Context expects 2 values" _g42637_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target60226068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42636_
                                                              0)))
                                                          (_tl60246071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42636_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl60246071_)
                                                          (letrec ((_loop60256074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd60236078_ _pre60296081_)
                              (if (gx#stx-pair? _hd60236078_)
                                  (let ((_e60266084_
                                         (gx#syntax-e _hd60236078_)))
                                    (let ((_lp-hd60276088_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60266084_)))
                                          (_lp-tl60286091_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60266084_))))
                                      (_loop60256074_
                                       _lp-tl60286091_
                                       (cons _lp-hd60276088_ _pre60296081_))))
                                  (let ((_pre60306094_
                                         (reverse _pre60296081_)))
                                    (if (gx#stx-pair? _tl60196065_)
                                        (let ((_e60336098_
                                               (gx#syntax-e _tl60196065_)))
                                          (let ((_hd60326102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60336098_)))
                                                (_tl60316105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60336098_))))
                                            (if (gx#stx-pair/null?
                                                 _hd60326102_)
                                                (let ((_g42638_
                                                       (gx#syntax-split-splice
                                                        _hd60326102_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42639_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42638_)
                         (##vector-length _g42638_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42639_ 2)))
                  (error "Context expects 2 values" _g42639_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target60346108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42638_
                                                              0)))
                                                          (_tl60366111_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42638_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl60366111_)
                                                          (letrec ((_loop60376114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd60356118_ _opt60416121_)
                              (if (gx#stx-pair? _hd60356118_)
                                  (let ((_e60386124_
                                         (gx#syntax-e _hd60356118_)))
                                    (let ((_lp-hd60396128_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60386124_)))
                                          (_lp-tl60406131_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60386124_))))
                                      (_loop60376114_
                                       _lp-tl60406131_
                                       (cons _lp-hd60396128_ _opt60416121_))))
                                  (let ((_opt60426134_
                                         (reverse _opt60416121_)))
                                    (if (gx#stx-pair? _tl60316105_)
                                        (let ((_e60456138_
                                               (gx#syntax-e _tl60316105_)))
                                          (let ((_hd60446142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60456138_)))
                                                (_tl60436145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60456138_))))
                                            (if (gx#stx-null? _tl60436145_)
                                                ((lambda (_L6148_
                                                          _L6150_
                                                          _L6151_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (cons _L6148_
                                                            (foldr (lambda (_g61766181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g61776184_)
                             (cons _g61766181_ _g61776184_))
                           (foldr (lambda (_g61786187_ _g61796190_)
                                    (cons _g61786187_ _g61796190_))
                                  '()
                                  _L6150_)
                           _L6151_))
              (gx#stx-source _stx4655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd60446142_
                                                 _opt60426134_
                                                 _pre60306094_)
                                                (_g60146051_ _g60156055_))))
                                        (_g60146051_ _g60156055_)))))))
                    (_loop60376114_ _target60346108_ '()))
                  (_g60146051_ _g60156055_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g60146051_ _g60156055_))))
                                        (_g60146051_ _g60156055_)))))))
                    (_loop60256074_ _target60226068_ '()))
                  (_g60146051_ _g60156055_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g60146051_ _g60156055_))))
                                        (_g60146051_ _g60156055_)))))
                            (_g60136193_
                             (list _pre5897_
                                   (reverse _right5905_)
                                   _primary5895_)))))))
                 (_generate-kw-primary4670_
                  (lambda (_key5271_ _kwargs5273_ _args5274_ _body5275_)
                    (letrec ((_make-body5277_
                              (lambda (_kwargs5764_ _kwvals5766_)
                                (if (pair? _kwargs5764_)
                                    (let* ((_kwarg5768_ (car _kwargs5764_))
                                           (_var5771_ (cadr _kwarg5768_))
                                           (_default5774_ (caddr _kwarg5768_))
                                           (_kwval5777_ (car _kwvals5766_))
                                           (_rest-kwargs5780_
                                            (cdr _kwargs5764_))
                                           (_rest-kwvals5783_
                                            (cdr _kwvals5766_)))
                                      (let* ((_g57885811_
                                              (lambda (_g57895807_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g57895807_)))
                                             (_g57875891_
                                              (lambda (_g57895815_)
                                                (if (gx#stx-pair? _g57895815_)
                                                    (let ((_e57965818_
                                                           (gx#syntax-e
                                                            _g57895815_)))
                                                      (let ((_hd57955822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e57965818_)))
                    (_tl57945825_
                     (let () (declare (not safe)) (##cdr _e57965818_))))
                (if (gx#stx-pair? _tl57945825_)
                    (let ((_e57995828_ (gx#syntax-e _tl57945825_)))
                      (let ((_hd57985832_
                             (let () (declare (not safe)) (##car _e57995828_)))
                            (_tl57975835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e57995828_))))
                        (if (gx#stx-pair? _tl57975835_)
                            (let ((_e58025838_ (gx#syntax-e _tl57975835_)))
                              (let ((_hd58015842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e58025838_)))
                                    (_tl58005845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e58025838_))))
                                (if (gx#stx-pair? _tl58005845_)
                                    (let ((_e58055848_
                                           (gx#syntax-e _tl58005845_)))
                                      (let ((_hd58045852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e58055848_)))
                                            (_tl58035855_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e58055848_))))
                                        (if (gx#stx-null? _tl58035855_)
                                            ((lambda (_L5858_
                                                      _L5860_
                                                      _L5861_
                                                      _L5862_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L5862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _L5861_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _L5860_
                                                         (cons _L5861_ '()))))
                                       '()))
                           '())
                     (cons _L5858_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd58045852_
                                             _hd58015842_
                                             _hd57985832_
                                             _hd57955822_)
                                            (_g57885811_ _g57895815_))))
                                    (_g57885811_ _g57895815_))))
                            (_g57885811_ _g57895815_))))
                    (_g57885811_ _g57895815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57885811_
                                                     _g57895815_)))))
                                        (_g57875891_
                                         (list _var5771_
                                               _kwval5777_
                                               _default5774_
                                               (_make-body5277_
                                                _rest-kwargs5780_
                                                _rest-kwvals5783_)))))
                                    (cons 'begin _body5275_))))
                             (_make-main5279_
                              (lambda ()
                                (let* ((_g55725580_
                                        (lambda (_g55735576_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g55735576_)))
                                       (_g55715756_
                                        (lambda (_g55735584_)
                                          ((lambda (_L5587_)
                                             (let ()
                                               (let* ((_g55995616_
                                                       (lambda (_g56005612_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g56005612_)))
                                                      (_g55985752_
                                                       (lambda (_g56005620_)
                                                         (if (gx#stx-pair/null?
                                                              _g56005620_)
                                                             (let ((_g42640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g56005620_ '0)))
                       (begin
                         (let ((_g42641_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42640_)
                                      (##vector-length _g42640_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42641_ 2)))
                               (error "Context expects 2 values" _g42641_)))
                         (let ((_target56025623_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42640_ 0)))
                               (_tl56045626_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42640_ 1))))
                           (if (gx#stx-null? _tl56045626_)
                               (letrec ((_loop56055629_
                                         (lambda (_hd56035633_ _kwval56095636_)
                                           (if (gx#stx-pair? _hd56035633_)
                                               (let ((_e56065639_
                                                      (gx#syntax-e
                                                       _hd56035633_)))
                                                 (let ((_lp-hd56075643_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e56065639_)))
                                                       (_lp-tl56085646_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e56065639_))))
                                                   (_loop56055629_
                                                    _lp-tl56085646_
                                                    (cons _lp-hd56075643_
                                                          _kwval56095636_))))
                                               (let ((_kwval56105649_
                                                      (reverse _kwval56095636_)))
                                                 ((lambda (_L5653_)
                                                    (let ()
                                                      (let* ((_g56705678_
                                                              (lambda (_g56715674_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g56715674_)))
                     (_g56695748_
                      (lambda (_g56715682_)
                        ((lambda (_L5685_)
                           (let ()
                             (let* ((_g56985706_
                                     (lambda (_g56995702_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g56995702_)))
                                    (_g56975736_
                                     (lambda (_g56995710_)
                                       ((lambda (_L5713_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L5587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_g57275730_ _g57285733_)
                                  (cons _g57275730_ _g57285733_))
                                _L5685_
                                _L5653_))
                   (cons _L5713_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _stx4655_)))))
                                        _g56995710_))))
                               (_g56975736_
                                (_make-body5277_
                                 _kwargs5273_
                                 (foldr (lambda (_g57395742_ _g57405745_)
                                          (cons _g57395742_ _g57405745_))
                                        '()
                                        _L5653_))))))
                         _g56715682_))))
                (_g56695748_ _args5274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval56105649_))))))
                                 (_loop56055629_ _target56025623_ '()))
                               (_g55995616_ _g56005620_)))))
                     (_g55995616_ _g56005620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g55985752_
                                                  (gx#gentemps
                                                   (map cadr _kwargs5273_))))))
                                           _g55735584_))))
                                  (_g55715756_
                                   (let ((_$e5760_ _key5271_))
                                     (if _$e5760_ _$e5760_ '_))))))
                             (_make-dispatch5280_
                              (lambda (_main5380_)
                                (let* ((_g53835391_
                                        (lambda (_g53845387_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g53845387_)))
                                       (_g53825562_
                                        (lambda (_g53845395_)
                                          ((lambda (_L5398_)
                                             (let ()
                                               (let* ((_g54105427_
                                                       (lambda (_g54115423_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g54115423_)))
                                                      (_g54095523_
                                                       (lambda (_g54115431_)
                                                         (if (gx#stx-pair/null?
                                                              _g54115431_)
                                                             (let ((_g42642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g54115431_ '0)))
                       (begin
                         (let ((_g42643_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42642_)
                                      (##vector-length _g42642_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42643_ 2)))
                               (error "Context expects 2 values" _g42643_)))
                         (let ((_target54135434_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42642_ 0)))
                               (_tl54155437_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42642_ 1))))
                           (if (gx#stx-null? _tl54155437_)
                               (letrec ((_loop54165440_
                                         (lambda (_hd54145444_
                                                  _get-kw54205447_)
                                           (if (gx#stx-pair? _hd54145444_)
                                               (let ((_e54175450_
                                                      (gx#syntax-e
                                                       _hd54145444_)))
                                                 (let ((_lp-hd54185454_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e54175450_)))
                                                       (_lp-tl54195457_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e54175450_))))
                                                   (_loop54165440_
                                                    _lp-tl54195457_
                                                    (cons _lp-hd54185454_
                                                          _get-kw54205447_))))
                                               (let ((_get-kw54215460_
                                                      (reverse _get-kw54205447_)))
                                                 ((lambda (_L5464_)
                                                    (let ()
                                                      (let* ((_g54815489_
                                                              (lambda (_g54825485_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g54825485_)))
                     (_g54805519_
                      (lambda (_g54825493_)
                        ((lambda (_L5496_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (cons _L5398_
                                                  (gx#datum->syntax '#f 'args))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons _L5496_
                                                              (cons _L5398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g55105513_ _g55115516_)
                                     (cons _g55105513_ _g55115516_))
                                   (cons (gx#datum->syntax '#f 'args) '())
                                   _L5464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (gx#stx-source _stx4655_)))))
                         _g54825493_))))
                (_g54805519_ _main5380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw54215460_))))))
                                 (_loop54165440_ _target54135434_ '()))
                               (_g54105427_ _g54115431_)))))
                     (_g54105427_ _g54115431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g54095523_
                                                  (map (lambda (_kwarg5527_)
                                                         (let* ((_g55305538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g55315534_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g55315534_)))
                        (_g55295558_
                         (lambda (_g55315542_)
                           ((lambda (_L5545_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'hash-ref)
                                      (cons _L5398_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L5545_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _g55315542_))))
                   (_g55295558_ (car _kwarg5527_))))
               _kwargs5273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g53845395_))))
                                  (_g53825562_
                                   (let ((_$e5566_ _key5271_))
                                     (if _$e5566_
                                         _$e5566_
                                         (gx#genident 'keys))))))))
                      (let* ((_g52825290_
                              (lambda (_g52835286_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g52835286_)))
                             (_g52815376_
                              (lambda (_g52835294_)
                                ((lambda (_L5297_)
                                   (let ()
                                     (let* ((_g53105318_
                                             (lambda (_g53115314_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g53115314_)))
                                            (_g53095372_
                                             (lambda (_g53115322_)
                                               ((lambda (_L5325_)
                                                  (let ()
                                                    (let* ((_g53385346_
                                                            (lambda (_g53395342_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g53395342_)))
                                                           (_g53375368_
                                                            (lambda (_g53395350_)
                                                              ((lambda (_L5353_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (cons (gx#datum->syntax '#f 'let-values)
                                   (cons (cons (cons (cons _L5297_ '())
                                                     (cons _L5353_ '()))
                                               '())
                                         (cons _L5325_ '()))))))
                       _g53395350_))))
              (_g53375368_ (_make-main5279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g53115322_))))
                                       (_g53095372_
                                        (_make-dispatch5280_ _L5297_)))))
                                 _g52835294_))))
                        (_g52815376_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch4671_
                  (lambda (_primary5184_ _kwargs5186_ _strict?5187_)
                    (let* ((_g51895208_
                            (lambda (_g51905204_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g51905204_)))
                           (_g51885267_
                            (lambda (_g51905212_)
                              (if (gx#stx-pair? _g51905212_)
                                  (let ((_e51965215_
                                         (gx#syntax-e _g51905212_)))
                                    (let ((_hd51955219_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e51965215_)))
                                          (_tl51945222_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e51965215_))))
                                      (if (gx#stx-pair? _tl51945222_)
                                          (let ((_e51995225_
                                                 (gx#syntax-e _tl51945222_)))
                                            (let ((_hd51985229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e51995225_)))
                                                  (_tl51975232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e51995225_))))
                                              (if (gx#stx-pair? _tl51975232_)
                                                  (let ((_e52025235_
                                                         (gx#syntax-e
                                                          _tl51975232_)))
                                                    (let ((_hd52015239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e52025235_)))
                                                          (_tl52005242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e52025235_))))
                                                      (if (gx#stx-null?
                                                           _tl52005242_)
                                                          ((lambda (_L5245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5247_
                            _L5248_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5245_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5248_ '()))
                   (cons _L5247_ (cons _L5245_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd52015239_
                   _hd51985229_
                   _hd51955219_)
                  (_g51895208_ _g51905212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g51895208_ _g51905212_))))
                                          (_g51895208_ _g51905212_))))
                                  (_g51895208_ _g51905212_)))))
                      (_g51885267_
                       (list (if _strict?5187_
                                 (_generate-kw-table4672_
                                  (map car _kwargs5186_))
                                 '#f)
                             _primary5184_
                             (gx#genident 'args))))))
                 (_generate-kw-table4672_
                  (lambda (_kws5158_)
                    (let _rehash5161_ ((_pht5164_
                                        (make-vector (length _kws5158_) '#f)))
                      (let _lp5167_ ((_rest5170_ _kws5158_))
                        (if (pair? _rest5170_)
                            (let* ((_key5173_ (car _rest5170_))
                                   (_rest5176_ (cdr _rest5170_))
                                   (_pos5179_
                                    (fxmodulo
                                     (keyword-hash _key5173_)
                                     (vector-length _pht5164_))))
                              (if (vector-ref _pht5164_ _pos5179_)
                                  (if (fx< (vector-length _pht5164_) '8192)
                                      (_rehash5161_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5164_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5158_))
                                  (begin
                                    (vector-set! _pht5164_ _pos5179_ _key5173_)
                                    (_lp5167_ _rest5176_))))
                            _pht5164_))))))
          (let* ((___stx3810238103_ _stx4655_)
                 (_g46764707_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3810238103_))))
            (let ((___kont3810538106_
                   (lambda (_L5139_ _L5141_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _L5141_ _L5139_))))
                  (___kont3810738108_
                   (lambda (_L4911_ _L4913_)
                     (let ((_g42644_ (_opt-lambda-split4661_ _L4913_)))
                       (begin
                         (let ((_g42645_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42644_)
                                      (##vector-length _g42644_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42645_ 3)))
                               (error "Context expects 3 values" _g42645_)))
                         (let ((_pre4926_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42644_ 0)))
                               (_opt4928_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42644_ 1)))
                               (_tail4929_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42644_ 2))))
                           (let* ((_g49314939_
                                   (lambda (_g49324935_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g49324935_)))
                                  (_g49305108_
                                   (lambda (_g49324943_)
                                     ((lambda (_L4946_)
                                        (let ()
                                          (let* ((_g49594967_
                                                  (lambda (_g49604963_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g49604963_)))
                                                 (_g49585104_
                                                  (lambda (_g49604971_)
                                                    ((lambda (_L4974_)
                                                       (let ()
                                                         (let* ((_g49875004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g49885000_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g49885000_)))
                        (_g49865100_
                         (lambda (_g49885008_)
                           (if (gx#stx-pair/null? _g49885008_)
                               (let ((_g42646_
                                      (gx#syntax-split-splice _g49885008_ '0)))
                                 (begin
                                   (let ((_g42647_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g42646_)
                                                (##vector-length _g42646_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g42647_ 2)))
                                         (error "Context expects 2 values"
                                                _g42647_)))
                                   (let ((_target49905011_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42646_ 0)))
                                         (_tl49925014_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42646_ 1))))
                                     (if (gx#stx-null? _tl49925014_)
                                         (letrec ((_loop49935017_
                                                   (lambda (_hd49915021_
                                                            _clause49975024_)
                                                     (if (gx#stx-pair?
                                                          _hd49915021_)
                                                         (let ((_e49945027_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd49915021_)))
                   (let ((_lp-hd49955031_
                          (let () (declare (not safe)) (##car _e49945027_)))
                         (_lp-tl49965034_
                          (let () (declare (not safe)) (##cdr _e49945027_))))
                     (_loop49935017_
                      _lp-tl49965034_
                      (cons _lp-hd49955031_ _clause49975024_))))
                 (let ((_clause49985037_ (reverse _clause49975024_)))
                   ((lambda (_L5041_)
                      (let ()
                        (let* ((_g50585066_
                                (lambda (_g50595062_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g50595062_)))
                               (_g50575088_
                                (lambda (_g50595070_)
                                  ((lambda (_L5073_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons (cons (cons _L4946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L4974_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L5073_ '()))))))
                                   _g50595070_))))
                          (_g50575088_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda)
                                  (foldr (lambda (_g50915094_ _g50925097_)
                                           (cons _g50915094_ _g50925097_))
                                         '()
                                         _L5041_))
                            (gx#stx-source _stx4655_))))))
                    _clause49985037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop49935017_
                                            _target49905011_
                                            '()))
                                         (_g49875004_ _g49885008_)))))
                               (_g49875004_ _g49885008_)))))
                   (_g49865100_
                    (_generate-opt-dispatch4667_
                     _L4946_
                     _pre4926_
                     _opt4928_
                     _tail4929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g49604971_))))
                                            (_g49585104_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary4666_
                                               _pre4926_
                                               _opt4928_
                                               _tail4929_
                                               _L4911_)
                                              (gx#stx-source _stx4655_))))))
                                      _g49324943_))))
                             (_g49305108_ (gx#genident 'opt-lambda))))))))
                  (___kont3810938110_
                   (lambda (_L4734_ _L4736_)
                     (let* ((_g47524759_
                             (lambda (_g47534755_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g47534755_)))
                            (_g47514880_
                             (lambda (_g47534763_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g42648_
                                           (_kw-lambda-split4663_ _L4736_)))
                                      (begin
                                        (let ((_g42649_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42648_)
                                                     (##vector-length _g42648_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42649_ 3)))
                                              (error "Context expects 3 values"
                                                     _g42649_)))
                                        (let ((_key4772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42648_ 0)))
                                              (_kwargs4774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42648_ 1)))
                                              (_args4775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42648_ 2))))
                                          (let* ((_g47774785_
                                                  (lambda (_g47784781_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g47784781_)))
                                                 (_g47764876_
                                                  (lambda (_g47784789_)
                                                    ((lambda (_L4792_)
                                                       (let ()
                                                         (let* ((_g48104818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g48114814_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g48114814_)))
                        (_g48094872_
                         (lambda (_g48114822_)
                           ((lambda (_L4825_)
                              (let ()
                                (let* ((_g48384846_
                                        (lambda (_g48394842_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g48394842_)))
                                       (_g48374868_
                                        (lambda (_g48394850_)
                                          ((lambda (_L4853_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L4792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons _L4825_ '()))
                           '())
                     (cons _L4853_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g48394850_))))
                                  (_g48374868_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch4671_
                                     _L4792_
                                     _kwargs4774_
                                     (not _key4772_))
                                    (gx#stx-source _stx4655_))))))
                            _g48114822_))))
                   (_g48094872_
                    (gx#stx-wrap-source
                     (_generate-kw-primary4670_
                      _key4772_
                      _kwargs4774_
                      _args4775_
                      _L4734_)
                     (gx#stx-source _stx4655_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g47784789_))))
                                            (_g47764876_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g47514880_
                        (_check-duplicate-bindings4665_ _L4736_))))))
              (let* ((___match3814738148_
                      (lambda (_e46984714_
                               _hd46974718_
                               _tl46964721_
                               _e47014724_
                               _hd47004728_
                               _tl46994731_)
                        (let ((_L4734_ _tl46994731_) (_L4736_ _hd47004728_))
                          (if (_kw-lambda?4662_ _L4736_)
                              (___kont3810938110_ _L4734_ _L4736_)
                              (let () (declare (not safe)) (_g46764707_))))))
                     (___match3813538136_
                      (lambda (_e46904891_
                               _hd46894895_
                               _tl46884898_
                               _e46934901_
                               _hd46924905_
                               _tl46914908_)
                        (let ((_L4911_ _tl46914908_) (_L4913_ _hd46924905_))
                          (if (_opt-lambda?4660_ _L4913_)
                              (___kont3810738108_ _L4911_ _L4913_)
                              (___match3814738148_
                               _e46904891_
                               _hd46894895_
                               _tl46884898_
                               _e46934901_
                               _hd46924905_
                               _tl46914908_)))))
                     (___match3812338124_
                      (lambda (_e46825119_
                               _hd46815123_
                               _tl46805126_
                               _e46855129_
                               _hd46845133_
                               _tl46835136_)
                        (let ((_L5139_ _tl46835136_) (_L5141_ _hd46845133_))
                          (if (_simple-lambda?4658_ _L5141_)
                              (___kont3810538106_ _L5139_ _L5141_)
                              (___match3813538136_
                               _e46825119_
                               _hd46815123_
                               _tl46805126_
                               _e46855129_
                               _hd46845133_
                               _tl46835136_))))))
                (if (gx#stx-pair? ___stx3810238103_)
                    (let ((_e46825119_ (gx#syntax-e ___stx3810238103_)))
                      (let ((_tl46805126_
                             (let () (declare (not safe)) (##cdr _e46825119_)))
                            (_hd46815123_
                             (let ()
                               (declare (not safe))
                               (##car _e46825119_))))
                        (if (gx#stx-pair? _tl46805126_)
                            (let ((_e46855129_ (gx#syntax-e _tl46805126_)))
                              (let ((_tl46835136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46855129_)))
                                    (_hd46845133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46855129_))))
                                (___match3812338124_
                                 _e46825119_
                                 _hd46815123_
                                 _tl46805126_
                                 _e46855129_
                                 _hd46845133_
                                 _tl46835136_)))
                            (let () (declare (not safe)) (_g46764707_)))))
                    (let () (declare (not safe)) (_g46764707_)))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8071_)
        (let* ((___stx3815038151_ _$stx8071_)
               (_g80778141_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3815038151_))))
          (let ((___kont3815338154_
                 (lambda (_L8371_ _L8373_ _L8374_ _L8375_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _L8375_ _L8374_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L8373_
                                                 (foldr (lambda (_g83978400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83988403_)
                  (cons _g83978400_ _g83988403_))
                '()
                _L8371_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3815738158_
                 (lambda (_L8263_ _L8265_ _L8266_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8266_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L8265_
                                                 (foldr (lambda (_g82858288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g82868291_)
                  (cons _g82858288_ _g82868291_))
                '()
                _L8263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3816138162_
                 (lambda (_L8178_ _L8180_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8180_ '()) (cons _L8178_ '()))))))
            (let* ((___match3824138242_
                    (lambda (_e81298148_
                             _hd81288152_
                             _tl81278155_
                             _e81328158_
                             _hd81318162_
                             _tl81308165_
                             _e81358168_
                             _hd81348172_
                             _tl81338175_)
                      (let ((_L8178_ _hd81348172_) (_L8180_ _hd81318162_))
                        (if (gx#identifier? _L8180_)
                            (___kont3816138162_ _L8178_ _L8180_)
                            (let () (declare (not safe)) (_g80778141_))))))
                   (___match3823338234_
                    (lambda (_e81298148_
                             _hd81288152_
                             _tl81278155_
                             _e81328158_
                             _hd81318162_
                             _tl81308165_)
                      (if (gx#stx-pair? _tl81308165_)
                          (let ((_e81358168_ (gx#syntax-e _tl81308165_)))
                            (let ((_tl81338175_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e81358168_)))
                                  (_hd81348172_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e81358168_))))
                              (if (gx#stx-null? _tl81338175_)
                                  (___match3824138242_
                                   _e81298148_
                                   _hd81288152_
                                   _tl81278155_
                                   _e81328158_
                                   _hd81318162_
                                   _tl81308165_
                                   _e81358168_
                                   _hd81348172_
                                   _tl81338175_)
                                  (let ()
                                    (declare (not safe))
                                    (_g80778141_)))))
                          (let () (declare (not safe)) (_g80778141_)))))
                   (___match3822138222_
                    (lambda (_e81098203_
                             _hd81088207_
                             _tl81078210_
                             _e81128213_
                             _hd81118217_
                             _tl81108220_
                             _e81158223_
                             _hd81148227_
                             _tl81138230_
                             ___splice3815938160_
                             _target81168233_
                             _tl81188236_)
                      (letrec ((_loop81198239_
                                (lambda (_hd81178243_ _body81238246_)
                                  (if (gx#stx-pair? _hd81178243_)
                                      (let ((_e81208249_
                                             (gx#syntax-e _hd81178243_)))
                                        (let ((_lp-tl81228256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e81208249_)))
                                              (_lp-hd81218253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e81208249_))))
                                          (_loop81198239_
                                           _lp-tl81228256_
                                           (cons _lp-hd81218253_
                                                 _body81238246_))))
                                      (let ((_body81248259_
                                             (reverse _body81238246_)))
                                        (let ((_L8263_ _body81248259_)
                                              (_L8265_ _tl81138230_)
                                              (_L8266_ _hd81148227_))
                                          (if (gx#identifier? _L8266_)
                                              (___kont3815738158_
                                               _L8263_
                                               _L8265_
                                               _L8266_)
                                              (___match3823338234_
                                               _e81098203_
                                               _hd81088207_
                                               _tl81078210_
                                               _e81128213_
                                               _hd81118217_
                                               _tl81108220_))))))))
                        (_loop81198239_ _target81168233_ '()))))
                   (___match3819538196_
                    (lambda (_e80858301_
                             _hd80848305_
                             _tl80838308_
                             _e80888311_
                             _hd80878315_
                             _tl80868318_
                             _e80918321_
                             _hd80908325_
                             _tl80898328_
                             _e80948331_
                             _hd80938335_
                             _tl80928338_
                             ___splice3815538156_
                             _target80958341_
                             _tl80978344_)
                      (letrec ((_loop80988347_
                                (lambda (_hd80968351_ _body81028354_)
                                  (if (gx#stx-pair? _hd80968351_)
                                      (let ((_e80998357_
                                             (gx#syntax-e _hd80968351_)))
                                        (let ((_lp-tl81018364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80998357_)))
                                              (_lp-hd81008361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80998357_))))
                                          (_loop80988347_
                                           _lp-tl81018364_
                                           (cons _lp-hd81008361_
                                                 _body81028354_))))
                                      (let ((_body81038367_
                                             (reverse _body81028354_)))
                                        (___kont3815338154_
                                         _body81038367_
                                         _tl80898328_
                                         _tl80928338_
                                         _hd80938335_))))))
                        (_loop80988347_ _target80958341_ '())))))
              (if (gx#stx-pair? ___stx3815038151_)
                  (let ((_e80858301_ (gx#syntax-e ___stx3815038151_)))
                    (let ((_tl80838308_
                           (let () (declare (not safe)) (##cdr _e80858301_)))
                          (_hd80848305_
                           (let () (declare (not safe)) (##car _e80858301_))))
                      (if (gx#stx-pair? _tl80838308_)
                          (let ((_e80888311_ (gx#syntax-e _tl80838308_)))
                            (let ((_tl80868318_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e80888311_)))
                                  (_hd80878315_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e80888311_))))
                              (if (gx#stx-pair? _hd80878315_)
                                  (let ((_e80918321_
                                         (gx#syntax-e _hd80878315_)))
                                    (let ((_tl80898328_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80918321_)))
                                          (_hd80908325_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80918321_))))
                                      (if (gx#stx-pair? _hd80908325_)
                                          (let ((_e80948331_
                                                 (gx#syntax-e _hd80908325_)))
                                            (let ((_tl80928338_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e80948331_)))
                                                  (_hd80938335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e80948331_))))
                                              (if (gx#stx-pair/null?
                                                   _tl80868318_)
                                                  (let ((___splice3815538156_
                                                         (gx#syntax-split-splice
                                                          _tl80868318_
                                                          '0)))
                                                    (let ((_tl80978344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3815538156_
                                                              '1)))
                                                          (_target80958341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3815538156_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl80978344_)
                                                          (___match3819538196_
                                                           _e80858301_
                                                           _hd80848305_
                                                           _tl80838308_
                                                           _e80888311_
                                                           _hd80878315_
                                                           _tl80868318_
                                                           _e80918321_
                                                           _hd80908325_
                                                           _tl80898328_
                                                           _e80948331_
                                                           _hd80938335_
                                                           _tl80928338_
                                                           ___splice3815538156_
                                                           _target80958341_
                                                           _tl80978344_)
                                                          (if (gx#stx-pair?
                                                               _tl80868318_)
                                                              (let ((_e81358168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl80868318_)))
                        (let ((_tl81338175_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e81358168_)))
                              (_hd81348172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e81358168_))))
                          (if (gx#stx-null? _tl81338175_)
                              (___match3824138242_
                               _e80858301_
                               _hd80848305_
                               _tl80838308_
                               _e80888311_
                               _hd80878315_
                               _tl80868318_
                               _e81358168_
                               _hd81348172_
                               _tl81338175_)
                              (let () (declare (not safe)) (_g80778141_)))))
                      (let () (declare (not safe)) (_g80778141_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl80868318_)
                                                      (let ((_e81358168_
                                                             (gx#syntax-e
                                                              _tl80868318_)))
                                                        (let ((_tl81338175_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e81358168_)))
                      (_hd81348172_
                       (let () (declare (not safe)) (##car _e81358168_))))
                  (if (gx#stx-null? _tl81338175_)
                      (___match3824138242_
                       _e80858301_
                       _hd80848305_
                       _tl80838308_
                       _e80888311_
                       _hd80878315_
                       _tl80868318_
                       _e81358168_
                       _hd81348172_
                       _tl81338175_)
                      (let () (declare (not safe)) (_g80778141_)))))
              (let () (declare (not safe)) (_g80778141_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null? _tl80868318_)
                                              (let ((___splice3815938160_
                                                     (gx#syntax-split-splice
                                                      _tl80868318_
                                                      '0)))
                                                (let ((_tl81188236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3815938160_
                                                          '1)))
                                                      (_target81168233_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3815938160_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl81188236_)
                                                      (___match3822138222_
                                                       _e80858301_
                                                       _hd80848305_
                                                       _tl80838308_
                                                       _e80888311_
                                                       _hd80878315_
                                                       _tl80868318_
                                                       _e80918321_
                                                       _hd80908325_
                                                       _tl80898328_
                                                       ___splice3815938160_
                                                       _target81168233_
                                                       _tl81188236_)
                                                      (if (gx#stx-pair?
                                                           _tl80868318_)
                                                          (let ((_e81358168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80868318_)))
                    (let ((_tl81338175_
                           (let () (declare (not safe)) (##cdr _e81358168_)))
                          (_hd81348172_
                           (let () (declare (not safe)) (##car _e81358168_))))
                      (if (gx#stx-null? _tl81338175_)
                          (___match3824138242_
                           _e80858301_
                           _hd80848305_
                           _tl80838308_
                           _e80888311_
                           _hd80878315_
                           _tl80868318_
                           _e81358168_
                           _hd81348172_
                           _tl81338175_)
                          (let () (declare (not safe)) (_g80778141_)))))
                  (let () (declare (not safe)) (_g80778141_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl80868318_)
                                                  (let ((_e81358168_
                                                         (gx#syntax-e
                                                          _tl80868318_)))
                                                    (let ((_tl81338175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e81358168_)))
                                                          (_hd81348172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e81358168_))))
                                                      (if (gx#stx-null?
                                                           _tl81338175_)
                                                          (___match3824138242_
                                                           _e80858301_
                                                           _hd80848305_
                                                           _tl80838308_
                                                           _e80888311_
                                                           _hd80878315_
                                                           _tl80868318_
                                                           _e81358168_
                                                           _hd81348172_
                                                           _tl81338175_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g80778141_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g80778141_)))))))
                                  (if (gx#stx-pair? _tl80868318_)
                                      (let ((_e81358168_
                                             (gx#syntax-e _tl80868318_)))
                                        (let ((_tl81338175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e81358168_)))
                                              (_hd81348172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e81358168_))))
                                          (if (gx#stx-null? _tl81338175_)
                                              (___match3824138242_
                                               _e80858301_
                                               _hd80848305_
                                               _tl80838308_
                                               _e80888311_
                                               _hd80878315_
                                               _tl80868318_
                                               _e81358168_
                                               _hd81348172_
                                               _tl81338175_)
                                              (let ()
                                                (declare (not safe))
                                                (_g80778141_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g80778141_))))))
                          (let () (declare (not safe)) (_g80778141_)))))
                  (let () (declare (not safe)) (_g80778141_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8412_)
        (let* ((_g84168440_
                (lambda (_g84178436_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g84178436_)))
               (_g84158525_
                (lambda (_g84178444_)
                  (if (gx#stx-pair? _g84178444_)
                      (let ((_e84228447_ (gx#syntax-e _g84178444_)))
                        (let ((_hd84218451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e84228447_)))
                              (_tl84208454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e84228447_))))
                          (if (gx#stx-pair? _tl84208454_)
                              (let ((_e84258457_ (gx#syntax-e _tl84208454_)))
                                (let ((_hd84248461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e84258457_)))
                                      (_tl84238464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e84258457_))))
                                  (if (gx#stx-pair/null? _tl84238464_)
                                      (let ((_g42650_
                                             (gx#syntax-split-splice
                                              _tl84238464_
                                              '0)))
                                        (begin
                                          (let ((_g42651_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42650_)
                                                       (##vector-length
                                                        _g42650_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42651_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42651_)))
                                          (let ((_target84268467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42650_ 0)))
                                                (_tl84288470_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42650_ 1))))
                                            (if (gx#stx-null? _tl84288470_)
                                                (letrec ((_loop84298473_
                                                          (lambda (_hd84278477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses84338480_)
                    (if (gx#stx-pair? _hd84278477_)
                        (let ((_e84308483_ (gx#syntax-e _hd84278477_)))
                          (let ((_lp-hd84318487_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e84308483_)))
                                (_lp-tl84328490_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e84308483_))))
                            (_loop84298473_
                             _lp-tl84328490_
                             (cons _lp-hd84318487_ _clauses84338480_))))
                        (let ((_clauses84348493_ (reverse _clauses84338480_)))
                          ((lambda (_L8497_ _L8499_)
                             (if (gx#identifier? _L8499_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _L8499_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_g85168519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g85178522_)
                          (cons _g85168519_ _g85178522_))
                        '()
                        _L8497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_g84168440_ _g84178444_)))
                           _clauses84348493_
                           _hd84248461_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop84298473_
                                                   _target84268467_
                                                   '()))
                                                (_g84168440_ _g84178444_)))))
                                      (_g84168440_ _g84178444_))))
                              (_g84168440_ _g84178444_))))
                      (_g84168440_ _g84178444_)))))
          (_g84158525_ _$stx8412_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8530_)
        (let* ((_g85348552_
                (lambda (_g85358548_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g85358548_)))
               (_g85338607_
                (lambda (_g85358556_)
                  (if (gx#stx-pair? _g85358556_)
                      (let ((_e85408559_ (gx#syntax-e _g85358556_)))
                        (let ((_hd85398563_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85408559_)))
                              (_tl85388566_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85408559_))))
                          (if (gx#stx-pair? _tl85388566_)
                              (let ((_e85438569_ (gx#syntax-e _tl85388566_)))
                                (let ((_hd85428573_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85438569_)))
                                      (_tl85418576_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85438569_))))
                                  (if (gx#stx-pair? _tl85418576_)
                                      (let ((_e85468579_
                                             (gx#syntax-e _tl85418576_)))
                                        (let ((_hd85458583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e85468579_)))
                                              (_tl85448586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e85468579_))))
                                          (if (gx#stx-null? _tl85448586_)
                                              ((lambda (_L8589_ _L8591_)
                                                 (if (gx#identifier-list?
                                                      _L8591_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8589_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85348552_
                                                      _g85358556_)))
                                               _hd85458583_
                                               _hd85428573_)
                                              (_g85348552_ _g85358556_))))
                                      (_g85348552_ _g85358556_))))
                              (_g85348552_ _g85358556_))))
                      (_g85348552_ _g85358556_)))))
          (_g85338607_ _$stx8530_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8611_)
        (let* ((_g86158639_
                (lambda (_g86168635_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g86168635_)))
               (_g86148724_
                (lambda (_g86168643_)
                  (if (gx#stx-pair? _g86168643_)
                      (let ((_e86218646_ (gx#syntax-e _g86168643_)))
                        (let ((_hd86208650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86218646_)))
                              (_tl86198653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86218646_))))
                          (if (gx#stx-pair? _tl86198653_)
                              (let ((_e86248656_ (gx#syntax-e _tl86198653_)))
                                (let ((_hd86238660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86248656_)))
                                      (_tl86228663_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86248656_))))
                                  (if (gx#stx-pair/null? _tl86228663_)
                                      (let ((_g42652_
                                             (gx#syntax-split-splice
                                              _tl86228663_
                                              '0)))
                                        (begin
                                          (let ((_g42653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42652_)
                                                       (##vector-length
                                                        _g42652_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42653_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42653_)))
                                          (let ((_target86258666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42652_ 0)))
                                                (_tl86278669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42652_ 1))))
                                            (if (gx#stx-null? _tl86278669_)
                                                (letrec ((_loop86288672_
                                                          (lambda (_hd86268676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause86328679_)
                    (if (gx#stx-pair? _hd86268676_)
                        (let ((_e86298682_ (gx#syntax-e _hd86268676_)))
                          (let ((_lp-hd86308686_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e86298682_)))
                                (_lp-tl86318689_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e86298682_))))
                            (_loop86288672_
                             _lp-tl86318689_
                             (cons _lp-hd86308686_ _clause86328679_))))
                        (let ((_clause86338692_ (reverse _clause86328679_)))
                          ((lambda (_L8696_ _L8698_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _L8698_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_g87158718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g87168721_)
                            (cons _g87158718_ _g87168721_))
                          '()
                          _L8696_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _clause86338692_
                           _hd86238660_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop86288672_
                                                   _target86258666_
                                                   '()))
                                                (_g86158639_ _g86168643_)))))
                                      (_g86158639_ _g86168643_))))
                              (_g86158639_ _g86168643_))))
                      (_g86158639_ _g86168643_)))))
          (_g86148724_ _$stx8611_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8729_)
        (letrec ((_parse-clauses8732_
                  (lambda (_e11195_ _clauses11197_)
                    (let _lp11199_ ((_rest11202_ _clauses11197_)
                                    (_datums11204_ '())
                                    (_dispatch11205_ '())
                                    (_default11206_ '#f))
                      (let* ((___stx3834038341_ _rest11202_)
                             (_g1120911221_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx3834038341_))))
                        (let ((___kont3834338344_
                               (lambda (_L11253_ _L11255_)
                                 (let* ((___stx3824438245_ _L11255_)
                                        (_g1127311346_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx3824438245_))))
                                   (let ((___kont3824738248_
                                          (lambda (_L11711_)
                                            (if (gx#stx-null? _L11253_)
                                                (let* ((_g1172611734_
                                                        (lambda (_g1172711730_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1172711730_)))
                                                       (_g1172511753_
                                                        (lambda (_g1172711738_)
                                                          ((lambda (_L11741_)
                                                             (let ()
                                                               (_lp11199_
                                                                '()
                                                                _datums11204_
                                                                _dispatch11205_
                                                                (cons _L11711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L11741_ '())))))
                   _g1172711738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1172511753_ _e11195_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8729_
                                                 _L11255_))))
                                         (___kont3824938250_
                                          (lambda (_L11651_)
                                            (if (gx#stx-null? _L11253_)
                                                (_lp11199_
                                                 '()
                                                 _datums11204_
                                                 _dispatch11205_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_g1166511668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1166611671_)
                        (cons _g1166511668_ _g1166611671_))
                      '()
                      _L11651_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8729_
                                                 _L11255_))))
                                         (___kont3825338254_
                                          (lambda (_L11536_ _L11538_)
                                            (if (null? (foldr (lambda (_g1155611559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1155711562_)
                        (cons _g1155611559_ _g1155711562_))
                      '()
                      _L11538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11199_
                                                 _L11253_
                                                 _datums11204_
                                                 _dispatch11205_
                                                 _default11206_)
                                                (let* ((_g1156511573_
                                                        (lambda (_g1156611569_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1156611569_)))
                                                       (_g1156411600_
                                                        (lambda (_g1156611577_)
                                                          ((lambda (_L11580_)
                                                             (let ()
                                                               (_lp11199_
                                                                _L11253_
                                                                (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (foldr (lambda (_g1159111594_ _g1159211597_)
                                            (cons _g1159111594_ _g1159211597_))
                                          '()
                                          _L11538_))
                              _datums11204_)
                        (cons (cons _L11536_ (cons _L11580_ '()))
                              _dispatch11205_)
                        _default11206_)))
                   _g1156611577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1156411600_ _e11195_)))))
                                         (___kont3825738258_
                                          (lambda (_L11423_ _L11425_)
                                            (if (null? (foldr (lambda (_g1144411447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1144511450_)
                        (cons _g1144411447_ _g1144511450_))
                      '()
                      _L11425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11199_
                                                 _L11253_
                                                 _datums11204_
                                                 _dispatch11205_
                                                 _default11206_)
                                                (_lp11199_
                                                 _L11253_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_g1145211455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1145311458_)
                             (cons _g1145211455_ _g1145311458_))
                           '()
                           _L11425_))
               _datums11204_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_g1146011463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1146111466_)
                              (cons _g1146011463_ _g1146111466_))
                            '()
                            _L11423_))
               _dispatch11205_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _default11206_)))))
                                     (let* ((___match3833738338_
                                             (lambda (_e1132211353_
                                                      _hd1132111357_
                                                      _tl1132011360_
                                                      ___splice3825938260_
                                                      _target1132311363_
                                                      _tl1132511366_)
                                               (letrec ((_loop1132611369_
                                                         (lambda (_hd1132411373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1133011376_)
                   (if (gx#stx-pair? _hd1132411373_)
                       (let ((_e1132711379_ (gx#syntax-e _hd1132411373_)))
                         (let ((_lp-tl1132911386_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1132711379_)))
                               (_lp-hd1132811383_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1132711379_))))
                           (_loop1132611369_
                            _lp-tl1132911386_
                            (cons _lp-hd1132811383_ _datum1133011376_))))
                       (let ((_datum1133111389_ (reverse _datum1133011376_)))
                         (if (gx#stx-pair/null? _tl1132011360_)
                             (let ((___splice3826138262_
                                    (gx#syntax-split-splice
                                     _tl1132011360_
                                     '0)))
                               (let ((_tl1133411396_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice3826138262_
                                         '1)))
                                     (_target1133211393_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice3826138262_
                                         '0))))
                                 (if (gx#stx-null? _tl1133411396_)
                                     (letrec ((_loop1133511399_
                                               (lambda (_hd1133311403_
                                                        _body1133911406_)
                                                 (if (gx#stx-pair?
                                                      _hd1133311403_)
                                                     (let ((_e1133611409_
                                                            (gx#syntax-e
                                                             _hd1133311403_)))
                                                       (let ((_lp-tl1133811416_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1133611409_)))
                     (_lp-hd1133711413_
                      (let () (declare (not safe)) (##car _e1133611409_))))
                 (_loop1133511399_
                  _lp-tl1133811416_
                  (cons _lp-hd1133711413_ _body1133911406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1134011419_
                                                            (reverse _body1133911406_)))
                                                       (___kont3825738258_
                                                        _body1134011419_
                                                        _datum1133111389_))))))
                                       (_loop1133511399_
                                        _target1133211393_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1127311346_)))))
                             (let ()
                               (declare (not safe))
                               (_g1127311346_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1132611369_
                                                  _target1132311363_
                                                  '()))))
                                            (___match3832338324_
                                             (lambda (_e1130211476_
                                                      _hd1130111480_
                                                      _tl1130011483_
                                                      ___splice3825538256_
                                                      _target1130311486_
                                                      _tl1130511489_)
                                               (letrec ((_loop1130611492_
                                                         (lambda (_hd1130411496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1131011499_)
                   (if (gx#stx-pair? _hd1130411496_)
                       (let ((_e1130711502_ (gx#syntax-e _hd1130411496_)))
                         (let ((_lp-tl1130911509_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1130711502_)))
                               (_lp-hd1130811506_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1130711502_))))
                           (_loop1130611492_
                            _lp-tl1130911509_
                            (cons _lp-hd1130811506_ _datum1131011499_))))
                       (let ((_datum1131111512_ (reverse _datum1131011499_)))
                         (if (gx#stx-pair? _tl1130011483_)
                             (let ((_e1131411516_
                                    (gx#syntax-e _tl1130011483_)))
                               (let ((_tl1131211523_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1131411516_)))
                                     (_hd1131311520_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1131411516_))))
                                 (if (gx#identifier? _hd1131311520_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g42654_|
                                          _hd1131311520_)
                                         (if (gx#stx-pair? _tl1131211523_)
                                             (let ((_e1131711526_
                                                    (gx#syntax-e
                                                     _tl1131211523_)))
                                               (let ((_tl1131511533_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1131711526_)))
                                                     (_hd1131611530_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1131711526_))))
                                                 (if (gx#stx-null?
                                                      _tl1131511533_)
                                                     (___kont3825338254_
                                                      _hd1131611530_
                                                      _datum1131111512_)
                                                     (___match3833738338_
                                                      _e1130211476_
                                                      _hd1130111480_
                                                      _tl1130011483_
                                                      ___splice3825538256_
                                                      _target1130311486_
                                                      _tl1130511489_))))
                                             (___match3833738338_
                                              _e1130211476_
                                              _hd1130111480_
                                              _tl1130011483_
                                              ___splice3825538256_
                                              _target1130311486_
                                              _tl1130511489_))
                                         (___match3833738338_
                                          _e1130211476_
                                          _hd1130111480_
                                          _tl1130011483_
                                          ___splice3825538256_
                                          _target1130311486_
                                          _tl1130511489_))
                                     (___match3833738338_
                                      _e1130211476_
                                      _hd1130111480_
                                      _tl1130011483_
                                      ___splice3825538256_
                                      _target1130311486_
                                      _tl1130511489_))))
                             (___match3833738338_
                              _e1130211476_
                              _hd1130111480_
                              _tl1130011483_
                              ___splice3825538256_
                              _target1130311486_
                              _tl1130511489_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1130611492_
                                                  _target1130311486_
                                                  '()))))
                                            (___match3830938310_
                                             (lambda (_e1128811611_
                                                      _hd1128711615_
                                                      _tl1128611618_
                                                      ___splice3825138252_
                                                      _target1128911621_
                                                      _tl1129111624_)
                                               (letrec ((_loop1129211627_
                                                         (lambda (_hd1129011631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1129611634_)
                   (if (gx#stx-pair? _hd1129011631_)
                       (let ((_e1129311637_ (gx#syntax-e _hd1129011631_)))
                         (let ((_lp-tl1129511644_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1129311637_)))
                               (_lp-hd1129411641_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1129311637_))))
                           (_loop1129211627_
                            _lp-tl1129511644_
                            (cons _lp-hd1129411641_ _body1129611634_))))
                       (let ((_body1129711647_ (reverse _body1129611634_)))
                         (___kont3824938250_ _body1129711647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1129211627_
                                                  _target1128911621_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx3824438245_)
                                           (let ((_e1127811681_
                                                  (gx#syntax-e
                                                   ___stx3824438245_)))
                                             (let ((_tl1127611688_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1127811681_)))
                                                   (_hd1127711685_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1127811681_))))
                                               (if (gx#identifier?
                                                    _hd1127711685_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g42656_|
                                                        _hd1127711685_)
                                                       (if (gx#stx-pair?
                                                            _tl1127611688_)
                                                           (let ((_e1128111691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1127611688_)))
                     (let ((_tl1127911698_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1128111691_)))
                           (_hd1128011695_
                            (let ()
                              (declare (not safe))
                              (##car _e1128111691_))))
                       (if (gx#identifier? _hd1128011695_)
                           (if (gx#free-identifier=?
                                |gerbil/core$<sugar>$<sugar:2>[1]#_g42655_|
                                _hd1128011695_)
                               (if (gx#stx-pair? _tl1127911698_)
                                   (let ((_e1128411701_
                                          (gx#syntax-e _tl1127911698_)))
                                     (let ((_tl1128211708_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1128411701_)))
                                           (_hd1128311705_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1128411701_))))
                                       (if (gx#stx-null? _tl1128211708_)
                                           (___kont3824738248_ _hd1128311705_)
                                           (if (gx#stx-pair/null?
                                                _tl1127611688_)
                                               (let ((___splice3825138252_
                                                      (gx#syntax-split-splice
                                                       _tl1127611688_
                                                       '0)))
                                                 (let ((_tl1129111624_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3825138252_
                                                           '1)))
                                                       (_target1128911621_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3825138252_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1129111624_)
                                                       (___match3830938310_
                                                        _e1127811681_
                                                        _hd1127711685_
                                                        _tl1127611688_
                                                        ___splice3825138252_
                                                        _target1128911621_
                                                        _tl1129111624_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1127711685_)
                                                           (let ((___splice3825538256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1127711685_ '0)))
                     (let ((_tl1130511489_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3825538256_ '1)))
                           (_target1130311486_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3825538256_ '0))))
                       (if (gx#stx-null? _tl1130511489_)
                           (___match3832338324_
                            _e1127811681_
                            _hd1127711685_
                            _tl1127611688_
                            ___splice3825538256_
                            _target1130311486_
                            _tl1130511489_)
                           (let () (declare (not safe)) (_g1127311346_)))))
                   (let () (declare (not safe)) (_g1127311346_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1127711685_)
                                                   (let ((___splice3825538256_
                                                          (gx#syntax-split-splice
                                                           _hd1127711685_
                                                           '0)))
                                                     (let ((_tl1130511489_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3825538256_
                                                               '1)))
                                                           (_target1130311486_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3825538256_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1130511489_)
                                                           (___match3832338324_
                                                            _e1127811681_
                                                            _hd1127711685_
                                                            _tl1127611688_
                                                            ___splice3825538256_
                                                            _target1130311486_
                                                            _tl1130511489_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1127311346_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127311346_)))))))
                                   (if (gx#stx-pair/null? _tl1127611688_)
                                       (let ((___splice3825138252_
                                              (gx#syntax-split-splice
                                               _tl1127611688_
                                               '0)))
                                         (let ((_tl1129111624_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3825138252_
                                                   '1)))
                                               (_target1128911621_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3825138252_
                                                   '0))))
                                           (if (gx#stx-null? _tl1129111624_)
                                               (___match3830938310_
                                                _e1127811681_
                                                _hd1127711685_
                                                _tl1127611688_
                                                ___splice3825138252_
                                                _target1128911621_
                                                _tl1129111624_)
                                               (if (gx#stx-pair/null?
                                                    _hd1127711685_)
                                                   (let ((___splice3825538256_
                                                          (gx#syntax-split-splice
                                                           _hd1127711685_
                                                           '0)))
                                                     (let ((_tl1130511489_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3825538256_
                                                               '1)))
                                                           (_target1130311486_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3825538256_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1130511489_)
                                                           (___match3832338324_
                                                            _e1127811681_
                                                            _hd1127711685_
                                                            _tl1127611688_
                                                            ___splice3825538256_
                                                            _target1130311486_
                                                            _tl1130511489_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1127311346_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127311346_))))))
                                       (if (gx#stx-pair/null? _hd1127711685_)
                                           (let ((___splice3825538256_
                                                  (gx#syntax-split-splice
                                                   _hd1127711685_
                                                   '0)))
                                             (let ((_tl1130511489_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3825538256_
                                                       '1)))
                                                   (_target1130311486_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3825538256_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1130511489_)
                                                   (___match3832338324_
                                                    _e1127811681_
                                                    _hd1127711685_
                                                    _tl1127611688_
                                                    ___splice3825538256_
                                                    _target1130311486_
                                                    _tl1130511489_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127311346_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1127311346_)))))
                               (if (gx#stx-pair/null? _tl1127611688_)
                                   (let ((___splice3825138252_
                                          (gx#syntax-split-splice
                                           _tl1127611688_
                                           '0)))
                                     (let ((_tl1129111624_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3825138252_
                                               '1)))
                                           (_target1128911621_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3825138252_
                                               '0))))
                                       (if (gx#stx-null? _tl1129111624_)
                                           (___match3830938310_
                                            _e1127811681_
                                            _hd1127711685_
                                            _tl1127611688_
                                            ___splice3825138252_
                                            _target1128911621_
                                            _tl1129111624_)
                                           (if (gx#stx-pair/null?
                                                _hd1127711685_)
                                               (let ((___splice3825538256_
                                                      (gx#syntax-split-splice
                                                       _hd1127711685_
                                                       '0)))
                                                 (let ((_tl1130511489_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3825538256_
                                                           '1)))
                                                       (_target1130311486_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3825538256_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1130511489_)
                                                       (___match3832338324_
                                                        _e1127811681_
                                                        _hd1127711685_
                                                        _tl1127611688_
                                                        ___splice3825538256_
                                                        _target1130311486_
                                                        _tl1130511489_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1127311346_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1127311346_))))))
                                   (if (gx#stx-pair/null? _hd1127711685_)
                                       (let ((___splice3825538256_
                                              (gx#syntax-split-splice
                                               _hd1127711685_
                                               '0)))
                                         (let ((_tl1130511489_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3825538256_
                                                   '1)))
                                               (_target1130311486_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3825538256_
                                                   '0))))
                                           (if (gx#stx-null? _tl1130511489_)
                                               (___match3832338324_
                                                _e1127811681_
                                                _hd1127711685_
                                                _tl1127611688_
                                                ___splice3825538256_
                                                _target1130311486_
                                                _tl1130511489_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1127311346_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1127311346_)))))
                           (if (gx#stx-pair/null? _tl1127611688_)
                               (let ((___splice3825138252_
                                      (gx#syntax-split-splice
                                       _tl1127611688_
                                       '0)))
                                 (let ((_tl1129111624_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3825138252_
                                           '1)))
                                       (_target1128911621_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3825138252_
                                           '0))))
                                   (if (gx#stx-null? _tl1129111624_)
                                       (___match3830938310_
                                        _e1127811681_
                                        _hd1127711685_
                                        _tl1127611688_
                                        ___splice3825138252_
                                        _target1128911621_
                                        _tl1129111624_)
                                       (if (gx#stx-pair/null? _hd1127711685_)
                                           (let ((___splice3825538256_
                                                  (gx#syntax-split-splice
                                                   _hd1127711685_
                                                   '0)))
                                             (let ((_tl1130511489_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3825538256_
                                                       '1)))
                                                   (_target1130311486_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3825538256_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1130511489_)
                                                   (___match3832338324_
                                                    _e1127811681_
                                                    _hd1127711685_
                                                    _tl1127611688_
                                                    ___splice3825538256_
                                                    _target1130311486_
                                                    _tl1130511489_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1127311346_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1127311346_))))))
                               (if (gx#stx-pair/null? _hd1127711685_)
                                   (let ((___splice3825538256_
                                          (gx#syntax-split-splice
                                           _hd1127711685_
                                           '0)))
                                     (let ((_tl1130511489_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3825538256_
                                               '1)))
                                           (_target1130311486_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3825538256_
                                               '0))))
                                       (if (gx#stx-null? _tl1130511489_)
                                           (___match3832338324_
                                            _e1127811681_
                                            _hd1127711685_
                                            _tl1127611688_
                                            ___splice3825538256_
                                            _target1130311486_
                                            _tl1130511489_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1127311346_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1127311346_)))))))
                   (if (gx#stx-pair/null? _tl1127611688_)
                       (let ((___splice3825138252_
                              (gx#syntax-split-splice _tl1127611688_ '0)))
                         (let ((_tl1129111624_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3825138252_ '1)))
                               (_target1128911621_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3825138252_ '0))))
                           (if (gx#stx-null? _tl1129111624_)
                               (___match3830938310_
                                _e1127811681_
                                _hd1127711685_
                                _tl1127611688_
                                ___splice3825138252_
                                _target1128911621_
                                _tl1129111624_)
                               (if (gx#stx-pair/null? _hd1127711685_)
                                   (let ((___splice3825538256_
                                          (gx#syntax-split-splice
                                           _hd1127711685_
                                           '0)))
                                     (let ((_tl1130511489_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3825538256_
                                               '1)))
                                           (_target1130311486_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3825538256_
                                               '0))))
                                       (if (gx#stx-null? _tl1130511489_)
                                           (___match3832338324_
                                            _e1127811681_
                                            _hd1127711685_
                                            _tl1127611688_
                                            ___splice3825538256_
                                            _target1130311486_
                                            _tl1130511489_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1127311346_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1127311346_))))))
                       (if (gx#stx-pair/null? _hd1127711685_)
                           (let ((___splice3825538256_
                                  (gx#syntax-split-splice _hd1127711685_ '0)))
                             (let ((_tl1130511489_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3825538256_ '1)))
                                   (_target1130311486_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3825538256_ '0))))
                               (if (gx#stx-null? _tl1130511489_)
                                   (___match3832338324_
                                    _e1127811681_
                                    _hd1127711685_
                                    _tl1127611688_
                                    ___splice3825538256_
                                    _target1130311486_
                                    _tl1130511489_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1127311346_)))))
                           (let () (declare (not safe)) (_g1127311346_)))))
               (if (gx#stx-pair/null? _hd1127711685_)
                   (let ((___splice3825538256_
                          (gx#syntax-split-splice _hd1127711685_ '0)))
                     (let ((_tl1130511489_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3825538256_ '1)))
                           (_target1130311486_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3825538256_ '0))))
                       (if (gx#stx-null? _tl1130511489_)
                           (___match3832338324_
                            _e1127811681_
                            _hd1127711685_
                            _tl1127611688_
                            ___splice3825538256_
                            _target1130311486_
                            _tl1130511489_)
                           (let () (declare (not safe)) (_g1127311346_)))))
                   (let () (declare (not safe)) (_g1127311346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1127711685_)
                                                       (let ((___splice3825538256_
                                                              (gx#syntax-split-splice
                                                               _hd1127711685_
                                                               '0)))
                                                         (let ((_tl1130511489_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice3825538256_ '1)))
                       (_target1130311486_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice3825538256_ '0))))
                   (if (gx#stx-null? _tl1130511489_)
                       (___match3832338324_
                        _e1127811681_
                        _hd1127711685_
                        _tl1127611688_
                        ___splice3825538256_
                        _target1130311486_
                        _tl1130511489_)
                       (let () (declare (not safe)) (_g1127311346_)))))
               (let () (declare (not safe)) (_g1127311346_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1127311346_))))))))
                              (___kont3834538346_
                               (lambda ()
                                 (_check-duplicate-datums8734_ _datums11204_)
                                 (values (reverse _datums11204_)
                                         (reverse _dispatch11205_)
                                         (let ((_$e11232_ _default11206_))
                                           (if _$e11232_
                                               _$e11232_
                                               '#!void))))))
                          (let ((_g1120811236_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx3834038341_)
                                       (___kont3834538346_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1120911221_))))))
                            (if (gx#stx-pair? ___stx3834038341_)
                                (let ((_e1121511243_
                                       (gx#syntax-e ___stx3834038341_)))
                                  (let ((_tl1121311250_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1121511243_)))
                                        (_hd1121411247_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1121511243_))))
                                    (___kont3834338344_
                                     _tl1121311250_
                                     _hd1121411247_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1120811236_)))))))))
                 (_check-duplicate-datums8734_
                  (lambda (_datums11183_)
                    (let ((_ht11186_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11189_)
                         (for-each
                          (lambda (_datum11192_)
                            (if (hash-get _ht11186_ _datum11192_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8729_
                                 _datum11192_)
                                (hash-put! _ht11186_ _datum11192_ '#t)))
                          _lst11189_))
                       _datums11183_))))
                 (_count-datums8735_
                  (lambda (_datums11176_)
                    (foldl (lambda (_lst11179_ _r11181_)
                             (+ (length _lst11179_) _r11181_))
                           '0
                           _datums11176_)))
                 (_symbolic-datums?8736_
                  (lambda (_datums11170_)
                    (andmap (lambda (_lst11173_) (andmap symbol? _lst11173_))
                            _datums11170_)))
                 (_char-datums?8737_
                  (lambda (_datums11164_)
                    (andmap (lambda (_lst11167_) (andmap char? _lst11167_))
                            _datums11164_)))
                 (_fixnum-datums?8738_
                  (lambda (_datums11158_)
                    (andmap (lambda (_lst11161_) (andmap fixnum? _lst11161_))
                            _datums11158_)))
                 (_eq-datums?8739_
                  (lambda (_datums11141_)
                    (andmap (lambda (_lst11144_)
                              (andmap (lambda (_x11147_)
                                        (let ((_$e11150_ (symbol? _x11147_)))
                                          (if _$e11150_
                                              _$e11150_
                                              (let ((_$e11154_
                                                     (keyword? _x11147_)))
                                                (if _$e11154_
                                                    _$e11154_
                                                    (immediate? _x11147_))))))
                                      _lst11144_))
                            _datums11141_)))
                 (_generate-simple-case8740_
                  (lambda (_e10905_
                           _datums10907_
                           _dispatch10908_
                           _default10909_)
                    (let* ((_g1091110919_
                            (lambda (_g1091210915_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1091210915_)))
                           (_g1091011137_
                            (lambda (_g1091210923_)
                              ((lambda (_L10926_)
                                 (let ()
                                   (let _recur10938_ ((_datums10941_
                                                       _datums10907_)
                                                      (_dispatch10943_
                                                       _dispatch10908_))
                                     (let* ((___stx3835838359_ _datums10941_)
                                            (_g1094610967_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx3835838359_))))
                                       (let ((___kont3836138362_
                                              (lambda (_L11025_ _L11027_)
                                                (let* ((_g1104711059_
                                                        (lambda (_g1104811055_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1104811055_)))
                                                       (_g1104611129_
                                                        (lambda (_g1104811063_)
                                                          (if (gx#stx-pair?
                                                               _g1104811063_)
                                                              (let ((_e1105311066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1104811063_)))
                        (let ((_hd1105211070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1105311066_)))
                              (_tl1105111073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1105311066_))))
                          ((lambda (_L11076_ _L11078_)
                             (let* ((_g1109011098_
                                     (lambda (_g1109111094_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1109111094_)))
                                    (_g1108911125_
                                     (lambda (_g1109111102_)
                                       ((lambda (_L11105_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'or)
                                                              (foldr (lambda (_g1111611119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1111711122_)
                               (cons (cons (gx#datum->syntax '#f '~case-test)
                                           (cons _g1111611119_
                                                 (cons _L10926_ '())))
                                     _g1111711122_))
                             '()
                             _L11027_))
                (cons _L11078_ (cons _L11105_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g1109111102_))))
                               (_g1108911125_
                                (_recur10938_ _L11025_ _L11076_))))
                           _tl1105111073_
                           _hd1105211070_)))
                      (_g1104711059_ _g1104811063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1104611129_
                                                   _dispatch10943_))))
                                             (___kont3836538366_
                                              (lambda () _default10909_)))
                                         (let ((___match3838138382_
                                                (lambda (_e1095210985_
                                                         _hd1095110989_
                                                         _tl1095010992_
                                                         ___splice3836338364_
                                                         _target1095310995_
                                                         _tl1095510998_)
                                                  (letrec ((_loop1095611001_
                                                            (lambda (_hd1095411005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1096011008_)
                      (if (gx#stx-pair? _hd1095411005_)
                          (let ((_e1095711011_ (gx#syntax-e _hd1095411005_)))
                            (let ((_lp-tl1095911018_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1095711011_)))
                                  (_lp-hd1095811015_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1095711011_))))
                              (_loop1095611001_
                               _lp-tl1095911018_
                               (cons _lp-hd1095811015_ _datum1096011008_))))
                          (let ((_datum1096111021_
                                 (reverse _datum1096011008_)))
                            (___kont3836138362_
                             _tl1095010992_
                             _datum1096111021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1095611001_
                                                     _target1095310995_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx3835838359_)
                                               (let ((_e1095210985_
                                                      (gx#syntax-e
                                                       ___stx3835838359_)))
                                                 (let ((_tl1095010992_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1095210985_)))
                                                       (_hd1095110989_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1095210985_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1095110989_)
                                                       (let ((___splice3836338364_
                                                              (gx#syntax-split-splice
                                                               _hd1095110989_
                                                               '0)))
                                                         (let ((_tl1095510998_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice3836338364_ '1)))
                       (_target1095310995_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice3836338364_ '0))))
                   (if (gx#stx-null? _tl1095510998_)
                       (___match3838138382_
                        _e1095210985_
                        _hd1095110989_
                        _tl1095010992_
                        ___splice3836338364_
                        _target1095310995_
                        _tl1095510998_)
                       (___kont3836538366_))))
               (___kont3836538366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3836538366_))))))))
                               _g1091210923_))))
                      (_g1091011137_ _e10905_))))
                 (_datum-dispatch-index8741_
                  (lambda (_datums10777_)
                    (let _lp10780_ ((_rest10783_ _datums10777_)
                                    (_ix10785_ '0)
                                    (_r10786_ '()))
                      (let* ((___stx3838438385_ _rest10783_)
                             (_g1078910810_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx3838438385_))))
                        (let ((___kont3838738388_
                               (lambda (_L10868_ _L10870_)
                                 (_lp10780_
                                  _L10868_
                                  (fx1+ _ix10785_)
                                  (foldl (lambda (_x10889_ _r10891_)
                                           (cons (cons _x10889_ _ix10785_)
                                                 _r10891_))
                                         _r10786_
                                         (foldr (lambda (_g1089210895_
                                                         _g1089310898_)
                                                  (cons _g1089210895_
                                                        _g1089310898_))
                                                '()
                                                _L10870_)))))
                              (___kont3839138392_ (lambda () _r10786_)))
                          (let ((___match3840738408_
                                 (lambda (_e1079510828_
                                          _hd1079410832_
                                          _tl1079310835_
                                          ___splice3838938390_
                                          _target1079610838_
                                          _tl1079810841_)
                                   (letrec ((_loop1079910844_
                                             (lambda (_hd1079710848_
                                                      _datum1080310851_)
                                               (if (gx#stx-pair?
                                                    _hd1079710848_)
                                                   (let ((_e1080010854_
                                                          (gx#syntax-e
                                                           _hd1079710848_)))
                                                     (let ((_lp-tl1080210861_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1080010854_)))
                                                           (_lp-hd1080110858_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1080010854_))))
                                                       (_loop1079910844_
                                                        _lp-tl1080210861_
                                                        (cons _lp-hd1080110858_
                                                              _datum1080310851_))))
                                                   (let ((_datum1080410864_
                                                          (reverse _datum1080310851_)))
                                                     (___kont3838738388_
                                                      _tl1079310835_
                                                      _datum1080410864_))))))
                                     (_loop1079910844_
                                      _target1079610838_
                                      '())))))
                            (if (gx#stx-pair? ___stx3838438385_)
                                (let ((_e1079510828_
                                       (gx#syntax-e ___stx3838438385_)))
                                  (let ((_tl1079310835_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1079510828_)))
                                        (_hd1079410832_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1079510828_))))
                                    (if (gx#stx-pair/null? _hd1079410832_)
                                        (let ((___splice3838938390_
                                               (gx#syntax-split-splice
                                                _hd1079410832_
                                                '0)))
                                          (let ((_tl1079810841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3838938390_
                                                    '1)))
                                                (_target1079610838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3838938390_
                                                    '0))))
                                            (if (gx#stx-null? _tl1079810841_)
                                                (___match3840738408_
                                                 _e1079510828_
                                                 _hd1079410832_
                                                 _tl1079310835_
                                                 ___splice3838938390_
                                                 _target1079610838_
                                                 _tl1079810841_)
                                                (___kont3839138392_))))
                                        (___kont3839138392_))))
                                (___kont3839138392_))))))))
                 (_duplicate-indexes?8742_
                  (lambda (_xs10758_)
                    (let ((_ht10761_ (make-hash-table-eq)))
                      (let _lp10764_ ((_rest10767_ _xs10758_))
                        (if (pair? _rest10767_)
                            (let* ((_ix10770_ (car _rest10767_))
                                   (_$e10773_ (hash-get _ht10761_ _ix10770_)))
                              (if _$e10773_
                                  _$e10773_
                                  (begin
                                    (hash-put! _ht10761_ _ix10770_ '#t)
                                    (_lp10764_ (cdr _rest10767_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8743_
                  (lambda (_indexes10727_ _hash-e10729_)
                    (let _lp10731_ ((_len10734_
                                     (* '2 (length _indexes10727_))))
                      (let* ((_hs10740_
                              (map (lambda (_x10737_)
                                     (_hash-e10729_ (car _x10737_)))
                                   _indexes10727_))
                             (_xs10746_
                              (map (lambda (_h10743_)
                                     (fxmodulo _h10743_ _len10734_))
                                   _hs10740_)))
                        (if (_duplicate-indexes?8742_ _xs10746_)
                            (if (< _len10734_ '131072)
                                (_lp10731_ (quotient (fx* _len10734_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8729_
                                 _indexes10727_))
                            (let ((_tab10751_ (make-vector _len10734_ '#f)))
                              (for-each
                               (lambda (_entry10754_ _x10756_)
                                 (vector-set!
                                  _tab10751_
                                  _x10756_
                                  _entry10754_))
                               _indexes10727_
                               _xs10746_)
                              _tab10751_))))))
                 (_generate-symbolic-dispatch8744_
                  (lambda (_e10330_
                           _datums10332_
                           _dispatch10333_
                           _default10334_)
                    (let* ((_indexes10336_
                            (_datum-dispatch-index8741_ _datums10332_))
                           (_tab10339_
                            (_generate-hash-dispatch-table8743_
                             _indexes10336_
                             symbol-hash)))
                      (if (= (length _dispatch10333_) '1)
                          (let* ((_tab10347_
                                  (vector-map
                                   (lambda (_x10344_)
                                     (if _x10344_ (car _x10344_) '#f))
                                   _tab10339_))
                                 (_g1035010388_
                                  (lambda (_g1035110384_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1035110384_)))
                                 (_g1034910519_
                                  (lambda (_g1035110392_)
                                    (if (gx#stx-pair? _g1035110392_)
                                        (let ((_e1036110395_
                                               (gx#syntax-e _g1035110392_)))
                                          (let ((_hd1036010399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1036110395_)))
                                                (_tl1035910402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1036110395_))))
                                            (if (gx#stx-pair? _tl1035910402_)
                                                (let ((_e1036410405_
                                                       (gx#syntax-e
                                                        _tl1035910402_)))
                                                  (let ((_hd1036310409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1036410405_)))
                                                        (_tl1036210412_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1036410405_))))
                                                    (if (gx#stx-pair?
                                                         _tl1036210412_)
                                                        (let ((_e1036710415_
                                                               (gx#syntax-e
                                                                _tl1036210412_)))
                                                          (let ((_hd1036610419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1036710415_)))
                        (_tl1036510422_
                         (let () (declare (not safe)) (##cdr _e1036710415_))))
                    (if (gx#stx-pair? _tl1036510422_)
                        (let ((_e1037010425_ (gx#syntax-e _tl1036510422_)))
                          (let ((_hd1036910429_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1037010425_)))
                                (_tl1036810432_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1037010425_))))
                            (if (gx#stx-pair? _hd1036910429_)
                                (let ((_e1037310435_
                                       (gx#syntax-e _hd1036910429_)))
                                  (let ((_hd1037210439_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1037310435_)))
                                        (_tl1037110442_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1037310435_))))
                                    (if (gx#stx-null? _tl1037110442_)
                                        (if (gx#stx-pair? _tl1036810432_)
                                            (let ((_e1037610445_
                                                   (gx#syntax-e
                                                    _tl1036810432_)))
                                              (let ((_hd1037510449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1037610445_)))
                                                    (_tl1037410452_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1037610445_))))
                                                (if (gx#stx-pair?
                                                     _tl1037410452_)
                                                    (let ((_e1037910455_
                                                           (gx#syntax-e
                                                            _tl1037410452_)))
                                                      (let ((_hd1037810459_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1037910455_)))
                    (_tl1037710462_
                     (let () (declare (not safe)) (##cdr _e1037910455_))))
                (if (gx#stx-pair? _tl1037710462_)
                    (let ((_e1038210465_ (gx#syntax-e _tl1037710462_)))
                      (let ((_hd1038110469_
                             (let ()
                               (declare (not safe))
                               (##car _e1038210465_)))
                            (_tl1038010472_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1038210465_))))
                        (if (gx#stx-null? _tl1038010472_)
                            ((lambda (_L10475_
                                      _L10477_
                                      _L10478_
                                      _L10479_
                                      _L10480_
                                      _L10481_
                                      _L10482_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L10481_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L10478_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L10480_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L10477_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbol?)
                             (cons _L10482_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L10482_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##fxmodulo)
                               (cons (gx#datum->syntax '#f 'h)
                                     (cons _L10475_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L10480_
                                           (cons (gx#datum->syntax '#f 'ix)
                                                 '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'q) (cons _L10482_ '())))
                   (cons _L10479_ (cons (cons _L10481_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L10481_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1038110469_
                             _hd1037810459_
                             _hd1037510449_
                             _hd1037210439_
                             _hd1036610419_
                             _hd1036310409_
                             _hd1036010399_)
                            (_g1035010388_ _g1035110392_))))
                    (_g1035010388_ _g1035110392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1035010388_
                                                     _g1035110392_))))
                                            (_g1035010388_ _g1035110392_))
                                        (_g1035010388_ _g1035110392_))))
                                (_g1035010388_ _g1035110392_))))
                        (_g1035010388_ _g1035110392_))))
                (_g1035010388_ _g1035110392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1035010388_
                                                 _g1035110392_))))
                                        (_g1035010388_ _g1035110392_)))))
                            (_g1034910519_
                             (list _e10330_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10333_
                                   _default10334_
                                   _tab10347_
                                   (vector-length _tab10347_))))
                          (let* ((_g1052310567_
                                  (lambda (_g1052410563_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1052410563_)))
                                 (_g1052210723_
                                  (lambda (_g1052410571_)
                                    (if (gx#stx-pair? _g1052410571_)
                                        (let ((_e1053410574_
                                               (gx#syntax-e _g1052410571_)))
                                          (let ((_hd1053310578_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1053410574_)))
                                                (_tl1053210581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1053410574_))))
                                            (if (gx#stx-pair? _tl1053210581_)
                                                (let ((_e1053710584_
                                                       (gx#syntax-e
                                                        _tl1053210581_)))
                                                  (let ((_hd1053610588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1053710584_)))
                                                        (_tl1053510591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1053710584_))))
                                                    (if (gx#stx-pair?
                                                         _tl1053510591_)
                                                        (let ((_e1054010594_
                                                               (gx#syntax-e
                                                                _tl1053510591_)))
                                                          (let ((_hd1053910598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1054010594_)))
                        (_tl1053810601_
                         (let () (declare (not safe)) (##cdr _e1054010594_))))
                    (if (gx#stx-pair? _tl1053810601_)
                        (let ((_e1054310604_ (gx#syntax-e _tl1053810601_)))
                          (let ((_hd1054210608_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1054310604_)))
                                (_tl1054110611_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1054310604_))))
                            (if (gx#stx-pair/null? _hd1054210608_)
                                (let ((_g42657_
                                       (gx#syntax-split-splice
                                        _hd1054210608_
                                        '0)))
                                  (begin
                                    (let ((_g42658_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g42657_)
                                                 (##vector-length _g42657_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g42658_ 2)))
                                          (error "Context expects 2 values"
                                                 _g42658_)))
                                    (let ((_target1054410614_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42657_ 0)))
                                          (_tl1054610617_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42657_ 1))))
                                      (if (gx#stx-null? _tl1054610617_)
                                          (letrec ((_loop1054710620_
                                                    (lambda (_hd1054510624_
                                                             _dispatch1055110627_)
                                                      (if (gx#stx-pair?
                                                           _hd1054510624_)
                                                          (let ((_e1054810630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1054510624_)))
                    (let ((_lp-hd1054910634_
                           (let () (declare (not safe)) (##car _e1054810630_)))
                          (_lp-tl1055010637_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1054810630_))))
                      (_loop1054710620_
                       _lp-tl1055010637_
                       (cons _lp-hd1054910634_ _dispatch1055110627_))))
                  (let ((_dispatch1055210640_ (reverse _dispatch1055110627_)))
                    (if (gx#stx-pair? _tl1054110611_)
                        (let ((_e1055510644_ (gx#syntax-e _tl1054110611_)))
                          (let ((_hd1055410648_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1055510644_)))
                                (_tl1055310651_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1055510644_))))
                            (if (gx#stx-pair? _tl1055310651_)
                                (let ((_e1055810654_
                                       (gx#syntax-e _tl1055310651_)))
                                  (let ((_hd1055710658_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1055810654_)))
                                        (_tl1055610661_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1055810654_))))
                                    (if (gx#stx-pair? _tl1055610661_)
                                        (let ((_e1056110664_
                                               (gx#syntax-e _tl1055610661_)))
                                          (let ((_hd1056010668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1056110664_)))
                                                (_tl1055910671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1056110664_))))
                                            (if (gx#stx-null? _tl1055910671_)
                                                ((lambda (_L10674_
                                                          _L10676_
                                                          _L10677_
                                                          _L10678_
                                                          _L10679_
                                                          _L10680_
                                                          _L10681_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L10680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L10677_ '())))
                                           '()))
                               (cons (cons _L10679_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L10676_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L10681_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##symbol-hash)
                                             (cons _L10681_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L10674_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L10679_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'eq?)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L10681_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (foldr (lambda (_g1071410717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1071510720_)
                      (cons _g1071410717_ _g1071510720_))
                    '()
                    _L10678_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L10680_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10680_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10680_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1056010668_
                                                 _hd1055710658_
                                                 _hd1055410648_
                                                 _dispatch1055210640_
                                                 _hd1053910598_
                                                 _hd1053610588_
                                                 _hd1053310578_)
                                                (_g1052310567_
                                                 _g1052410571_))))
                                        (_g1052310567_ _g1052410571_))))
                                (_g1052310567_ _g1052410571_))))
                        (_g1052310567_ _g1052410571_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1054710620_
                                             _target1054410614_
                                             '()))
                                          (_g1052310567_ _g1052410571_)))))
                                (_g1052310567_ _g1052410571_))))
                        (_g1052310567_ _g1052410571_))))
                (_g1052310567_ _g1052410571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1052310567_
                                                 _g1052410571_))))
                                        (_g1052310567_ _g1052410571_)))))
                            (_g1052210723_
                             (list _e10330_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10333_
                                   _default10334_
                                   _tab10339_
                                   (vector-length _tab10339_))))))))
                 (_max-char8745_
                  (lambda (_datums10319_)
                    (foldl (lambda (_lst10322_ _r10324_)
                             (foldl (lambda (_char10326_ _r10328_)
                                      (max (char->integer _char10326_)
                                           _r10328_))
                                    _r10324_
                                    _lst10322_))
                           '0
                           _datums10319_)))
                 (_generate-char-dispatch-table8746_
                  (lambda (_indexes10298_)
                    (let* ((_ixs10304_
                            (map (lambda (_x10301_)
                                   (char->integer (car _x10301_)))
                                 _indexes10298_))
                           (_len10307_ (fx1+ (foldl max '0 _ixs10304_)))
                           (_vec10310_ (make-vector _len10307_ '#f)))
                      (for-each
                       (lambda (_entry10315_ _x10317_)
                         (vector-set! _vec10310_ _x10317_ (cdr _entry10315_)))
                       _indexes10298_
                       _ixs10304_)
                      _vec10310_)))
                 (_simple-char-range?8747_
                  (lambda (_tab10274_)
                    (let ((_end10277_ (vector-length _tab10274_)))
                      (let _lp10280_ ((_i10283_ '0))
                        (let ((_ix10286_ (vector-ref _tab10274_ _i10283_)))
                          (if _ix10286_
                              (let _lp210289_ ((_i10292_ (fx1+ _i10283_)))
                                (if (fx< _i10292_ _end10277_)
                                    (let ((_ix*10295_
                                           (vector-ref _tab10274_ _i10292_)))
                                      (if (eq? _ix10286_ _ix*10295_)
                                          (_lp210289_ (fx1+ _i10292_))
                                          '#f))
                                    '#t))
                              (_lp10280_ (fx1+ _i10283_))))))))
                 (_char-range-start8748_
                  (lambda (_tab10265_)
                    (let _lp10268_ ((_i10271_ '0))
                      (if (vector-ref _tab10265_ _i10271_)
                          _i10271_
                          (_lp10268_ (fx1+ _i10271_))))))
                 (_generate-char-dispatch8749_
                  (lambda (_e9888_ _datums9890_ _dispatch9891_ _default9892_)
                    (if (< (_max-char8745_ _datums9890_) '128)
                        (let* ((_indexes9894_
                                (_datum-dispatch-index8741_ _datums9890_))
                               (_tab9897_
                                (_generate-char-dispatch-table8746_
                                 _indexes9894_)))
                          (if (_simple-char-range?8747_ _tab9897_)
                              (let ((_start9902_
                                     (_char-range-start8748_ _tab9897_))
                                    (_end9904_ (vector-length _tab9897_)))
                                (let* ((_g99069940_
                                        (lambda (_g99079936_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g99079936_)))
                                       (_g990510057_
                                        (lambda (_g99079944_)
                                          (if (gx#stx-pair? _g99079944_)
                                              (let ((_e99169947_
                                                     (gx#syntax-e
                                                      _g99079944_)))
                                                (let ((_hd99159951_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e99169947_)))
                                                      (_tl99149954_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e99169947_))))
                                                  (if (gx#stx-pair?
                                                       _tl99149954_)
                                                      (let ((_e99199957_
                                                             (gx#syntax-e
                                                              _tl99149954_)))
                                                        (let ((_hd99189961_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e99199957_)))
                      (_tl99179964_
                       (let () (declare (not safe)) (##cdr _e99199957_))))
                  (if (gx#stx-pair? _tl99179964_)
                      (let ((_e99229967_ (gx#syntax-e _tl99179964_)))
                        (let ((_hd99219971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99229967_)))
                              (_tl99209974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99229967_))))
                          (if (gx#stx-pair? _hd99219971_)
                              (let ((_e99259977_ (gx#syntax-e _hd99219971_)))
                                (let ((_hd99249981_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99259977_)))
                                      (_tl99239984_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99259977_))))
                                  (if (gx#stx-null? _tl99239984_)
                                      (if (gx#stx-pair? _tl99209974_)
                                          (let ((_e99289987_
                                                 (gx#syntax-e _tl99209974_)))
                                            (let ((_hd99279991_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e99289987_)))
                                                  (_tl99269994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e99289987_))))
                                              (if (gx#stx-pair? _tl99269994_)
                                                  (let ((_e99319997_
                                                         (gx#syntax-e
                                                          _tl99269994_)))
                                                    (let ((_hd993010001_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e99319997_)))
                                                          (_tl992910004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e99319997_))))
                                                      (if (gx#stx-pair?
                                                           _tl992910004_)
                                                          (let ((_e993410007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl992910004_)))
                    (let ((_hd993310011_
                           (let () (declare (not safe)) (##car _e993410007_)))
                          (_tl993210014_
                           (let () (declare (not safe)) (##cdr _e993410007_))))
                      (if (gx#stx-null? _tl993210014_)
                          ((lambda (_L10017_
                                    _L10019_
                                    _L10020_
                                    _L10021_
                                    _L10022_
                                    _L10023_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L10022_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L10020_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L10023_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L10023_ '()))
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##fx>=)
                                   (cons (gx#datum->syntax '#f 'ix)
                                         (cons _L10019_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L10017_ '())))
                                   '())))
                 (cons _L10021_ (cons (cons _L10022_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10022_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd993310011_
                           _hd993010001_
                           _hd99279991_
                           _hd99249981_
                           _hd99189961_
                           _hd99159951_)
                          (_g99069940_ _g99079944_))))
                  (_g99069940_ _g99079944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g99069940_ _g99079944_))))
                                          (_g99069940_ _g99079944_))
                                      (_g99069940_ _g99079944_))))
                              (_g99069940_ _g99079944_))))
                      (_g99069940_ _g99079944_))))
              (_g99069940_ _g99079944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g99069940_ _g99079944_)))))
                                  (_g990510057_
                                   (list _e9888_
                                         (gx#genident 'default)
                                         _dispatch9891_
                                         _default9892_
                                         _start9902_
                                         _end9904_))))
                              (let* ((_g1006110105_
                                      (lambda (_g1006210101_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1006210101_)))
                                     (_g1006010261_
                                      (lambda (_g1006210109_)
                                        (if (gx#stx-pair? _g1006210109_)
                                            (let ((_e1007210112_
                                                   (gx#syntax-e
                                                    _g1006210109_)))
                                              (let ((_hd1007110116_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1007210112_)))
                                                    (_tl1007010119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1007210112_))))
                                                (if (gx#stx-pair?
                                                     _tl1007010119_)
                                                    (let ((_e1007510122_
                                                           (gx#syntax-e
                                                            _tl1007010119_)))
                                                      (let ((_hd1007410126_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1007510122_)))
                    (_tl1007310129_
                     (let () (declare (not safe)) (##cdr _e1007510122_))))
                (if (gx#stx-pair? _tl1007310129_)
                    (let ((_e1007810132_ (gx#syntax-e _tl1007310129_)))
                      (let ((_hd1007710136_
                             (let ()
                               (declare (not safe))
                               (##car _e1007810132_)))
                            (_tl1007610139_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1007810132_))))
                        (if (gx#stx-pair? _tl1007610139_)
                            (let ((_e1008110142_ (gx#syntax-e _tl1007610139_)))
                              (let ((_hd1008010146_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1008110142_)))
                                    (_tl1007910149_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1008110142_))))
                                (if (gx#stx-pair/null? _hd1008010146_)
                                    (let ((_g42659_
                                           (gx#syntax-split-splice
                                            _hd1008010146_
                                            '0)))
                                      (begin
                                        (let ((_g42660_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42659_)
                                                     (##vector-length _g42659_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42660_ 2)))
                                              (error "Context expects 2 values"
                                                     _g42660_)))
                                        (let ((_target1008210152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42659_ 0)))
                                              (_tl1008410155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42659_ 1))))
                                          (if (gx#stx-null? _tl1008410155_)
                                              (letrec ((_loop1008510158_
                                                        (lambda (_hd1008310162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1008910165_)
                  (if (gx#stx-pair? _hd1008310162_)
                      (let ((_e1008610168_ (gx#syntax-e _hd1008310162_)))
                        (let ((_lp-hd1008710172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1008610168_)))
                              (_lp-tl1008810175_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1008610168_))))
                          (_loop1008510158_
                           _lp-tl1008810175_
                           (cons _lp-hd1008710172_ _dispatch1008910165_))))
                      (let ((_dispatch1009010178_
                             (reverse _dispatch1008910165_)))
                        (if (gx#stx-pair? _tl1007910149_)
                            (let ((_e1009310182_ (gx#syntax-e _tl1007910149_)))
                              (let ((_hd1009210186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1009310182_)))
                                    (_tl1009110189_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1009310182_))))
                                (if (gx#stx-pair? _tl1009110189_)
                                    (let ((_e1009610192_
                                           (gx#syntax-e _tl1009110189_)))
                                      (let ((_hd1009510196_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1009610192_)))
                                            (_tl1009410199_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1009610192_))))
                                        (if (gx#stx-pair? _tl1009410199_)
                                            (let ((_e1009910202_
                                                   (gx#syntax-e
                                                    _tl1009410199_)))
                                              (let ((_hd1009810206_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1009910202_)))
                                                    (_tl1009710209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1009910202_))))
                                                (if (gx#stx-null?
                                                     _tl1009710209_)
                                                    ((lambda (_L10212_
                                                              _L10214_
                                                              _L10215_
                                                              _L10216_
                                                              _L10217_
                                                              _L10218_
                                                              _L10219_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L10218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L10215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L10217_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L10214_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'char?)
                                                     (cons _L10219_ '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'ix)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##char->integer)
                                           (cons _L10219_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f '##fx<)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       (cons _L10212_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'x)
                           (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                       (cons _L10217_
                                             (cons (gx#datum->syntax '#f 'ix)
                                                   '())))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'x)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-dispatch)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'x)
                                                         (foldr (lambda (_g1025210255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1025310258_)
                          (cons _g1025210255_ _g1025310258_))
                        '()
                        _L10216_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10218_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10218_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10218_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1009810206_
                                                     _hd1009510196_
                                                     _hd1009210186_
                                                     _dispatch1009010178_
                                                     _hd1007710136_
                                                     _hd1007410126_
                                                     _hd1007110116_)
                                                    (_g1006110105_
                                                     _g1006210109_))))
                                            (_g1006110105_ _g1006210109_))))
                                    (_g1006110105_ _g1006210109_))))
                            (_g1006110105_ _g1006210109_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1008510158_
                                                 _target1008210152_
                                                 '()))
                                              (_g1006110105_ _g1006210109_)))))
                                    (_g1006110105_ _g1006210109_))))
                            (_g1006110105_ _g1006210109_))))
                    (_g1006110105_ _g1006210109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1006110105_
                                                     _g1006210109_))))
                                            (_g1006110105_ _g1006210109_)))))
                                (_g1006010261_
                                 (list _e9888_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch9891_
                                       _default9892_
                                       _tab9897_
                                       (vector-length _tab9897_))))))
                        (_generate-char-dispatch/hash8750_
                         _e9888_
                         _datums9890_
                         _dispatch9891_
                         _default9892_))))
                 (_generate-char-dispatch/hash8750_
                  (lambda (_e9666_ _datums9668_ _dispatch9669_ _default9670_)
                    (let* ((_indexes9672_
                            (_datum-dispatch-index8741_ _datums9668_))
                           (_tab9675_
                            (_generate-hash-dispatch-table8743_
                             _indexes9672_
                             char->integer)))
                      (let* ((_g96809724_
                              (lambda (_g96819720_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g96819720_)))
                             (_g96799884_
                              (lambda (_g96819728_)
                                (if (gx#stx-pair? _g96819728_)
                                    (let ((_e96919731_
                                           (gx#syntax-e _g96819728_)))
                                      (let ((_hd96909735_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e96919731_)))
                                            (_tl96899738_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e96919731_))))
                                        (if (gx#stx-pair? _tl96899738_)
                                            (let ((_e96949741_
                                                   (gx#syntax-e _tl96899738_)))
                                              (let ((_hd96939745_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e96949741_)))
                                                    (_tl96929748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e96949741_))))
                                                (if (gx#stx-pair? _tl96929748_)
                                                    (let ((_e96979751_
                                                           (gx#syntax-e
                                                            _tl96929748_)))
                                                      (let ((_hd96969755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e96979751_)))
                    (_tl96959758_
                     (let () (declare (not safe)) (##cdr _e96979751_))))
                (if (gx#stx-pair? _tl96959758_)
                    (let ((_e97009761_ (gx#syntax-e _tl96959758_)))
                      (let ((_hd96999765_
                             (let () (declare (not safe)) (##car _e97009761_)))
                            (_tl96989768_
                             (let ()
                               (declare (not safe))
                               (##cdr _e97009761_))))
                        (if (gx#stx-pair/null? _hd96999765_)
                            (let ((_g42661_
                                   (gx#syntax-split-splice _hd96999765_ '0)))
                              (begin
                                (let ((_g42662_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42661_)
                                             (##vector-length _g42661_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42662_ 2)))
                                      (error "Context expects 2 values"
                                             _g42662_)))
                                (let ((_target97019771_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42661_ 0)))
                                      (_tl97039774_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42661_ 1))))
                                  (if (gx#stx-null? _tl97039774_)
                                      (letrec ((_loop97049777_
                                                (lambda (_hd97029781_
                                                         _dispatch97089784_)
                                                  (if (gx#stx-pair?
                                                       _hd97029781_)
                                                      (let ((_e97059787_
                                                             (gx#syntax-e
                                                              _hd97029781_)))
                                                        (let ((_lp-hd97069791_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e97059787_)))
                      (_lp-tl97079794_
                       (let () (declare (not safe)) (##cdr _e97059787_))))
                  (_loop97049777_
                   _lp-tl97079794_
                   (cons _lp-hd97069791_ _dispatch97089784_))))
              (let ((_dispatch97099797_ (reverse _dispatch97089784_)))
                (if (gx#stx-pair? _tl96989768_)
                    (let ((_e97129801_ (gx#syntax-e _tl96989768_)))
                      (let ((_hd97119805_
                             (let () (declare (not safe)) (##car _e97129801_)))
                            (_tl97109808_
                             (let ()
                               (declare (not safe))
                               (##cdr _e97129801_))))
                        (if (gx#stx-pair? _tl97109808_)
                            (let ((_e97159811_ (gx#syntax-e _tl97109808_)))
                              (let ((_hd97149815_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e97159811_)))
                                    (_tl97139818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e97159811_))))
                                (if (gx#stx-pair? _tl97139818_)
                                    (let ((_e97189821_
                                           (gx#syntax-e _tl97139818_)))
                                      (let ((_hd97179825_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e97189821_)))
                                            (_tl97169828_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e97189821_))))
                                        (if (gx#stx-null? _tl97169828_)
                                            ((lambda (_L9831_
                                                      _L9833_
                                                      _L9834_
                                                      _L9835_
                                                      _L9836_
                                                      _L9837_
                                                      _L9838_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9834_ '())))
                                       '()))
                           (cons (cons _L9836_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9833_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'char?)
                                             (cons _L9838_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _L9838_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _L9831_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _L9836_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L9838_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (foldr (lambda (_g98759878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g98769881_)
                  (cons _g98759878_ _g98769881_))
                '()
                _L9835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9837_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9837_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9837_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd97179825_
                                             _hd97149815_
                                             _hd97119805_
                                             _dispatch97099797_
                                             _hd96969755_
                                             _hd96939745_
                                             _hd96909735_)
                                            (_g96809724_ _g96819728_))))
                                    (_g96809724_ _g96819728_))))
                            (_g96809724_ _g96819728_))))
                    (_g96809724_ _g96819728_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop97049777_ _target97019771_ '()))
                                      (_g96809724_ _g96819728_)))))
                            (_g96809724_ _g96819728_))))
                    (_g96809724_ _g96819728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96809724_
                                                     _g96819728_))))
                                            (_g96809724_ _g96819728_))))
                                    (_g96809724_ _g96819728_)))))
                        (_g96799884_
                         (list _e9666_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9669_
                               _default9670_
                               _tab9675_
                               (vector-length _tab9675_)))))))
                 (_min-fixnum8751_
                  (lambda (_datums9659_)
                    (foldl (lambda (_lst9662_ _r9664_)
                             (foldl min _r9664_ _lst9662_))
                           ##max-fixnum
                           _datums9659_)))
                 (_max-fixnum8752_
                  (lambda (_datums9652_)
                    (foldl (lambda (_lst9655_ _r9657_)
                             (foldl max _r9657_ _lst9655_))
                           ##min-fixnum
                           _datums9652_)))
                 (_generate-fixnum-dispatch-table8753_
                  (lambda (_indexes9634_)
                    (let* ((_ixs9637_ (map car _indexes9634_))
                           (_len9640_ (fx1+ (foldl max '0 _ixs9637_)))
                           (_vec9643_ (make-vector _len9640_ '#f)))
                      (for-each
                       (lambda (_entry9648_ _x9650_)
                         (vector-set! _vec9643_ _x9650_ (cdr _entry9648_)))
                       _indexes9634_
                       _ixs9637_)
                      _vec9643_)))
                 (_generate-fixnum-dispatch8754_
                  (lambda (_e9368_ _datums9370_ _dispatch9371_ _default9372_)
                    (if (and (>= (_min-fixnum8751_ _datums9370_) '0)
                             (< (_max-fixnum8752_ _datums9370_) '1024))
                        (let* ((_indexes9374_
                                (_datum-dispatch-index8741_ _datums9370_))
                               (_tab9377_
                                (_generate-fixnum-dispatch-table8753_
                                 _indexes9374_))
                               (_dense?9380_
                                (andmap values (vector->list _tab9377_))))
                          (let* ((_g93859429_
                                  (lambda (_g93869425_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g93869425_)))
                                 (_g93849630_
                                  (lambda (_g93869433_)
                                    (if (gx#stx-pair? _g93869433_)
                                        (let ((_e93969436_
                                               (gx#syntax-e _g93869433_)))
                                          (let ((_hd93959440_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e93969436_)))
                                                (_tl93949443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e93969436_))))
                                            (if (gx#stx-pair? _tl93949443_)
                                                (let ((_e93999446_
                                                       (gx#syntax-e
                                                        _tl93949443_)))
                                                  (let ((_hd93989450_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e93999446_)))
                                                        (_tl93979453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e93999446_))))
                                                    (if (gx#stx-pair?
                                                         _tl93979453_)
                                                        (let ((_e94029456_
                                                               (gx#syntax-e
                                                                _tl93979453_)))
                                                          (let ((_hd94019460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e94029456_)))
                        (_tl94009463_
                         (let () (declare (not safe)) (##cdr _e94029456_))))
                    (if (gx#stx-pair? _tl94009463_)
                        (let ((_e94059466_ (gx#syntax-e _tl94009463_)))
                          (let ((_hd94049470_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e94059466_)))
                                (_tl94039473_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e94059466_))))
                            (if (gx#stx-pair/null? _hd94049470_)
                                (let ((_g42663_
                                       (gx#syntax-split-splice
                                        _hd94049470_
                                        '0)))
                                  (begin
                                    (let ((_g42664_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g42663_)
                                                 (##vector-length _g42663_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g42664_ 2)))
                                          (error "Context expects 2 values"
                                                 _g42664_)))
                                    (let ((_target94069476_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42663_ 0)))
                                          (_tl94089479_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42663_ 1))))
                                      (if (gx#stx-null? _tl94089479_)
                                          (letrec ((_loop94099482_
                                                    (lambda (_hd94079486_
                                                             _dispatch94139489_)
                                                      (if (gx#stx-pair?
                                                           _hd94079486_)
                                                          (let ((_e94109492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd94079486_)))
                    (let ((_lp-hd94119496_
                           (let () (declare (not safe)) (##car _e94109492_)))
                          (_lp-tl94129499_
                           (let () (declare (not safe)) (##cdr _e94109492_))))
                      (_loop94099482_
                       _lp-tl94129499_
                       (cons _lp-hd94119496_ _dispatch94139489_))))
                  (let ((_dispatch94149502_ (reverse _dispatch94139489_)))
                    (if (gx#stx-pair? _tl94039473_)
                        (let ((_e94179506_ (gx#syntax-e _tl94039473_)))
                          (let ((_hd94169510_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e94179506_)))
                                (_tl94159513_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e94179506_))))
                            (if (gx#stx-pair? _tl94159513_)
                                (let ((_e94209516_ (gx#syntax-e _tl94159513_)))
                                  (let ((_hd94199520_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e94209516_)))
                                        (_tl94189523_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e94209516_))))
                                    (if (gx#stx-pair? _tl94189523_)
                                        (let ((_e94239526_
                                               (gx#syntax-e _tl94189523_)))
                                          (let ((_hd94229530_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e94239526_)))
                                                (_tl94219533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e94239526_))))
                                            (if (gx#stx-null? _tl94219533_)
                                                ((lambda (_L9536_
                                                          _L9538_
                                                          _L9539_
                                                          _L9540_
                                                          _L9541_
                                                          _L9542_
                                                          _L9543_)
                                                   (let ()
                                                     (let* ((_g95829590_
                                                             (lambda (_g95839586_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g95839586_)))
                                                            (_g95819610_
                                                             (lambda (_g95839594_)
                                                               ((lambda (_L9597_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _L9542_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _L9539_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9541_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L9538_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fixnum?)
                        (cons _L9543_ '()))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx>=)
                                                      (cons _L9543_
                                                            (cons '0 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L9543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9536_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'x)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L9541_ (cons _L9543_ '())))
                          '()))
              (cons _L9597_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9542_ '()) '()))))
                        (cons (cons _L9542_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _g95839594_))))
               (_g95819610_
                (if _dense?9380_
                    (cons (gx#datum->syntax '#f '~case-dispatch)
                          (cons (gx#datum->syntax '#f 'x)
                                (foldr (lambda (_g96139616_ _g96149619_)
                                         (cons _g96139616_ _g96149619_))
                                       '()
                                       _L9540_)))
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'x)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch)
                                            (cons (gx#datum->syntax '#f 'x)
                                                  (foldr (lambda (_g96219624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g96229627_)
                   (cons _g96219624_ _g96229627_))
                 '()
                 _L9540_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _L9542_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd94229530_
                                                 _hd94199520_
                                                 _hd94169510_
                                                 _dispatch94149502_
                                                 _hd94019460_
                                                 _hd93989450_
                                                 _hd93959440_)
                                                (_g93859429_ _g93869433_))))
                                        (_g93859429_ _g93869433_))))
                                (_g93859429_ _g93869433_))))
                        (_g93859429_ _g93869433_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop94099482_
                                             _target94069476_
                                             '()))
                                          (_g93859429_ _g93869433_)))))
                                (_g93859429_ _g93869433_))))
                        (_g93859429_ _g93869433_))))
                (_g93859429_ _g93869433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93859429_ _g93869433_))))
                                        (_g93859429_ _g93869433_)))))
                            (_g93849630_
                             (list _e9368_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9371_
                                   _default9372_
                                   _tab9377_
                                   (vector-length _tab9377_)))))
                        (_generate-fixnum-dispatch/hash8755_
                         _e9368_
                         _datums9370_
                         _dispatch9371_
                         _default9372_))))
                 (_generate-fixnum-dispatch/hash8755_
                  (lambda (_e9146_ _datums9148_ _dispatch9149_ _default9150_)
                    (let* ((_indexes9152_
                            (_datum-dispatch-index8741_ _datums9148_))
                           (_tab9155_
                            (_generate-hash-dispatch-table8743_
                             _indexes9152_
                             values)))
                      (let* ((_g91609204_
                              (lambda (_g91619200_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g91619200_)))
                             (_g91599364_
                              (lambda (_g91619208_)
                                (if (gx#stx-pair? _g91619208_)
                                    (let ((_e91719211_
                                           (gx#syntax-e _g91619208_)))
                                      (let ((_hd91709215_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e91719211_)))
                                            (_tl91699218_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e91719211_))))
                                        (if (gx#stx-pair? _tl91699218_)
                                            (let ((_e91749221_
                                                   (gx#syntax-e _tl91699218_)))
                                              (let ((_hd91739225_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e91749221_)))
                                                    (_tl91729228_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e91749221_))))
                                                (if (gx#stx-pair? _tl91729228_)
                                                    (let ((_e91779231_
                                                           (gx#syntax-e
                                                            _tl91729228_)))
                                                      (let ((_hd91769235_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e91779231_)))
                    (_tl91759238_
                     (let () (declare (not safe)) (##cdr _e91779231_))))
                (if (gx#stx-pair? _tl91759238_)
                    (let ((_e91809241_ (gx#syntax-e _tl91759238_)))
                      (let ((_hd91799245_
                             (let () (declare (not safe)) (##car _e91809241_)))
                            (_tl91789248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e91809241_))))
                        (if (gx#stx-pair/null? _hd91799245_)
                            (let ((_g42665_
                                   (gx#syntax-split-splice _hd91799245_ '0)))
                              (begin
                                (let ((_g42666_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42665_)
                                             (##vector-length _g42665_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42666_ 2)))
                                      (error "Context expects 2 values"
                                             _g42666_)))
                                (let ((_target91819251_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42665_ 0)))
                                      (_tl91839254_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42665_ 1))))
                                  (if (gx#stx-null? _tl91839254_)
                                      (letrec ((_loop91849257_
                                                (lambda (_hd91829261_
                                                         _dispatch91889264_)
                                                  (if (gx#stx-pair?
                                                       _hd91829261_)
                                                      (let ((_e91859267_
                                                             (gx#syntax-e
                                                              _hd91829261_)))
                                                        (let ((_lp-hd91869271_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e91859267_)))
                      (_lp-tl91879274_
                       (let () (declare (not safe)) (##cdr _e91859267_))))
                  (_loop91849257_
                   _lp-tl91879274_
                   (cons _lp-hd91869271_ _dispatch91889264_))))
              (let ((_dispatch91899277_ (reverse _dispatch91889264_)))
                (if (gx#stx-pair? _tl91789248_)
                    (let ((_e91929281_ (gx#syntax-e _tl91789248_)))
                      (let ((_hd91919285_
                             (let () (declare (not safe)) (##car _e91929281_)))
                            (_tl91909288_
                             (let ()
                               (declare (not safe))
                               (##cdr _e91929281_))))
                        (if (gx#stx-pair? _tl91909288_)
                            (let ((_e91959291_ (gx#syntax-e _tl91909288_)))
                              (let ((_hd91949295_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e91959291_)))
                                    (_tl91939298_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e91959291_))))
                                (if (gx#stx-pair? _tl91939298_)
                                    (let ((_e91989301_
                                           (gx#syntax-e _tl91939298_)))
                                      (let ((_hd91979305_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e91989301_)))
                                            (_tl91969308_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e91989301_))))
                                        (if (gx#stx-null? _tl91969308_)
                                            ((lambda (_L9311_
                                                      _L9313_
                                                      _L9314_
                                                      _L9315_
                                                      _L9316_
                                                      _L9317_
                                                      _L9318_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9314_ '())))
                                       '()))
                           (cons (cons _L9316_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9313_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                             (cons _L9318_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                         (cons _L9318_ (cons _L9311_ '())))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##vector-ref)
                                               (cons _L9316_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           '())))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L9318_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (foldr (lambda (_g93559358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g93569361_)
                  (cons _g93559358_ _g93569361_))
                '()
                _L9315_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9317_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9317_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9317_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd91979305_
                                             _hd91949295_
                                             _hd91919285_
                                             _dispatch91899277_
                                             _hd91769235_
                                             _hd91739225_
                                             _hd91709215_)
                                            (_g91609204_ _g91619208_))))
                                    (_g91609204_ _g91619208_))))
                            (_g91609204_ _g91619208_))))
                    (_g91609204_ _g91619208_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop91849257_ _target91819251_ '()))
                                      (_g91609204_ _g91619208_)))))
                            (_g91609204_ _g91619208_))))
                    (_g91609204_ _g91619208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g91609204_
                                                     _g91619208_))))
                                            (_g91609204_ _g91619208_))))
                                    (_g91609204_ _g91619208_)))))
                        (_g91599364_
                         (list _e9146_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9149_
                               _default9150_
                               _tab9155_
                               (vector-length _tab9155_)))))))
                 (_generate-generic-dispatch8756_
                  (lambda (_e8882_ _datums8884_ _dispatch8885_ _default8886_)
                    (let ((_g42667_
                           (if (_eq-datums?8739_ _datums8884_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e8888_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g42667_ 0)))
                              (_hashf8890_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g42667_ 1)))
                              (_eqf8891_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g42667_ 2))))
                          (let* ((_indexes8893_
                                  (_datum-dispatch-index8741_ _datums8884_))
                                 (_tab8896_
                                  (_generate-hash-dispatch-table8743_
                                   _indexes8893_
                                   _hash-e8888_)))
                            (let* ((_g89018953_
                                    (lambda (_g89028949_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g89028949_)))
                                   (_g89009142_
                                    (lambda (_g89028957_)
                                      (if (gx#stx-pair? _g89028957_)
                                          (let ((_e89148960_
                                                 (gx#syntax-e _g89028957_)))
                                            (let ((_hd89138964_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e89148960_)))
                                                  (_tl89128967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e89148960_))))
                                              (if (gx#stx-pair? _tl89128967_)
                                                  (let ((_e89178970_
                                                         (gx#syntax-e
                                                          _tl89128967_)))
                                                    (let ((_hd89168974_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e89178970_)))
                                                          (_tl89158977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e89178970_))))
                                                      (if (gx#stx-pair?
                                                           _tl89158977_)
                                                          (let ((_e89208980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl89158977_)))
                    (let ((_hd89198984_
                           (let () (declare (not safe)) (##car _e89208980_)))
                          (_tl89188987_
                           (let () (declare (not safe)) (##cdr _e89208980_))))
                      (if (gx#stx-pair? _tl89188987_)
                          (let ((_e89238990_ (gx#syntax-e _tl89188987_)))
                            (let ((_hd89228994_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e89238990_)))
                                  (_tl89218997_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e89238990_))))
                              (if (gx#stx-pair/null? _hd89228994_)
                                  (let ((_g42668_
                                         (gx#syntax-split-splice
                                          _hd89228994_
                                          '0)))
                                    (begin
                                      (let ((_g42669_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42668_)
                                                   (##vector-length _g42668_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42669_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42669_)))
                                      (let ((_target89249000_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42668_ 0)))
                                            (_tl89269003_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42668_ 1))))
                                        (if (gx#stx-null? _tl89269003_)
                                            (letrec ((_loop89279006_
                                                      (lambda (_hd89259010_
                                                               _dispatch89319013_)
                                                        (if (gx#stx-pair?
                                                             _hd89259010_)
                                                            (let ((_e89289016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd89259010_)))
                      (let ((_lp-hd89299020_
                             (let () (declare (not safe)) (##car _e89289016_)))
                            (_lp-tl89309023_
                             (let ()
                               (declare (not safe))
                               (##cdr _e89289016_))))
                        (_loop89279006_
                         _lp-tl89309023_
                         (cons _lp-hd89299020_ _dispatch89319013_))))
                    (let ((_dispatch89329026_ (reverse _dispatch89319013_)))
                      (if (gx#stx-pair? _tl89218997_)
                          (let ((_e89359030_ (gx#syntax-e _tl89218997_)))
                            (let ((_hd89349034_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e89359030_)))
                                  (_tl89339037_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e89359030_))))
                              (if (gx#stx-pair? _tl89339037_)
                                  (let ((_e89389040_
                                         (gx#syntax-e _tl89339037_)))
                                    (let ((_hd89379044_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e89389040_)))
                                          (_tl89369047_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e89389040_))))
                                      (if (gx#stx-pair? _tl89369047_)
                                          (let ((_e89419050_
                                                 (gx#syntax-e _tl89369047_)))
                                            (let ((_hd89409054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e89419050_)))
                                                  (_tl89399057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e89419050_))))
                                              (if (gx#stx-pair? _tl89399057_)
                                                  (let ((_e89449060_
                                                         (gx#syntax-e
                                                          _tl89399057_)))
                                                    (let ((_hd89439064_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e89449060_)))
                                                          (_tl89429067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e89449060_))))
                                                      (if (gx#stx-pair?
                                                           _tl89429067_)
                                                          (let ((_e89479070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl89429067_)))
                    (let ((_hd89469074_
                           (let () (declare (not safe)) (##car _e89479070_)))
                          (_tl89459077_
                           (let () (declare (not safe)) (##cdr _e89479070_))))
                      (if (gx#stx-null? _tl89459077_)
                          ((lambda (_L9080_
                                    _L9082_
                                    _L9083_
                                    _L9084_
                                    _L9085_
                                    _L9086_
                                    _L9087_
                                    _L9088_
                                    _L9089_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L9088_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L9085_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9087_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L9084_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons _L9082_ (cons _L9089_ '())) '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9083_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9087_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons _L9080_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L9089_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (foldr (lambda (_g91339136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g91349139_)
                      (cons _g91339136_ _g91349139_))
                    '()
                    _L9086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9088_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9088_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd89469074_
                           _hd89439064_
                           _hd89409054_
                           _hd89379044_
                           _hd89349034_
                           _dispatch89329026_
                           _hd89198984_
                           _hd89168974_
                           _hd89138964_)
                          (_g89018953_ _g89028957_))))
                  (_g89018953_ _g89028957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89018953_ _g89028957_))))
                                          (_g89018953_ _g89028957_))))
                                  (_g89018953_ _g89028957_))))
                          (_g89018953_ _g89028957_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop89279006_
                                               _target89249000_
                                               '()))
                                            (_g89018953_ _g89028957_)))))
                                  (_g89018953_ _g89028957_))))
                          (_g89018953_ _g89028957_))))
                  (_g89018953_ _g89028957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89018953_ _g89028957_))))
                                          (_g89018953_ _g89028957_)))))
                              (_g89009142_
                               (list _e8882_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch8885_
                                     _default8886_
                                     _tab8896_
                                     (vector-length _tab8896_)
                                     _hashf8890_
                                     _eqf8891_))))))))))
          (let* ((_g87588782_
                  (lambda (_g87598778_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g87598778_)))
                 (_g87578878_
                  (lambda (_g87598786_)
                    (if (gx#stx-pair? _g87598786_)
                        (let ((_e87648789_ (gx#syntax-e _g87598786_)))
                          (let ((_hd87638793_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e87648789_)))
                                (_tl87628796_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e87648789_))))
                            (if (gx#stx-pair? _tl87628796_)
                                (let ((_e87678799_ (gx#syntax-e _tl87628796_)))
                                  (let ((_hd87668803_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e87678799_)))
                                        (_tl87658806_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e87678799_))))
                                    (if (gx#stx-pair/null? _tl87658806_)
                                        (let ((_g42670_
                                               (gx#syntax-split-splice
                                                _tl87658806_
                                                '0)))
                                          (begin
                                            (let ((_g42671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g42670_)
                                                         (##vector-length
                                                          _g42670_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g42671_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g42671_)))
                                            (let ((_target87688809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42670_
                                                      0)))
                                                  (_tl87708812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42670_
                                                      1))))
                                              (if (gx#stx-null? _tl87708812_)
                                                  (letrec ((_loop87718815_
                                                            (lambda (_hd87698819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause87758822_)
                      (if (gx#stx-pair? _hd87698819_)
                          (let ((_e87728825_ (gx#syntax-e _hd87698819_)))
                            (let ((_lp-hd87738829_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e87728825_)))
                                  (_lp-tl87748832_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e87728825_))))
                              (_loop87718815_
                               _lp-tl87748832_
                               (cons _lp-hd87738829_ _clause87758822_))))
                          (let ((_clause87768835_ (reverse _clause87758822_)))
                            ((lambda (_L8839_ _L8841_)
                               (let ((_g42672_
                                      (_parse-clauses8732_
                                       _L8841_
                                       (foldr (lambda (_g88598862_ _g88608865_)
                                                (cons _g88598862_ _g88608865_))
                                              '()
                                              _L8839_))))
                                 (begin
                                   (let ((_g42673_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g42672_)
                                                (##vector-length _g42672_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g42673_ 3)))
                                         (error "Context expects 3 values"
                                                _g42673_)))
                                   (let ((_datums8868_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42672_ 0)))
                                         (_dispatch8870_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42672_ 1)))
                                         (_default8871_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42672_ 2))))
                                     (let ((_datum-count8873_
                                            (_count-datums8735_ _datums8868_)))
                                       (if (< _datum-count8873_ '6)
                                           (_generate-simple-case8740_
                                            _L8841_
                                            _datums8868_
                                            _dispatch8870_
                                            _default8871_)
                                           (if (_char-datums?8737_
                                                _datums8868_)
                                               (_generate-char-dispatch8749_
                                                _L8841_
                                                _datums8868_
                                                _dispatch8870_
                                                _default8871_)
                                               (if (_fixnum-datums?8738_
                                                    _datums8868_)
                                                   (_generate-fixnum-dispatch8754_
                                                    _L8841_
                                                    _datums8868_
                                                    _dispatch8870_
                                                    _default8871_)
                                                   (if (< _datum-count8873_
                                                          '12)
                                                       (_generate-simple-case8740_
                                                        _L8841_
                                                        _datums8868_
                                                        _dispatch8870_
                                                        _default8871_)
                                                       (if (_symbolic-datums?8736_
                                                            _datums8868_)
                                                           (_generate-symbolic-dispatch8744_
                                                            _L8841_
                                                            _datums8868_
                                                            _dispatch8870_
                                                            _default8871_)
                                                           (_generate-generic-dispatch8756_
                                                            _L8841_
                                                            _datums8868_
                                                            _dispatch8870_
                                                            _default8871_)))))))))))
                             _clause87768835_
                             _hd87668803_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop87718815_
                                                     _target87688809_
                                                     '()))
                                                  (_g87588782_ _g87598786_)))))
                                        (_g87588782_ _g87598786_))))
                                (_g87588782_ _g87598786_))))
                        (_g87588782_ _g87598786_)))))
            (_g87578878_ _stx8729_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11780_)
        (let* ((_g1178311801_
                (lambda (_g1178411797_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1178411797_)))
               (_g1178211867_
                (lambda (_g1178411805_)
                  (if (gx#stx-pair? _g1178411805_)
                      (let ((_e1178911808_ (gx#syntax-e _g1178411805_)))
                        (let ((_hd1178811812_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1178911808_)))
                              (_tl1178711815_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1178911808_))))
                          (if (gx#stx-pair? _tl1178711815_)
                              (let ((_e1179211818_
                                     (gx#syntax-e _tl1178711815_)))
                                (let ((_hd1179111822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1179211818_)))
                                      (_tl1179011825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1179211818_))))
                                  (if (gx#stx-pair? _tl1179011825_)
                                      (let ((_e1179511828_
                                             (gx#syntax-e _tl1179011825_)))
                                        (let ((_hd1179411832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1179511828_)))
                                              (_tl1179311835_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1179511828_))))
                                          (if (gx#stx-null? _tl1179311835_)
                                              ((lambda (_L11838_ _L11840_)
                                                 (let ((_datum-e11856_
                                                        (gx#stx-e _L11840_)))
                                                   (if (or (symbol? _datum-e11856_)
                                                           (keyword?
                                                            _datum-e11856_)
                                                           (immediate?
                                                            _datum-e11856_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L11840_ '()))
                           (cons _L11838_ '())))
               (if (number? _datum-e11856_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11840_ '()))
                               (cons _L11838_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11840_ '()))
                               (cons _L11838_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1179411832_
                                               _hd1179111822_)
                                              (_g1178311801_ _g1178411805_))))
                                      (_g1178311801_ _g1178411805_))))
                              (_g1178311801_ _g1178411805_))))
                      (_g1178311801_ _g1178411805_)))))
          (_g1178211867_ _stx11780_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11871_)
        (let* ((_g1187511899_
                (lambda (_g1187611895_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1187611895_)))
               (_g1187411984_
                (lambda (_g1187611903_)
                  (if (gx#stx-pair? _g1187611903_)
                      (let ((_e1188111906_ (gx#syntax-e _g1187611903_)))
                        (let ((_hd1188011910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1188111906_)))
                              (_tl1187911913_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1188111906_))))
                          (if (gx#stx-pair? _tl1187911913_)
                              (let ((_e1188411916_
                                     (gx#syntax-e _tl1187911913_)))
                                (let ((_hd1188311920_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1188411916_)))
                                      (_tl1188211923_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1188411916_))))
                                  (if (gx#stx-pair/null? _tl1188211923_)
                                      (let ((_g42674_
                                             (gx#syntax-split-splice
                                              _tl1188211923_
                                              '0)))
                                        (begin
                                          (let ((_g42675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42674_)
                                                       (##vector-length
                                                        _g42674_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42675_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42675_)))
                                          (let ((_target1188511926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42674_ 0)))
                                                (_tl1188711929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42674_ 1))))
                                            (if (gx#stx-null? _tl1188711929_)
                                                (letrec ((_loop1188811932_
                                                          (lambda (_hd1188611936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1189211939_)
                    (if (gx#stx-pair? _hd1188611936_)
                        (let ((_e1188911942_ (gx#syntax-e _hd1188611936_)))
                          (let ((_lp-hd1189011946_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1188911942_)))
                                (_lp-tl1189111949_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1188911942_))))
                            (_loop1188811932_
                             _lp-tl1189111949_
                             (cons _lp-hd1189011946_ _K1189211939_))))
                        (let ((_K1189311952_ (reverse _K1189211939_)))
                          ((lambda (_L11956_ _L11958_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _L11958_
                                               (foldr (lambda (_g1197511978_
                                                               _g1197611981_)
                                                        (cons _g1197511978_
                                                              _g1197611981_))
                                                      '()
                                                      _L11956_)))))
                           _K1189311952_
                           _hd1188311920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1188811932_
                                                   _target1188511926_
                                                   '()))
                                                (_g1187511899_
                                                 _g1187611903_)))))
                                      (_g1187511899_ _g1187611903_))))
                              (_g1187511899_ _g1187611903_))))
                      (_g1187511899_ _g1187611903_)))))
          (_g1187411984_ _$stx11871_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx11989_)
        (let* ((___stx3841038411_ _stx11989_)
               (_g1199612092_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3841038411_))))
          (let ((___kont3841338414_
                 (lambda (_L12569_ _L12571_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (___kont3841538416_
                 (lambda (_L12511_ _L12513_ _L12514_) _L12511_))
                (___kont3841738418_
                 (lambda (_L12408_ _L12410_ _L12411_ _L12412_)
                   (let* ((_g1243312441_
                           (lambda (_g1243412437_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1243412437_)))
                          (_g1243212460_
                           (lambda (_g1243412445_)
                             ((lambda (_L12448_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##fx=)
                                                    (cons _L12411_
                                                          (cons _L12448_ '())))
                                              (cons _L12410_
                                                    (cons _L12408_ '()))))))
                              _g1243412445_))))
                     (_g1243212460_ (gx#stx-e _L12412_)))))
                (___kont3841938420_
                 (lambda (_L12258_ _L12260_ _L12261_ _L12262_ _L12263_)
                   (let* ((_g1228712302_
                           (lambda (_g1228812298_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1228812298_)))
                          (_g1228612347_
                           (lambda (_g1228812306_)
                             (if (gx#stx-pair? _g1228812306_)
                                 (let ((_e1229312309_
                                        (gx#syntax-e _g1228812306_)))
                                   (let ((_hd1229212313_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1229312309_)))
                                         (_tl1229112316_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1229312309_))))
                                     (if (gx#stx-pair? _tl1229112316_)
                                         (let ((_e1229612319_
                                                (gx#syntax-e _tl1229112316_)))
                                           (let ((_hd1229512323_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1229612319_)))
                                                 (_tl1229412326_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1229612319_))))
                                             (if (gx#stx-null? _tl1229412326_)
                                                 ((lambda (_L12329_ _L12331_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx=)
                                (cons _L12262_ (cons _L12331_ '())))
                          (cons _L12261_
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _L12262_
                                                              (cons _L12329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L12260_
                                                        (cons _L12258_ '()))))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1229512323_
                                                  _hd1229212313_)
                                                 (_g1228712302_
                                                  _g1228812306_))))
                                         (_g1228712302_ _g1228812306_))))
                                 (_g1228712302_ _g1228812306_)))))
                     (_g1228612347_
                      (list (gx#stx-e _L12263_) (fx1+ (gx#stx-e _L12263_)))))))
                (___kont3842138422_
                 (lambda (_L12159_ _L12161_ _L12162_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _L12162_
                               (cons _L12161_
                                     (foldr (lambda (_g1218212185_
                                                     _g1218312188_)
                                              (cons _g1218212185_
                                                    _g1218312188_))
                                            '()
                                            _L12159_)))))))
            (let ((___match3856738568_
                   (lambda (_e1207112099_
                            _hd1207012103_
                            _tl1206912106_
                            _e1207412109_
                            _hd1207312113_
                            _tl1207212116_
                            _e1207712119_
                            _hd1207612123_
                            _tl1207512126_
                            ___splice3842338424_
                            _target1207812129_
                            _tl1208012132_)
                     (letrec ((_loop1208112135_
                               (lambda (_hd1207912139_ _K1208512142_)
                                 (if (gx#stx-pair? _hd1207912139_)
                                     (let ((_e1208212145_
                                            (gx#syntax-e _hd1207912139_)))
                                       (let ((_lp-tl1208412152_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1208212145_)))
                                             (_lp-hd1208312149_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1208212145_))))
                                         (_loop1208112135_
                                          _lp-tl1208412152_
                                          (cons _lp-hd1208312149_
                                                _K1208512142_))))
                                     (let ((_K1208612155_
                                            (reverse _K1208512142_)))
                                       (___kont3842138422_
                                        _K1208612155_
                                        _hd1207612123_
                                        _hd1207312113_))))))
                       (_loop1208112135_ _target1207812129_ '())))))
              (if (gx#stx-pair? ___stx3841038411_)
                  (let ((_e1200212539_ (gx#syntax-e ___stx3841038411_)))
                    (let ((_tl1200012546_
                           (let () (declare (not safe)) (##cdr _e1200212539_)))
                          (_hd1200112543_
                           (let ()
                             (declare (not safe))
                             (##car _e1200212539_))))
                      (if (gx#stx-pair? _tl1200012546_)
                          (let ((_e1200512549_ (gx#syntax-e _tl1200012546_)))
                            (let ((_tl1200312556_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1200512549_)))
                                  (_hd1200412553_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1200512549_))))
                              (if (gx#stx-pair? _tl1200312556_)
                                  (let ((_e1200812559_
                                         (gx#syntax-e _tl1200312556_)))
                                    (let ((_tl1200612566_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1200812559_)))
                                          (_hd1200712563_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1200812559_))))
                                      (if (gx#stx-null? _tl1200612566_)
                                          (___kont3841338414_
                                           _hd1200712563_
                                           _hd1200412553_)
                                          (if (gx#stx-pair? _tl1200612566_)
                                              (let ((_e1202312501_
                                                     (gx#syntax-e
                                                      _tl1200612566_)))
                                                (let ((_tl1202112508_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1202312501_)))
                                                      (_hd1202212505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1202312501_))))
                                                  (if (gx#stx-null?
                                                       _tl1202112508_)
                                                      (___kont3841538416_
                                                       _hd1202212505_
                                                       _hd1200712563_
                                                       _hd1200412553_)
                                                      (if (gx#stx-pair?
                                                           _tl1202112508_)
                                                          (let ((_e1204212398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1202112508_)))
                    (let ((_tl1204012405_
                           (let () (declare (not safe)) (##cdr _e1204212398_)))
                          (_hd1204112402_
                           (let ()
                             (declare (not safe))
                             (##car _e1204212398_))))
                      (if (gx#stx-null? _tl1204012405_)
                          (___kont3841738418_
                           _hd1204112402_
                           _hd1202212505_
                           _hd1200712563_
                           _hd1200412553_)
                          (if (gx#stx-pair? _tl1204012405_)
                              (let ((_e1206512248_
                                     (gx#syntax-e _tl1204012405_)))
                                (let ((_tl1206312255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1206512248_)))
                                      (_hd1206412252_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1206512248_))))
                                  (if (gx#stx-null? _tl1206312255_)
                                      (___kont3841938420_
                                       _hd1206412252_
                                       _hd1204112402_
                                       _hd1202212505_
                                       _hd1200712563_
                                       _hd1200412553_)
                                      (if (gx#stx-pair/null? _tl1200612566_)
                                          (let ((___splice3842338424_
                                                 (gx#syntax-split-splice
                                                  _tl1200612566_
                                                  '0)))
                                            (let ((_tl1208012132_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3842338424_
                                                      '1)))
                                                  (_target1207812129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3842338424_
                                                      '0))))
                                              (if (gx#stx-null? _tl1208012132_)
                                                  (___match3856738568_
                                                   _e1200212539_
                                                   _hd1200112543_
                                                   _tl1200012546_
                                                   _e1200512549_
                                                   _hd1200412553_
                                                   _tl1200312556_
                                                   _e1200812559_
                                                   _hd1200712563_
                                                   _tl1200612566_
                                                   ___splice3842338424_
                                                   _target1207812129_
                                                   _tl1208012132_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1199612092_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1199612092_))))))
                              (if (gx#stx-pair/null? _tl1200612566_)
                                  (let ((___splice3842338424_
                                         (gx#syntax-split-splice
                                          _tl1200612566_
                                          '0)))
                                    (let ((_tl1208012132_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3842338424_
                                              '1)))
                                          (_target1207812129_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3842338424_
                                              '0))))
                                      (if (gx#stx-null? _tl1208012132_)
                                          (___match3856738568_
                                           _e1200212539_
                                           _hd1200112543_
                                           _tl1200012546_
                                           _e1200512549_
                                           _hd1200412553_
                                           _tl1200312556_
                                           _e1200812559_
                                           _hd1200712563_
                                           _tl1200612566_
                                           ___splice3842338424_
                                           _target1207812129_
                                           _tl1208012132_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1199612092_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1199612092_)))))))
                  (if (gx#stx-pair/null? _tl1200612566_)
                      (let ((___splice3842338424_
                             (gx#syntax-split-splice _tl1200612566_ '0)))
                        (let ((_tl1208012132_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3842338424_ '1)))
                              (_target1207812129_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3842338424_ '0))))
                          (if (gx#stx-null? _tl1208012132_)
                              (___match3856738568_
                               _e1200212539_
                               _hd1200112543_
                               _tl1200012546_
                               _e1200512549_
                               _hd1200412553_
                               _tl1200312556_
                               _e1200812559_
                               _hd1200712563_
                               _tl1200612566_
                               ___splice3842338424_
                               _target1207812129_
                               _tl1208012132_)
                              (let () (declare (not safe)) (_g1199612092_)))))
                      (let () (declare (not safe)) (_g1199612092_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1200612566_)
                                                  (let ((___splice3842338424_
                                                         (gx#syntax-split-splice
                                                          _tl1200612566_
                                                          '0)))
                                                    (let ((_tl1208012132_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3842338424_
                                                              '1)))
                                                          (_target1207812129_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3842338424_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1208012132_)
                                                          (___match3856738568_
                                                           _e1200212539_
                                                           _hd1200112543_
                                                           _tl1200012546_
                                                           _e1200512549_
                                                           _hd1200412553_
                                                           _tl1200312556_
                                                           _e1200812559_
                                                           _hd1200712563_
                                                           _tl1200612566_
                                                           ___splice3842338424_
                                                           _target1207812129_
                                                           _tl1208012132_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1199612092_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1199612092_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1199612092_)))))
                          (let () (declare (not safe)) (_g1199612092_)))))
                  (let () (declare (not safe)) (_g1199612092_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12591_)
        (letrec ((_split12594_
                  (lambda (_lst12955_ _mid12957_)
                    (let _lp12959_ ((_i12962_ '0)
                                    (_rest12964_ _lst12955_)
                                    (_left12965_ '()))
                      (if (fx< _i12962_ _mid12957_)
                          (_lp12959_
                           (fx1+ _i12962_)
                           (cdr _rest12964_)
                           (cons (car _rest12964_) _left12965_))
                          (values (reverse _left12965_) _rest12964_))))))
          (let* ((_g1259712625_
                  (lambda (_g1259812621_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1259812621_)))
                 (_g1259612951_
                  (lambda (_g1259812629_)
                    (if (gx#stx-pair? _g1259812629_)
                        (let ((_e1260412632_ (gx#syntax-e _g1259812629_)))
                          (let ((_hd1260312636_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1260412632_)))
                                (_tl1260212639_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1260412632_))))
                            (if (gx#stx-pair? _tl1260212639_)
                                (let ((_e1260712642_
                                       (gx#syntax-e _tl1260212639_)))
                                  (let ((_hd1260612646_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1260712642_)))
                                        (_tl1260512649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1260712642_))))
                                    (if (gx#stx-pair? _tl1260512649_)
                                        (let ((_e1261012652_
                                               (gx#syntax-e _tl1260512649_)))
                                          (let ((_hd1260912656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1261012652_)))
                                                (_tl1260812659_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1261012652_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1260812659_)
                                                (let ((_g42676_
                                                       (gx#syntax-split-splice
                                                        _tl1260812659_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42676_)
                         (##vector-length _g42676_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42677_ 2)))
                  (error "Context expects 2 values" _g42677_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1261112662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42676_
                                                              0)))
                                                          (_tl1261312665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42676_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1261312665_)
                                                          (letrec ((_loop1261412668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1261212672_ _K1261812675_)
                              (if (gx#stx-pair? _hd1261212672_)
                                  (let ((_e1261512678_
                                         (gx#syntax-e _hd1261212672_)))
                                    (let ((_lp-hd1261612682_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1261512678_)))
                                          (_lp-tl1261712685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1261512678_))))
                                      (_loop1261412668_
                                       _lp-tl1261712685_
                                       (cons _lp-hd1261612682_
                                             _K1261812675_))))
                                  (let ((_K1261912688_
                                         (reverse _K1261812675_)))
                                    ((lambda (_L12692_ _L12694_ _L12695_)
                                       (let* ((_len12725_
                                               (length (foldr (lambda (_g1271612719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1271712722_)
                        (cons _g1271612719_ _g1271712722_))
                      '()
                      _L12692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid12728_
                                               (quotient _len12725_ '2))
                                              (_g42678_
                                               (_split12594_
                                                (foldr (lambda (_g1273012733_
                                                                _g1273112736_)
                                                         (cons _g1273012733_
                                                               _g1273112736_))
                                                       '()
                                                       _L12692_)
                                                _mid12728_)))
                                         (begin
                                           (let ((_g42679_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g42678_)
                                                        (##vector-length
                                                         _g42678_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g42679_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g42679_)))
                                           (let ((_left12739_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g42678_ 0)))
                                                 (_right12741_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g42678_
                                                     1))))
                                             (let ()
                                               (let* ((_g1274512786_
                                                       (lambda (_g1274612782_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1274612782_)))
                                                      (_g1274412947_
                                                       (lambda (_g1274612790_)
                                                         (if (gx#stx-pair?
                                                              _g1274612790_)
                                                             (let ((_e1275312793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1274612790_)))
                       (let ((_hd1275212797_
                              (let ()
                                (declare (not safe))
                                (##car _e1275312793_)))
                             (_tl1275112800_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1275312793_))))
                         (if (gx#stx-pair? _tl1275112800_)
                             (let ((_e1275612803_
                                    (gx#syntax-e _tl1275112800_)))
                               (let ((_hd1275512807_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1275612803_)))
                                     (_tl1275412810_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1275612803_))))
                                 (if (gx#stx-pair/null? _hd1275512807_)
                                     (let ((_g42680_
                                            (gx#syntax-split-splice
                                             _hd1275512807_
                                             '0)))
                                       (begin
                                         (let ((_g42681_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42680_)
                                                      (##vector-length
                                                       _g42680_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42681_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42681_)))
                                         (let ((_target1275712813_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42680_ 0)))
                                               (_tl1275912816_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42680_ 1))))
                                           (if (gx#stx-null? _tl1275912816_)
                                               (letrec ((_loop1276012819_
                                                         (lambda (_hd1275812823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1276412826_)
                   (if (gx#stx-pair? _hd1275812823_)
                       (let ((_e1276112829_ (gx#syntax-e _hd1275812823_)))
                         (let ((_lp-hd1276212833_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1276112829_)))
                               (_lp-tl1276312836_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1276112829_))))
                           (_loop1276012819_
                            _lp-tl1276312836_
                            (cons _lp-hd1276212833_ _K-left1276412826_))))
                       (let ((_K-left1276512839_ (reverse _K-left1276412826_)))
                         (if (gx#stx-pair? _tl1275412810_)
                             (let ((_e1276812843_
                                    (gx#syntax-e _tl1275412810_)))
                               (let ((_hd1276712847_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1276812843_)))
                                     (_tl1276612850_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1276812843_))))
                                 (if (gx#stx-pair/null? _hd1276712847_)
                                     (let ((_g42682_
                                            (gx#syntax-split-splice
                                             _hd1276712847_
                                             '0)))
                                       (begin
                                         (let ((_g42683_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42682_)
                                                      (##vector-length
                                                       _g42682_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42683_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42683_)))
                                         (let ((_target1276912853_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42682_ 0)))
                                               (_tl1277112856_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42682_ 1))))
                                           (if (gx#stx-null? _tl1277112856_)
                                               (letrec ((_loop1277212859_
                                                         (lambda (_hd1277012863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1277612866_)
                   (if (gx#stx-pair? _hd1277012863_)
                       (let ((_e1277312869_ (gx#syntax-e _hd1277012863_)))
                         (let ((_lp-hd1277412873_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1277312869_)))
                               (_lp-tl1277512876_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1277312869_))))
                           (_loop1277212859_
                            _lp-tl1277512876_
                            (cons _lp-hd1277412873_ _K-right1277612866_))))
                       (let ((_K-right1277712879_
                              (reverse _K-right1277612866_)))
                         (if (gx#stx-pair? _tl1276612850_)
                             (let ((_e1278012883_
                                    (gx#syntax-e _tl1276612850_)))
                               (let ((_hd1277912887_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1278012883_)))
                                     (_tl1277812890_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1278012883_))))
                                 (if (gx#stx-null? _tl1277812890_)
                                     ((lambda (_L12893_
                                               _L12895_
                                               _L12896_
                                               _L12897_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L12694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12893_ '())))
              (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                          (cons _L12695_
                                (cons _L12694_
                                      (foldr (lambda (_g1293212935_
                                                      _g1293312938_)
                                               (cons _g1293212935_
                                                     _g1293312938_))
                                             '()
                                             _L12896_))))
                    (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons _L12893_
                                      (cons _L12694_
                                            (foldr (lambda (_g1293012941_
                                                            _g1293112944_)
                                                     (cons _g1293012941_
                                                           _g1293112944_))
                                                   '()
                                                   _L12895_))))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd1277912887_
                                      _K-right1277712879_
                                      _K-left1276512839_
                                      _hd1275212797_)
                                     (_g1274512786_ _g1274612790_))))
                             (_g1274512786_ _g1274612790_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1277212859_
                                                  _target1276912853_
                                                  '()))
                                               (_g1274512786_
                                                _g1274612790_)))))
                                     (_g1274512786_ _g1274612790_))))
                             (_g1274512786_ _g1274612790_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1276012819_
                                                  _target1275712813_
                                                  '()))
                                               (_g1274512786_
                                                _g1274612790_)))))
                                     (_g1274512786_ _g1274612790_))))
                             (_g1274512786_ _g1274612790_))))
                     (_g1274512786_ _g1274612790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1274412947_
                                                  (list _mid12728_
                                                        _left12739_
                                                        _right12741_
                                                        (fx+ _mid12728_
                                                             (gx#stx-e
                                                              _L12695_))))))))))
                                     _K1261912688_
                                     _hd1260912656_
                                     _hd1260612646_))))))
                    (_loop1261412668_ _target1261112662_ '()))
                  (_g1259712625_ _g1259812629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1259712625_
                                                 _g1259812629_))))
                                        (_g1259712625_ _g1259812629_))))
                                (_g1259712625_ _g1259812629_))))
                        (_g1259712625_ _g1259812629_)))))
            (_g1259612951_ _stx12591_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12971_)
        (let* ((_g1297513046_
                (lambda (_g1297613042_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1297613042_)))
               (_g1297413335_
                (lambda (_g1297613050_)
                  (if (gx#stx-pair? _g1297613050_)
                      (let ((_e1298513053_ (gx#syntax-e _g1297613050_)))
                        (let ((_hd1298413057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1298513053_)))
                              (_tl1298313060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1298513053_))))
                          (if (gx#stx-pair? _tl1298313060_)
                              (let ((_e1298813063_
                                     (gx#syntax-e _tl1298313060_)))
                                (let ((_hd1298713067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1298813063_)))
                                      (_tl1298613070_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1298813063_))))
                                  (if (gx#stx-pair/null? _hd1298713067_)
                                      (let ((_g42684_
                                             (gx#syntax-split-splice
                                              _hd1298713067_
                                              '0)))
                                        (begin
                                          (let ((_g42685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42684_)
                                                       (##vector-length
                                                        _g42684_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42685_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42685_)))
                                          (let ((_target1298913073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42684_ 0)))
                                                (_tl1299113076_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42684_ 1))))
                                            (if (gx#stx-null? _tl1299113076_)
                                                (letrec ((_loop1299213079_
                                                          (lambda (_hd1299013083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1299613086_
                           _init1299713088_
                           _var1299813090_)
                    (if (gx#stx-pair? _hd1299013083_)
                        (let ((_e1299313093_ (gx#syntax-e _hd1299013083_)))
                          (let ((_lp-hd1299413097_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1299313093_)))
                                (_lp-tl1299513100_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1299313093_))))
                            (if (gx#stx-pair? _lp-hd1299413097_)
                                (let ((_e1300413103_
                                       (gx#syntax-e _lp-hd1299413097_)))
                                  (let ((_hd1300313107_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1300413103_)))
                                        (_tl1300213110_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1300413103_))))
                                    (if (gx#stx-pair? _tl1300213110_)
                                        (let ((_e1300713113_
                                               (gx#syntax-e _tl1300213110_)))
                                          (let ((_hd1300613117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1300713113_)))
                                                (_tl1300513120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1300713113_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1300513120_)
                                                (let ((_g42690_
                                                       (gx#syntax-split-splice
                                                        _tl1300513120_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42691_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42690_)
                         (##vector-length _g42690_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42691_ 2)))
                  (error "Context expects 2 values" _g42691_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1300813123_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42690_
                                                              0)))
                                                          (_tl1301013126_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42690_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1301013126_)
                                                          (letrec ((_loop1301113129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1300913133_ _step1301513136_)
                              (if (gx#stx-pair? _hd1300913133_)
                                  (let ((_e1301213139_
                                         (gx#syntax-e _hd1300913133_)))
                                    (let ((_lp-hd1301313143_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1301213139_)))
                                          (_lp-tl1301413146_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1301213139_))))
                                      (_loop1301113129_
                                       _lp-tl1301413146_
                                       (cons _lp-hd1301313143_
                                             _step1301513136_))))
                                  (let ((_step1301613149_
                                         (reverse _step1301513136_)))
                                    (_loop1299213079_
                                     _lp-tl1299513100_
                                     (cons _step1301613149_ _step1299613086_)
                                     (cons _hd1300613117_ _init1299713088_)
                                     (cons _hd1300313107_
                                           _var1299813090_)))))))
                    (_loop1301113129_ _target1300813123_ '()))
                  (_g1297513046_ _g1297613050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1297513046_
                                                 _g1297613050_))))
                                        (_g1297513046_ _g1297613050_))))
                                (_g1297513046_ _g1297613050_))))
                        (let ((_step1299913153_ (reverse _step1299613086_))
                              (_init1300013156_ (reverse _init1299713088_))
                              (_var1300113158_ (reverse _var1299813090_)))
                          (if (gx#stx-pair? _tl1298613070_)
                              (let ((_e1301913161_
                                     (gx#syntax-e _tl1298613070_)))
                                (let ((_hd1301813165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1301913161_)))
                                      (_tl1301713168_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1301913161_))))
                                  (if (gx#stx-pair? _hd1301813165_)
                                      (let ((_e1302213171_
                                             (gx#syntax-e _hd1301813165_)))
                                        (let ((_hd1302113175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1302213171_)))
                                              (_tl1302013178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1302213171_))))
                                          (if (gx#stx-pair/null?
                                               _tl1302013178_)
                                              (let ((_g42686_
                                                     (gx#syntax-split-splice
                                                      _tl1302013178_
                                                      '0)))
                                                (begin
                                                  (let ((_g42687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42686_)
                                                               (##vector-length
                                                                _g42686_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42687_ 2)))
                (error "Context expects 2 values" _g42687_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1302313181_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42686_
                                                            0)))
                                                        (_tl1302513184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42686_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1302513184_)
                                                        (letrec ((_loop1302613187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1302413191_ _fini1303013194_)
                            (if (gx#stx-pair? _hd1302413191_)
                                (let ((_e1302713197_
                                       (gx#syntax-e _hd1302413191_)))
                                  (let ((_lp-hd1302813201_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1302713197_)))
                                        (_lp-tl1302913204_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1302713197_))))
                                    (_loop1302613187_
                                     _lp-tl1302913204_
                                     (cons _lp-hd1302813201_
                                           _fini1303013194_))))
                                (let ((_fini1303113207_
                                       (reverse _fini1303013194_)))
                                  (if (gx#stx-pair/null? _tl1301713168_)
                                      (let ((_g42688_
                                             (gx#syntax-split-splice
                                              _tl1301713168_
                                              '0)))
                                        (begin
                                          (let ((_g42689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42688_)
                                                       (##vector-length
                                                        _g42688_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42689_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42689_)))
                                          (let ((_target1303213211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42688_ 0)))
                                                (_tl1303413214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42688_ 1))))
                                            (if (gx#stx-null? _tl1303413214_)
                                                (letrec ((_loop1303513217_
                                                          (lambda (_hd1303313221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1303913224_)
                    (if (gx#stx-pair? _hd1303313221_)
                        (let ((_e1303613227_ (gx#syntax-e _hd1303313221_)))
                          (let ((_lp-hd1303713231_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1303613227_)))
                                (_lp-tl1303813234_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1303613227_))))
                            (_loop1303513217_
                             _lp-tl1303813234_
                             (cons _lp-hd1303713231_ _body1303913224_))))
                        (let ((_body1304013237_ (reverse _body1303913224_)))
                          ((lambda (_L13241_
                                    _L13243_
                                    _L13244_
                                    _L13245_
                                    _L13246_
                                    _L13247_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_g1328013283_ _g1328113286_)
                                           (cons _g1328013283_ _g1328113286_))
                                         '()
                                         _L13247_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L13246_
                                                      _L13247_)
                                                     (foldr (lambda (_g1329713301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1329813304_
                             _g1329913306_)
                      (cons (cons _g1329813304_ (cons _g1329713301_ '()))
                            _g1329913306_))
                    '()
                    _L13246_
                    _L13247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _L13244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_g1329513309_
                                                               _g1329613312_)
                                                        (cons _g1329513309_
                                                              _g1329613312_))
                                                      '()
                                                      _L13243_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_g1328813315_
                                                               _g1328913318_)
                                                        (cons _g1328813315_
                                                              _g1328913318_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets _L13245_ _L13247_)
                            (foldr (lambda (_g1329013321_
                                            _g1329113324_
                                            _g1329213326_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _g1329113324_
                                                       (foldr (lambda (_g1329313329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1329413332_)
                        (cons _g1329313329_ _g1329413332_))
                      '()
                      _g1329013321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1329213326_))
                                   '()
                                   _L13245_
                                   _L13247_)))
                    '())
              _L13241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_g1297513046_ _g1297613050_)))
                           _body1304013237_
                           _fini1303113207_
                           _hd1302113175_
                           _step1299913153_
                           _init1300013156_
                           _var1300113158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1303513217_
                                                   _target1303213211_
                                                   '()))
                                                (_g1297513046_
                                                 _g1297613050_)))))
                                      (_g1297513046_ _g1297613050_)))))))
                  (_loop1302613187_ _target1302313181_ '()))
                (_g1297513046_ _g1297613050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1297513046_ _g1297613050_))))
                                      (_g1297513046_ _g1297613050_))))
                              (_g1297513046_ _g1297613050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1299213079_
                                                   _target1298913073_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1297513046_
                                                 _g1297613050_)))))
                                      (_g1297513046_ _g1297613050_))))
                              (_g1297513046_ _g1297613050_))))
                      (_g1297513046_ _g1297613050_)))))
          (_g1297413335_ _$stx12971_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13343_)
        (let* ((_g1334713370_
                (lambda (_g1334813366_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1334813366_)))
               (_g1334613441_
                (lambda (_g1334813374_)
                  (if (gx#stx-pair? _g1334813374_)
                      (let ((_e1335513377_ (gx#syntax-e _g1334813374_)))
                        (let ((_hd1335413381_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1335513377_)))
                              (_tl1335313384_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1335513377_))))
                          (if (gx#stx-pair? _tl1335313384_)
                              (let ((_e1335813387_
                                     (gx#syntax-e _tl1335313384_)))
                                (let ((_hd1335713391_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1335813387_)))
                                      (_tl1335613394_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1335813387_))))
                                  (if (gx#stx-pair? _tl1335613394_)
                                      (let ((_e1336113397_
                                             (gx#syntax-e _tl1335613394_)))
                                        (let ((_hd1336013401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1336113397_)))
                                              (_tl1335913404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1336113397_))))
                                          (if (gx#stx-pair? _hd1336013401_)
                                              (let ((_e1336413407_
                                                     (gx#syntax-e
                                                      _hd1336013401_)))
                                                (let ((_hd1336313411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1336413407_)))
                                                      (_tl1336213414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1336413407_))))
                                                  ((lambda (_L13417_
                                                            _L13419_
                                                            _L13420_
                                                            _L13421_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13420_ '()))
                                     _L13419_)
                               _L13417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1335913404_
                                                   _tl1336213414_
                                                   _hd1336313411_
                                                   _hd1335713391_)))
                                              (_g1334713370_ _g1334813374_))))
                                      (_g1334713370_ _g1334813374_))))
                              (_g1334713370_ _g1334813374_))))
                      (_g1334713370_ _g1334813374_)))))
          (_g1334613441_ _$stx13343_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13445_)
        (let* ((___stx3857038571_ _$stx13445_)
               (_g1345013481_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3857038571_))))
          (let ((___kont3857338574_ (lambda (_L13593_) _L13593_))
                (___kont3857538576_
                 (lambda (_L13538_ _L13540_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _L13540_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_g1355713560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1355813563_)
                        (cons _g1355713560_ _g1355813563_))
                      '()
                      _L13538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((___match3861338614_
                   (lambda (_e1346313488_
                            _hd1346213492_
                            _tl1346113495_
                            _e1346613498_
                            _hd1346513502_
                            _tl1346413505_
                            ___splice3857738578_
                            _target1346713508_
                            _tl1346913511_)
                     (letrec ((_loop1347013514_
                               (lambda (_hd1346813518_ _rest1347413521_)
                                 (if (gx#stx-pair? _hd1346813518_)
                                     (let ((_e1347113524_
                                            (gx#syntax-e _hd1346813518_)))
                                       (let ((_lp-tl1347313531_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1347113524_)))
                                             (_lp-hd1347213528_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1347113524_))))
                                         (_loop1347013514_
                                          _lp-tl1347313531_
                                          (cons _lp-hd1347213528_
                                                _rest1347413521_))))
                                     (let ((_rest1347513534_
                                            (reverse _rest1347413521_)))
                                       (___kont3857538576_
                                        _rest1347513534_
                                        _hd1346513502_))))))
                       (_loop1347013514_ _target1346713508_ '())))))
              (if (gx#stx-pair? ___stx3857038571_)
                  (let ((_e1345513573_ (gx#syntax-e ___stx3857038571_)))
                    (let ((_tl1345313580_
                           (let () (declare (not safe)) (##cdr _e1345513573_)))
                          (_hd1345413577_
                           (let ()
                             (declare (not safe))
                             (##car _e1345513573_))))
                      (if (gx#stx-pair? _tl1345313580_)
                          (let ((_e1345813583_ (gx#syntax-e _tl1345313580_)))
                            (let ((_tl1345613590_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1345813583_)))
                                  (_hd1345713587_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1345813583_))))
                              (if (gx#stx-null? _tl1345613590_)
                                  (___kont3857338574_ _hd1345713587_)
                                  (if (gx#stx-pair/null? _tl1345613590_)
                                      (let ((___splice3857738578_
                                             (gx#syntax-split-splice
                                              _tl1345613590_
                                              '0)))
                                        (let ((_tl1346913511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3857738578_
                                                  '1)))
                                              (_target1346713508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3857738578_
                                                  '0))))
                                          (if (gx#stx-null? _tl1346913511_)
                                              (___match3861338614_
                                               _e1345513573_
                                               _hd1345413577_
                                               _tl1345313580_
                                               _e1345813583_
                                               _hd1345713587_
                                               _tl1345613590_
                                               ___splice3857738578_
                                               _target1346713508_
                                               _tl1346913511_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1345013481_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1345013481_))))))
                          (let () (declare (not safe)) (_g1345013481_)))))
                  (let () (declare (not safe)) (_g1345013481_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13611_)
        (let* ((___stx3861638617_ _$stx13611_)
               (_g1361713670_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3861638617_))))
          (let ((___kont3861938620_
                 (lambda (_L13872_ _L13874_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13874_ (cons _L13872_ '())) '())
                               (cons _L13874_ '())))))
                (___kont3862138622_
                 (lambda (_L13816_ _L13818_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _L13818_ (cons _L13816_ '())) '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _L13818_)
                                     '())))))
                (___kont3862338624_
                 (lambda (_L13737_ _L13739_ _L13740_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13740_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _L13739_
                                                             (foldr (lambda (_g1376013763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1376113766_)
                              (cons _g1376013763_ _g1376113766_))
                            '()
                            _L13737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _L13740_ '()))))))
            (let* ((___match3870338704_
                    (lambda (_e1364913677_
                             _hd1364813681_
                             _tl1364713684_
                             _e1365213687_
                             _hd1365113691_
                             _tl1365013694_
                             _e1365513697_
                             _hd1365413701_
                             _tl1365313704_
                             ___splice3862538626_
                             _target1365613707_
                             _tl1365813710_)
                      (letrec ((_loop1365913713_
                                (lambda (_hd1365713717_ _body1366313720_)
                                  (if (gx#stx-pair? _hd1365713717_)
                                      (let ((_e1366013723_
                                             (gx#syntax-e _hd1365713717_)))
                                        (let ((_lp-tl1366213730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1366013723_)))
                                              (_lp-hd1366113727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1366013723_))))
                                          (_loop1365913713_
                                           _lp-tl1366213730_
                                           (cons _lp-hd1366113727_
                                                 _body1366313720_))))
                                      (let ((_body1366413733_
                                             (reverse _body1366313720_)))
                                        (let ((_L13737_ _body1366413733_)
                                              (_L13739_ _tl1365313704_)
                                              (_L13740_ _hd1365413701_))
                                          (if (gx#identifier? _L13740_)
                                              (___kont3862338624_
                                               _L13737_
                                               _L13739_
                                               _L13740_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1361713670_)))))))))
                        (_loop1365913713_ _target1365613707_ '()))))
                   (___match3867738678_
                    (lambda (_e1363413776_
                             _hd1363313780_
                             _tl1363213783_
                             _e1363713786_
                             _hd1363613790_
                             _tl1363513793_
                             _e1364013796_
                             _hd1363913800_
                             _tl1363813803_
                             _e1364313806_
                             _hd1364213810_
                             _tl1364113813_)
                      (let ((_L13816_ _hd1364213810_)
                            (_L13818_ _tl1363813803_))
                        (if (gx#identifier-list? _L13818_)
                            (___kont3862138622_ _L13816_ _L13818_)
                            (if (gx#stx-pair/null? _tl1363513793_)
                                (let ((___splice3862538626_
                                       (gx#syntax-split-splice
                                        _tl1363513793_
                                        '0)))
                                  (let ((_tl1365813710_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3862538626_
                                            '1)))
                                        (_target1365613707_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3862538626_
                                            '0))))
                                    (if (gx#stx-null? _tl1365813710_)
                                        (___match3870338704_
                                         _e1363413776_
                                         _hd1363313780_
                                         _tl1363213783_
                                         _e1363713786_
                                         _hd1363613790_
                                         _tl1363513793_
                                         _e1364013796_
                                         _hd1363913800_
                                         _tl1363813803_
                                         ___splice3862538626_
                                         _target1365613707_
                                         _tl1365813710_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1361713670_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1361713670_)))))))
                   (___match3864738648_
                    (lambda (_e1362313842_
                             _hd1362213846_
                             _tl1362113849_
                             _e1362613852_
                             _hd1362513856_
                             _tl1362413859_
                             _e1362913862_
                             _hd1362813866_
                             _tl1362713869_)
                      (let ((_L13872_ _hd1362813866_)
                            (_L13874_ _hd1362513856_))
                        (if (gx#identifier? _L13874_)
                            (___kont3861938620_ _L13872_ _L13874_)
                            (if (gx#stx-pair? _hd1362513856_)
                                (let ((_e1364013796_
                                       (gx#syntax-e _hd1362513856_)))
                                  (let ((_tl1363813803_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1364013796_)))
                                        (_hd1363913800_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1364013796_))))
                                    (if (gx#identifier? _hd1363913800_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g42692_|
                                             _hd1363913800_)
                                            (___match3867738678_
                                             _e1362313842_
                                             _hd1362213846_
                                             _tl1362113849_
                                             _e1362613852_
                                             _hd1362513856_
                                             _tl1362413859_
                                             _e1364013796_
                                             _hd1363913800_
                                             _tl1363813803_
                                             _e1362913862_
                                             _hd1362813866_
                                             _tl1362713869_)
                                            (if (gx#stx-pair/null?
                                                 _tl1362413859_)
                                                (let ((___splice3862538626_
                                                       (gx#syntax-split-splice
                                                        _tl1362413859_
                                                        '0)))
                                                  (let ((_tl1365813710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3862538626_
                                                            '1)))
                                                        (_target1365613707_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3862538626_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1365813710_)
                                                        (___match3870338704_
                                                         _e1362313842_
                                                         _hd1362213846_
                                                         _tl1362113849_
                                                         _e1362613852_
                                                         _hd1362513856_
                                                         _tl1362413859_
                                                         _e1364013796_
                                                         _hd1363913800_
                                                         _tl1363813803_
                                                         ___splice3862538626_
                                                         _target1365613707_
                                                         _tl1365813710_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1361713670_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1361713670_))))
                                        (if (gx#stx-pair/null? _tl1362413859_)
                                            (let ((___splice3862538626_
                                                   (gx#syntax-split-splice
                                                    _tl1362413859_
                                                    '0)))
                                              (let ((_tl1365813710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3862538626_
                                                        '1)))
                                                    (_target1365613707_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3862538626_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1365813710_)
                                                    (___match3870338704_
                                                     _e1362313842_
                                                     _hd1362213846_
                                                     _tl1362113849_
                                                     _e1362613852_
                                                     _hd1362513856_
                                                     _tl1362413859_
                                                     _e1364013796_
                                                     _hd1363913800_
                                                     _tl1363813803_
                                                     ___splice3862538626_
                                                     _target1365613707_
                                                     _tl1365813710_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1361713670_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1361713670_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1361713670_))))))))
              (if (gx#stx-pair? ___stx3861638617_)
                  (let ((_e1362313842_ (gx#syntax-e ___stx3861638617_)))
                    (let ((_tl1362113849_
                           (let () (declare (not safe)) (##cdr _e1362313842_)))
                          (_hd1362213846_
                           (let ()
                             (declare (not safe))
                             (##car _e1362313842_))))
                      (if (gx#stx-pair? _tl1362113849_)
                          (let ((_e1362613852_ (gx#syntax-e _tl1362113849_)))
                            (let ((_tl1362413859_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1362613852_)))
                                  (_hd1362513856_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1362613852_))))
                              (if (gx#stx-pair? _tl1362413859_)
                                  (let ((_e1362913862_
                                         (gx#syntax-e _tl1362413859_)))
                                    (let ((_tl1362713869_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1362913862_)))
                                          (_hd1362813866_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1362913862_))))
                                      (if (gx#stx-null? _tl1362713869_)
                                          (___match3864738648_
                                           _e1362313842_
                                           _hd1362213846_
                                           _tl1362113849_
                                           _e1362613852_
                                           _hd1362513856_
                                           _tl1362413859_
                                           _e1362913862_
                                           _hd1362813866_
                                           _tl1362713869_)
                                          (if (gx#stx-pair? _hd1362513856_)
                                              (let ((_e1364013796_
                                                     (gx#syntax-e
                                                      _hd1362513856_)))
                                                (let ((_tl1363813803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1364013796_)))
                                                      (_hd1363913800_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1364013796_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1362413859_)
                                                      (let ((___splice3862538626_
                                                             (gx#syntax-split-splice
                                                              _tl1362413859_
                                                              '0)))
                                                        (let ((_tl1365813710_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3862538626_ '1)))
                      (_target1365613707_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3862538626_ '0))))
                  (if (gx#stx-null? _tl1365813710_)
                      (___match3870338704_
                       _e1362313842_
                       _hd1362213846_
                       _tl1362113849_
                       _e1362613852_
                       _hd1362513856_
                       _tl1362413859_
                       _e1364013796_
                       _hd1363913800_
                       _tl1363813803_
                       ___splice3862538626_
                       _target1365613707_
                       _tl1365813710_)
                      (let () (declare (not safe)) (_g1361713670_)))))
              (let () (declare (not safe)) (_g1361713670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1361713670_))))))
                                  (if (gx#stx-pair? _hd1362513856_)
                                      (let ((_e1364013796_
                                             (gx#syntax-e _hd1362513856_)))
                                        (let ((_tl1363813803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1364013796_)))
                                              (_hd1363913800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1364013796_))))
                                          (if (gx#stx-pair/null?
                                               _tl1362413859_)
                                              (let ((___splice3862538626_
                                                     (gx#syntax-split-splice
                                                      _tl1362413859_
                                                      '0)))
                                                (let ((_tl1365813710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3862538626_
                                                          '1)))
                                                      (_target1365613707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3862538626_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1365813710_)
                                                      (___match3870338704_
                                                       _e1362313842_
                                                       _hd1362213846_
                                                       _tl1362113849_
                                                       _e1362613852_
                                                       _hd1362513856_
                                                       _tl1362413859_
                                                       _e1364013796_
                                                       _hd1363913800_
                                                       _tl1363813803_
                                                       ___splice3862538626_
                                                       _target1365613707_
                                                       _tl1365813710_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1361713670_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1361713670_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1361713670_))))))
                          (let () (declare (not safe)) (_g1361713670_)))))
                  (let () (declare (not safe)) (_g1361713670_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13894_)
        (letrec ((_let-bind?13897_
                  (lambda (_x14820_)
                    (let* ((___stx3870638707_ _x14820_)
                           (_g1482514844_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3870638707_))))
                      (let ((___kont3870938710_
                             (lambda (_L14912_ _L14914_)
                               (_let-head?13900_ _L14914_)))
                            (___kont3871138712_ (lambda (_L14872_) '#t))
                            (___kont3871338714_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx3870638707_)
                            (let ((_e1483114892_
                                   (gx#syntax-e ___stx3870638707_)))
                              (let ((_tl1482914899_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1483114892_)))
                                    (_hd1483014896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1483114892_))))
                                (if (gx#stx-pair? _tl1482914899_)
                                    (let ((_e1483414902_
                                           (gx#syntax-e _tl1482914899_)))
                                      (let ((_tl1483214909_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1483414902_)))
                                            (_hd1483314906_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1483414902_))))
                                        (if (gx#stx-null? _tl1483214909_)
                                            (___kont3870938710_
                                             _hd1483314906_
                                             _hd1483014896_)
                                            (___kont3871338714_))))
                                    (if (gx#stx-null? _tl1482914899_)
                                        (___kont3871138712_ _hd1483014896_)
                                        (___kont3871338714_)))))
                            (___kont3871338714_))))))
                 (_let-bind13899_
                  (lambda (_x14722_)
                    (let* ((___stx3874038741_ _x14722_)
                           (_g1472614745_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3874038741_))))
                      (let ((___kont3874338744_
                             (lambda (_L14801_ _L14803_) _x14722_))
                            (___kont3874538746_
                             (lambda (_L14762_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _L14762_ '())))))
                        (if (gx#stx-pair? ___stx3874038741_)
                            (let ((_e1473214781_
                                   (gx#syntax-e ___stx3874038741_)))
                              (let ((_tl1473014788_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1473214781_)))
                                    (_hd1473114785_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1473214781_))))
                                (if (gx#stx-pair? _tl1473014788_)
                                    (let ((_e1473514791_
                                           (gx#syntax-e _tl1473014788_)))
                                      (let ((_tl1473314798_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1473514791_)))
                                            (_hd1473414795_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1473514791_))))
                                        (if (gx#stx-null? _tl1473314798_)
                                            (___kont3874338744_
                                             _hd1473414795_
                                             _hd1473114785_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1472614745_)))))
                                    (if (gx#stx-null? _tl1473014788_)
                                        (___kont3874538746_ _hd1473114785_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1472614745_))))))
                            (let () (declare (not safe)) (_g1472614745_)))))))
                 (_let-head?13900_
                  (lambda (_x14662_)
                    (let* ((___stx3877238773_ _x14662_)
                           (_g1466614677_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3877238773_))))
                      (let ((___kont3877538776_
                             (lambda (_L14705_)
                               (gx#stx-andmap gx#identifier? _L14705_)))
                            (___kont3877738778_
                             (lambda () (gx#identifier? _x14662_))))
                        (if (gx#stx-pair? ___stx3877238773_)
                            (let ((_e1467114695_
                                   (gx#syntax-e ___stx3877238773_)))
                              (let ((_tl1466914702_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1467114695_)))
                                    (_hd1467014699_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1467114695_))))
                                (if (gx#identifier? _hd1467014699_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g42693_|
                                         _hd1467014699_)
                                        (___kont3877538776_ _tl1466914702_)
                                        (___kont3877738778_))
                                    (___kont3877738778_))))
                            (___kont3877738778_))))))
                 (_let-head13901_
                  (lambda (_x14602_)
                    (let* ((___stx3879238793_ _x14602_)
                           (_g1460614617_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3879238793_))))
                      (let ((___kont3879538796_ (lambda (_L14645_) _L14645_))
                            (___kont3879738798_ (lambda () (list _x14602_))))
                        (if (gx#stx-pair? ___stx3879238793_)
                            (let ((_e1461114635_
                                   (gx#syntax-e ___stx3879238793_)))
                              (let ((_tl1460914642_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1461114635_)))
                                    (_hd1461014639_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1461114635_))))
                                (if (gx#identifier? _hd1461014639_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g42988_|
                                         _hd1461014639_)
                                        (___kont3879538796_ _tl1460914642_)
                                        (___kont3879738798_))
                                    (___kont3879738798_))))
                            (___kont3879738798_)))))))
          (let* ((___stx3881238813_ _stx13894_)
                 (_g1390513977_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3881238813_))))
            (let ((___kont3881538816_
                   (lambda (_L14575_ _L14577_ _L14578_ _L14579_)
                     (cons _L14579_
                           (cons (cons (cons _L14578_ (cons _L14577_ '())) '())
                                 _L14575_))))
                  (___kont3881738818_
                   (lambda (_L14497_ _L14499_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _L14499_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_g1451914522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1452014525_)
                    (cons _g1451914522_ _g1452014525_))
                  '()
                  _L14497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (___kont3882138822_
                   (lambda (_L14064_ _L14066_)
                     (let* ((_g1409714123_
                             (lambda (_g1409814119_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1409814119_)))
                            (_g1409614408_
                             (lambda (_g1409814127_)
                               (if (gx#stx-pair/null? _g1409814127_)
                                   (let ((_g42989_
                                          (gx#syntax-split-splice
                                           _g1409814127_
                                           '0)))
                                     (begin
                                       (let ((_g42990_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g42989_)
                                                    (##vector-length _g42989_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g42990_ 2)))
                                             (error "Context expects 2 values"
                                                    _g42990_)))
                                       (let ((_target1410114130_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42989_ 0)))
                                             (_tl1410314133_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42989_ 1))))
                                         (if (gx#stx-null? _tl1410314133_)
                                             (letrec ((_loop1410414136_
                                                       (lambda (_hd1410214140_
                                                                _e1410814143_
                                                                _hd1410914145_)
                                                         (if (gx#stx-pair?
                                                              _hd1410214140_)
                                                             (let ((_e1410514148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1410214140_)))
                       (let ((_lp-hd1410614152_
                              (let ()
                                (declare (not safe))
                                (##car _e1410514148_)))
                             (_lp-tl1410714155_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1410514148_))))
                         (if (gx#stx-pair? _lp-hd1410614152_)
                             (let ((_e1411414158_
                                    (gx#syntax-e _lp-hd1410614152_)))
                               (let ((_hd1411314162_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1411414158_)))
                                     (_tl1411214165_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1411414158_))))
                                 (if (gx#stx-pair? _tl1411214165_)
                                     (let ((_e1411714168_
                                            (gx#syntax-e _tl1411214165_)))
                                       (let ((_hd1411614172_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1411714168_)))
                                             (_tl1411514175_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1411714168_))))
                                         (if (gx#stx-null? _tl1411514175_)
                                             (_loop1410414136_
                                              _lp-tl1410714155_
                                              (cons _hd1411614172_
                                                    _e1410814143_)
                                              (cons _hd1411314162_
                                                    _hd1410914145_))
                                             (_g1409714123_ _g1409814127_))))
                                     (_g1409714123_ _g1409814127_))))
                             (_g1409714123_ _g1409814127_))))
                     (let ((_e1411014178_ (reverse _e1410814143_))
                           (_hd1411114181_ (reverse _hd1410914145_)))
                       ((lambda (_L14184_ _L14186_)
                          (let ()
                            (let* ((_g1420214219_
                                    (lambda (_g1420314215_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1420314215_)))
                                   (_g1420114396_
                                    (lambda (_g1420314223_)
                                      (if (gx#stx-pair/null? _g1420314223_)
                                          (let ((_g42991_
                                                 (gx#syntax-split-splice
                                                  _g1420314223_
                                                  '0)))
                                            (begin
                                              (let ((_g42992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42991_)
                                                           (##vector-length
                                                            _g42991_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42992_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42992_)))
                                              (let ((_target1420514226_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42991_
                                                        0)))
                                                    (_tl1420714229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42991_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1420714229_)
                                                    (letrec ((_loop1420814232_
                                                              (lambda (_hd1420614236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1421214239_)
                        (if (gx#stx-pair? _hd1420614236_)
                            (let ((_e1420914242_ (gx#syntax-e _hd1420614236_)))
                              (let ((_lp-hd1421014246_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1420914242_)))
                                    (_lp-tl1421114249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1420914242_))))
                                (_loop1420814232_
                                 _lp-tl1421114249_
                                 (cons _lp-hd1421014246_ _$e1421214239_))))
                            (let ((_$e1421314252_ (reverse _$e1421214239_)))
                              ((lambda (_L14256_)
                                 (let ()
                                   (let* ((_g1427314290_
                                           (lambda (_g1427414286_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1427414286_)))
                                          (_g1427214384_
                                           (lambda (_g1427414294_)
                                             (if (gx#stx-pair/null?
                                                  _g1427414294_)
                                                 (let ((_g42993_
                                                        (gx#syntax-split-splice
                                                         _g1427414294_
                                                         '0)))
                                                   (begin
                                                     (let ((_g42994_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g42993_)
                          (##vector-length _g42993_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g42994_ 2)))
                   (error "Context expects 2 values" _g42994_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1427614297_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42993_
                                                               0)))
                                                           (_tl1427814300_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42993_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1427814300_)
                                                           (letrec ((_loop1427914303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1427714307_ _hd-bind1428314310_)
                               (if (gx#stx-pair? _hd1427714307_)
                                   (let ((_e1428014313_
                                          (gx#syntax-e _hd1427714307_)))
                                     (let ((_lp-hd1428114317_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1428014313_)))
                                           (_lp-tl1428214320_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1428014313_))))
                                       (_loop1427914303_
                                        _lp-tl1428214320_
                                        (cons _lp-hd1428114317_
                                              _hd-bind1428314310_))))
                                   (let ((_hd-bind1428414323_
                                          (reverse _hd-bind1428314310_)))
                                     ((lambda (_L14327_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (begin
                                                          (gx#syntax-check-splice-targets
                                                           _L14184_
                                                           _L14256_)
                                                          (foldr (lambda (_g1435214356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1435314359_
                                  _g1435414361_)
                           (cons (cons (cons _g1435314359_ '())
                                       (cons _g1435214356_ '()))
                                 _g1435414361_))
                         '()
                         _L14184_
                         _L14256_))
                (cons (cons (gx#datum->syntax '#f 'and)
                            (foldr (lambda (_g1434514364_ _g1434614367_)
                                     (cons _g1434514364_ _g1434614367_))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L14256_
                                                        _L14327_)
                                                       (foldr (lambda (_g1434914370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1435014373_
                               _g1435114375_)
                        (cons (cons _g1435014373_ (cons _g1434914370_ '()))
                              _g1435114375_))
                      '()
                      _L14256_
                      _L14327_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr (lambda (_g1434714378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1434814381_)
                      (cons _g1434714378_ _g1434814381_))
                    '()
                    _L14064_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())
                                   _L14256_))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd-bind1428414323_))))))
                     (_loop1427914303_ _target1427614297_ '()))
                   (_g1427314290_ _g1427414294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1427314290_
                                                  _g1427414294_)))))
                                     (_g1427214384_
                                      (gx#stx-map
                                       _let-head13901_
                                       (foldr (lambda (_g1438714390_
                                                       _g1438814393_)
                                                (cons _g1438714390_
                                                      _g1438814393_))
                                              '()
                                              _L14186_))))))
                               _$e1421314252_))))))
              (_loop1420814232_ _target1420514226_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1420214219_
                                                     _g1420314223_)))))
                                          (_g1420214219_ _g1420314223_)))))
                              (_g1420114396_
                               (gx#gentemps
                                (foldr (lambda (_g1439914402_ _g1440014405_)
                                         (cons _g1439914402_ _g1440014405_))
                                       '()
                                       _L14186_))))))
                        _e1411014178_
                        _hd1411114181_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1410414136_
                                                _target1410114130_
                                                '()
                                                '()))
                                             (_g1409714123_ _g1409814127_)))))
                                   (_g1409714123_ _g1409814127_)))))
                       (_g1409614408_
                        (gx#stx-map
                         _let-bind13899_
                         (foldr (lambda (_g1441114414_ _g1441214417_)
                                  (cons _g1441114414_ _g1441214417_))
                                '()
                                _L14066_)))))))
              (let* ((___match3890938910_
                      (lambda (_e1395013984_
                               _hd1394913988_
                               _tl1394813991_
                               _e1395313994_
                               _hd1395213998_
                               _tl1395114001_
                               ___splice3882338824_
                               _target1395414004_
                               _tl1395614007_)
                        (letrec ((_loop1395714010_
                                  (lambda (_hd1395514014_ _bind1396114017_)
                                    (if (gx#stx-pair? _hd1395514014_)
                                        (let ((_e1395814020_
                                               (gx#syntax-e _hd1395514014_)))
                                          (let ((_lp-tl1396014027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1395814020_)))
                                                (_lp-hd1395914024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1395814020_))))
                                            (_loop1395714010_
                                             _lp-tl1396014027_
                                             (cons _lp-hd1395914024_
                                                   _bind1396114017_))))
                                        (let ((_bind1396214030_
                                               (reverse _bind1396114017_)))
                                          (if (gx#stx-pair/null?
                                               _tl1395114001_)
                                              (let ((___splice3882538826_
                                                     (gx#syntax-split-splice
                                                      _tl1395114001_
                                                      '0)))
                                                (let ((_tl1396514037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3882538826_
                                                          '1)))
                                                      (_target1396314034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3882538826_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1396514037_)
                                                      (letrec ((_loop1396614040_
                                                                (lambda (_hd1396414044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1397014047_)
                          (if (gx#stx-pair? _hd1396414044_)
                              (let ((_e1396714050_
                                     (gx#syntax-e _hd1396414044_)))
                                (let ((_lp-tl1396914057_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1396714050_)))
                                      (_lp-hd1396814054_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1396714050_))))
                                  (_loop1396614040_
                                   _lp-tl1396914057_
                                   (cons _lp-hd1396814054_ _body1397014047_))))
                              (let ((_body1397114060_
                                     (reverse _body1397014047_)))
                                (let ((_L14064_ _body1397114060_)
                                      (_L14066_ _bind1396214030_))
                                  (if (gx#stx-andmap
                                       _let-bind?13897_
                                       (foldr (lambda (_g1408814091_
                                                       _g1408914094_)
                                                (cons _g1408814091_
                                                      _g1408914094_))
                                              '()
                                              _L14066_))
                                      (___kont3882138822_ _L14064_ _L14066_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1390513977_)))))))))
                (_loop1396614040_ _target1396314034_ '()))
              (let () (declare (not safe)) (_g1390513977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1390513977_))))))))
                          (_loop1395714010_ _target1395414004_ '()))))
                     (___match3888938890_
                      (lambda (_e1392714427_
                               _hd1392614431_
                               _tl1392514434_
                               _e1393014437_
                               _hd1392914441_
                               _tl1392814444_
                               _e1393314447_
                               _hd1393214451_
                               _tl1393114454_
                               _e1393614457_
                               _hd1393514461_
                               _tl1393414464_
                               ___splice3881938820_
                               _target1393714467_
                               _tl1393914470_)
                        (letrec ((_loop1394014473_
                                  (lambda (_hd1393814477_ _body1394414480_)
                                    (if (gx#stx-pair? _hd1393814477_)
                                        (let ((_e1394114483_
                                               (gx#syntax-e _hd1393814477_)))
                                          (let ((_lp-tl1394314490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1394114483_)))
                                                (_lp-hd1394214487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1394114483_))))
                                            (_loop1394014473_
                                             _lp-tl1394314490_
                                             (cons _lp-hd1394214487_
                                                   _body1394414480_))))
                                        (let ((_body1394514493_
                                               (reverse _body1394414480_)))
                                          (___kont3881738818_
                                           _body1394514493_
                                           _hd1393514461_))))))
                          (_loop1394014473_ _target1393714467_ '()))))
                     (___match3885338854_
                      (lambda (_e1391314535_
                               _hd1391214539_
                               _tl1391114542_
                               _e1391614545_
                               _hd1391514549_
                               _tl1391414552_
                               _e1391914555_
                               _hd1391814559_
                               _tl1391714562_
                               _e1392214565_
                               _hd1392114569_
                               _tl1392014572_)
                        (let ((_L14575_ _tl1391414552_)
                              (_L14577_ _hd1392114569_)
                              (_L14578_ _hd1391814559_)
                              (_L14579_ _hd1391214539_))
                          (if (_let-head?13900_ _L14578_)
                              (___kont3881538816_
                               _L14575_
                               _L14577_
                               _L14578_
                               _L14579_)
                              (if (gx#stx-pair? _hd1391814559_)
                                  (let ((_e1393614457_
                                         (gx#syntax-e _hd1391814559_)))
                                    (let ((_tl1393414464_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1393614457_)))
                                          (_hd1393514461_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1393614457_))))
                                      (if (gx#stx-pair/null? _hd1391514549_)
                                          (let ((___splice3882338824_
                                                 (gx#syntax-split-splice
                                                  _hd1391514549_
                                                  '0)))
                                            (let ((_tl1395614007_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3882338824_
                                                      '1)))
                                                  (_target1395414004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3882338824_
                                                      '0))))
                                              (if (gx#stx-null? _tl1395614007_)
                                                  (___match3890938910_
                                                   _e1391314535_
                                                   _hd1391214539_
                                                   _tl1391114542_
                                                   _e1391614545_
                                                   _hd1391514549_
                                                   _tl1391414552_
                                                   ___splice3882338824_
                                                   _target1395414004_
                                                   _tl1395614007_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1390513977_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1390513977_)))))
                                  (if (gx#stx-pair/null? _hd1391514549_)
                                      (let ((___splice3882338824_
                                             (gx#syntax-split-splice
                                              _hd1391514549_
                                              '0)))
                                        (let ((_tl1395614007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3882338824_
                                                  '1)))
                                              (_target1395414004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3882338824_
                                                  '0))))
                                          (if (gx#stx-null? _tl1395614007_)
                                              (___match3890938910_
                                               _e1391314535_
                                               _hd1391214539_
                                               _tl1391114542_
                                               _e1391614545_
                                               _hd1391514549_
                                               _tl1391414552_
                                               ___splice3882338824_
                                               _target1395414004_
                                               _tl1395614007_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1390513977_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1390513977_)))))))))
                (if (gx#stx-pair? ___stx3881238813_)
                    (let ((_e1391314535_ (gx#syntax-e ___stx3881238813_)))
                      (let ((_tl1391114542_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1391314535_)))
                            (_hd1391214539_
                             (let ()
                               (declare (not safe))
                               (##car _e1391314535_))))
                        (if (gx#stx-pair? _tl1391114542_)
                            (let ((_e1391614545_ (gx#syntax-e _tl1391114542_)))
                              (let ((_tl1391414552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1391614545_)))
                                    (_hd1391514549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1391614545_))))
                                (if (gx#stx-pair? _hd1391514549_)
                                    (let ((_e1391914555_
                                           (gx#syntax-e _hd1391514549_)))
                                      (let ((_tl1391714562_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1391914555_)))
                                            (_hd1391814559_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1391914555_))))
                                        (if (gx#stx-pair? _tl1391714562_)
                                            (let ((_e1392214565_
                                                   (gx#syntax-e
                                                    _tl1391714562_)))
                                              (let ((_tl1392014572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1392214565_)))
                                                    (_hd1392114569_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1392214565_))))
                                                (if (gx#stx-null?
                                                     _tl1392014572_)
                                                    (___match3885338854_
                                                     _e1391314535_
                                                     _hd1391214539_
                                                     _tl1391114542_
                                                     _e1391614545_
                                                     _hd1391514549_
                                                     _tl1391414552_
                                                     _e1391914555_
                                                     _hd1391814559_
                                                     _tl1391714562_
                                                     _e1392214565_
                                                     _hd1392114569_
                                                     _tl1392014572_)
                                                    (if (gx#stx-pair?
                                                         _hd1391814559_)
                                                        (let ((_e1393614457_
                                                               (gx#syntax-e
                                                                _hd1391814559_)))
                                                          (let ((_tl1393414464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1393614457_)))
                        (_hd1393514461_
                         (let () (declare (not safe)) (##car _e1393614457_))))
                    (if (gx#stx-pair/null? _hd1391514549_)
                        (let ((___splice3882338824_
                               (gx#syntax-split-splice _hd1391514549_ '0)))
                          (let ((_tl1395614007_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3882338824_ '1)))
                                (_target1395414004_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3882338824_ '0))))
                            (if (gx#stx-null? _tl1395614007_)
                                (___match3890938910_
                                 _e1391314535_
                                 _hd1391214539_
                                 _tl1391114542_
                                 _e1391614545_
                                 _hd1391514549_
                                 _tl1391414552_
                                 ___splice3882338824_
                                 _target1395414004_
                                 _tl1395614007_)
                                (let ()
                                  (declare (not safe))
                                  (_g1390513977_)))))
                        (let () (declare (not safe)) (_g1390513977_)))))
                (if (gx#stx-pair/null? _hd1391514549_)
                    (let ((___splice3882338824_
                           (gx#syntax-split-splice _hd1391514549_ '0)))
                      (let ((_tl1395614007_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3882338824_ '1)))
                            (_target1395414004_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3882338824_ '0))))
                        (if (gx#stx-null? _tl1395614007_)
                            (___match3890938910_
                             _e1391314535_
                             _hd1391214539_
                             _tl1391114542_
                             _e1391614545_
                             _hd1391514549_
                             _tl1391414552_
                             ___splice3882338824_
                             _target1395414004_
                             _tl1395614007_)
                            (let () (declare (not safe)) (_g1390513977_)))))
                    (let () (declare (not safe)) (_g1390513977_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1391814559_)
                                                (let ((_e1393614457_
                                                       (gx#syntax-e
                                                        _hd1391814559_)))
                                                  (let ((_tl1393414464_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1393614457_)))
                                                        (_hd1393514461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1393614457_))))
                                                    (if (gx#stx-null?
                                                         _tl1393414464_)
                                                        (if (gx#stx-null?
                                                             _tl1391714562_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1391414552_)
                        (let ((___splice3881938820_
                               (gx#syntax-split-splice _tl1391414552_ '0)))
                          (let ((_tl1393914470_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3881938820_ '1)))
                                (_target1393714467_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3881938820_ '0))))
                            (if (gx#stx-null? _tl1393914470_)
                                (___match3888938890_
                                 _e1391314535_
                                 _hd1391214539_
                                 _tl1391114542_
                                 _e1391614545_
                                 _hd1391514549_
                                 _tl1391414552_
                                 _e1391914555_
                                 _hd1391814559_
                                 _tl1391714562_
                                 _e1393614457_
                                 _hd1393514461_
                                 _tl1393414464_
                                 ___splice3881938820_
                                 _target1393714467_
                                 _tl1393914470_)
                                (if (gx#stx-pair/null? _hd1391514549_)
                                    (let ((___splice3882338824_
                                           (gx#syntax-split-splice
                                            _hd1391514549_
                                            '0)))
                                      (let ((_tl1395614007_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3882338824_
                                                '1)))
                                            (_target1395414004_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3882338824_
                                                '0))))
                                        (if (gx#stx-null? _tl1395614007_)
                                            (___match3890938910_
                                             _e1391314535_
                                             _hd1391214539_
                                             _tl1391114542_
                                             _e1391614545_
                                             _hd1391514549_
                                             _tl1391414552_
                                             ___splice3882338824_
                                             _target1395414004_
                                             _tl1395614007_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1390513977_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1390513977_))))))
                        (if (gx#stx-pair/null? _hd1391514549_)
                            (let ((___splice3882338824_
                                   (gx#syntax-split-splice _hd1391514549_ '0)))
                              (let ((_tl1395614007_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3882338824_ '1)))
                                    (_target1395414004_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3882338824_
                                        '0))))
                                (if (gx#stx-null? _tl1395614007_)
                                    (___match3890938910_
                                     _e1391314535_
                                     _hd1391214539_
                                     _tl1391114542_
                                     _e1391614545_
                                     _hd1391514549_
                                     _tl1391414552_
                                     ___splice3882338824_
                                     _target1395414004_
                                     _tl1395614007_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1390513977_)))))
                            (let () (declare (not safe)) (_g1390513977_))))
                    (if (gx#stx-pair/null? _hd1391514549_)
                        (let ((___splice3882338824_
                               (gx#syntax-split-splice _hd1391514549_ '0)))
                          (let ((_tl1395614007_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3882338824_ '1)))
                                (_target1395414004_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3882338824_ '0))))
                            (if (gx#stx-null? _tl1395614007_)
                                (___match3890938910_
                                 _e1391314535_
                                 _hd1391214539_
                                 _tl1391114542_
                                 _e1391614545_
                                 _hd1391514549_
                                 _tl1391414552_
                                 ___splice3882338824_
                                 _target1395414004_
                                 _tl1395614007_)
                                (let ()
                                  (declare (not safe))
                                  (_g1390513977_)))))
                        (let () (declare (not safe)) (_g1390513977_))))
                (if (gx#stx-pair/null? _hd1391514549_)
                    (let ((___splice3882338824_
                           (gx#syntax-split-splice _hd1391514549_ '0)))
                      (let ((_tl1395614007_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3882338824_ '1)))
                            (_target1395414004_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3882338824_ '0))))
                        (if (gx#stx-null? _tl1395614007_)
                            (___match3890938910_
                             _e1391314535_
                             _hd1391214539_
                             _tl1391114542_
                             _e1391614545_
                             _hd1391514549_
                             _tl1391414552_
                             ___splice3882338824_
                             _target1395414004_
                             _tl1395614007_)
                            (let () (declare (not safe)) (_g1390513977_)))))
                    (let () (declare (not safe)) (_g1390513977_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1391514549_)
                                                    (let ((___splice3882338824_
                                                           (gx#syntax-split-splice
                                                            _hd1391514549_
                                                            '0)))
                                                      (let ((_tl1395614007_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice3882338824_ '1)))
                    (_target1395414004_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice3882338824_ '0))))
                (if (gx#stx-null? _tl1395614007_)
                    (___match3890938910_
                     _e1391314535_
                     _hd1391214539_
                     _tl1391114542_
                     _e1391614545_
                     _hd1391514549_
                     _tl1391414552_
                     ___splice3882338824_
                     _target1395414004_
                     _tl1395614007_)
                    (let () (declare (not safe)) (_g1390513977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1390513977_)))))))
                                    (if (gx#stx-pair/null? _hd1391514549_)
                                        (let ((___splice3882338824_
                                               (gx#syntax-split-splice
                                                _hd1391514549_
                                                '0)))
                                          (let ((_tl1395614007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3882338824_
                                                    '1)))
                                                (_target1395414004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3882338824_
                                                    '0))))
                                            (if (gx#stx-null? _tl1395614007_)
                                                (___match3890938910_
                                                 _e1391314535_
                                                 _hd1391214539_
                                                 _tl1391114542_
                                                 _e1391614545_
                                                 _hd1391514549_
                                                 _tl1391414552_
                                                 ___splice3882338824_
                                                 _target1395414004_
                                                 _tl1395614007_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1390513977_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1390513977_))))))
                            (let () (declare (not safe)) (_g1390513977_)))))
                    (let () (declare (not safe)) (_g1390513977_)))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14937_)
        (let* ((___stx3891238913_ _$stx14937_)
               (_g1494314994_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3891238913_))))
          (let ((___kont3891538916_ (lambda () '#t))
                (___kont3891738918_
                 (lambda (_L15152_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g1516815171_ _g1516915174_)
                                        (cons _g1516815171_ _g1516915174_))
                                      '()
                                      _L15152_)))))
                (___kont3892138922_
                 (lambda (_L15061_ _L15063_ _L15064_ _L15065_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _L15064_ '())
                               (cons (cons _L15065_
                                           (cons _L15063_
                                                 (foldr (lambda (_g1508615089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1508715092_)
                  (cons _g1508615089_ _g1508715092_))
                '()
                _L15061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3898938990_
                    (lambda (_e1497315001_
                             _hd1497215005_
                             _tl1497115008_
                             _e1497615011_
                             _hd1497515015_
                             _tl1497415018_
                             _e1497915021_
                             _hd1497815025_
                             _tl1497715028_
                             ___splice3892338924_
                             _target1498015031_
                             _tl1498215034_)
                      (letrec ((_loop1498315037_
                                (lambda (_hd1498115041_ _body1498715044_)
                                  (if (gx#stx-pair? _hd1498115041_)
                                      (let ((_e1498415047_
                                             (gx#syntax-e _hd1498115041_)))
                                        (let ((_lp-tl1498615054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1498415047_)))
                                              (_lp-hd1498515051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1498415047_))))
                                          (_loop1498315037_
                                           _lp-tl1498615054_
                                           (cons _lp-hd1498515051_
                                                 _body1498715044_))))
                                      (let ((_body1498815057_
                                             (reverse _body1498715044_)))
                                        (___kont3892138922_
                                         _body1498815057_
                                         _tl1497715028_
                                         _hd1497815025_
                                         _hd1497215005_))))))
                        (_loop1498315037_ _target1498015031_ '()))))
                   (___match3896338964_
                    (lambda (_e1495415102_
                             _hd1495315106_
                             _tl1495215109_
                             _e1495715112_
                             _hd1495615116_
                             _tl1495515119_
                             ___splice3891938920_
                             _target1495815122_
                             _tl1496015125_)
                      (letrec ((_loop1496115128_
                                (lambda (_hd1495915132_ _body1496515135_)
                                  (if (gx#stx-pair? _hd1495915132_)
                                      (let ((_e1496215138_
                                             (gx#syntax-e _hd1495915132_)))
                                        (let ((_lp-tl1496415145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1496215138_)))
                                              (_lp-hd1496315142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1496215138_))))
                                          (_loop1496115128_
                                           _lp-tl1496415145_
                                           (cons _lp-hd1496315142_
                                                 _body1496515135_))))
                                      (let ((_body1496615148_
                                             (reverse _body1496515135_)))
                                        (___kont3891738918_
                                         _body1496615148_))))))
                        (_loop1496115128_ _target1495815122_ '())))))
              (if (gx#stx-pair? ___stx3891238913_)
                  (let ((_e1494715184_ (gx#syntax-e ___stx3891238913_)))
                    (let ((_tl1494515191_
                           (let () (declare (not safe)) (##cdr _e1494715184_)))
                          (_hd1494615188_
                           (let ()
                             (declare (not safe))
                             (##car _e1494715184_))))
                      (if (gx#stx-pair? _tl1494515191_)
                          (let ((_e1495015194_ (gx#syntax-e _tl1494515191_)))
                            (let ((_tl1494815201_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1495015194_)))
                                  (_hd1494915198_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1495015194_))))
                              (if (gx#stx-null? _hd1494915198_)
                                  (if (gx#stx-null? _tl1494815201_)
                                      (___kont3891538916_)
                                      (if (gx#stx-pair/null? _tl1494815201_)
                                          (let ((___splice3891938920_
                                                 (gx#syntax-split-splice
                                                  _tl1494815201_
                                                  '0)))
                                            (let ((_tl1496015125_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3891938920_
                                                      '1)))
                                                  (_target1495815122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3891938920_
                                                      '0))))
                                              (if (gx#stx-null? _tl1496015125_)
                                                  (___match3896338964_
                                                   _e1494715184_
                                                   _hd1494615188_
                                                   _tl1494515191_
                                                   _e1495015194_
                                                   _hd1494915198_
                                                   _tl1494815201_
                                                   ___splice3891938920_
                                                   _target1495815122_
                                                   _tl1496015125_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1494314994_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1494314994_))))
                                  (if (gx#stx-pair? _hd1494915198_)
                                      (let ((_e1497915021_
                                             (gx#syntax-e _hd1494915198_)))
                                        (let ((_tl1497715028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1497915021_)))
                                              (_hd1497815025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1497915021_))))
                                          (if (gx#stx-pair/null?
                                               _tl1494815201_)
                                              (let ((___splice3892338924_
                                                     (gx#syntax-split-splice
                                                      _tl1494815201_
                                                      '0)))
                                                (let ((_tl1498215034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3892338924_
                                                          '1)))
                                                      (_target1498015031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3892338924_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1498215034_)
                                                      (___match3898938990_
                                                       _e1494715184_
                                                       _hd1494615188_
                                                       _tl1494515191_
                                                       _e1495015194_
                                                       _hd1494915198_
                                                       _tl1494815201_
                                                       _e1497915021_
                                                       _hd1497815025_
                                                       _tl1497715028_
                                                       ___splice3892338924_
                                                       _target1498015031_
                                                       _tl1498215034_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1494314994_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1494314994_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1494314994_))))))
                          (let () (declare (not safe)) (_g1494314994_)))))
                  (let () (declare (not safe)) (_g1494314994_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx15214_)
        (let* ((___stx3899238993_ _$stx15214_)
               (_g1522515303_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3899238993_))))
          (let ((___kont3899538996_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (___kont3899738998_
                 (lambda (_L15634_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L15634_ '()))))
                (___kont3899939000_
                 (lambda (_L15582_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _L15582_ '()))))
                (___kont3900139002_ (lambda (_L15529_) _L15529_))
                (___kont3900339004_ (lambda (_L15471_ _L15473_) _L15473_))
                (___kont3900539006_
                 (lambda (_L15413_ _L15415_ _L15416_ _L15417_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _L15417_ _L15413_)
                                     (cons _L15416_ '()))))))
                (___kont3900739008_
                 (lambda (_L15359_ _L15361_ _L15362_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _L15361_ (cons (cons _L15362_ _L15359_) '())))))
                (___kont3900939010_ (lambda (_L15320_) _L15320_)))
            (let* ((___match3913139132_
                    (lambda (_e1527815383_
                             _hd1527715387_
                             _tl1527615390_
                             _e1528115393_
                             _hd1528015397_
                             _tl1527915400_
                             _e1528415403_
                             _hd1528315407_
                             _tl1528215410_)
                      (let ((_L15413_ _tl1528215410_)
                            (_L15415_ _hd1528315407_)
                            (_L15416_ _hd1528015397_)
                            (_L15417_ _hd1527715387_))
                        (if (gx#ellipsis? _L15415_)
                            (___kont3900539006_
                             _L15413_
                             _L15415_
                             _L15416_
                             _L15417_)
                            (___kont3900739008_
                             _tl1527915400_
                             _hd1528015397_
                             _hd1527715387_)))))
                   (___match3911339114_
                    (lambda (_e1526515441_
                             _hd1526415445_
                             _tl1526315448_
                             _e1526815451_
                             _hd1526715455_
                             _tl1526615458_
                             _e1527115461_
                             _hd1527015465_
                             _tl1526915468_)
                      (let ((_L15471_ _hd1527015465_)
                            (_L15473_ _hd1526715455_))
                        (if (gx#ellipsis? _L15471_)
                            (___kont3900339004_ _L15471_ _L15473_)
                            (___match3913139132_
                             _e1526515441_
                             _hd1526415445_
                             _tl1526315448_
                             _e1526815451_
                             _hd1526715455_
                             _tl1526615458_
                             _e1527115461_
                             _hd1527015465_
                             _tl1526915468_))))))
              (if (gx#stx-pair? ___stx3899238993_)
                  (let ((_e1522915656_ (gx#syntax-e ___stx3899238993_)))
                    (let ((_tl1522715663_
                           (let () (declare (not safe)) (##cdr _e1522915656_)))
                          (_hd1522815660_
                           (let ()
                             (declare (not safe))
                             (##car _e1522915656_))))
                      (if (gx#stx-null? _tl1522715663_)
                          (___kont3899538996_)
                          (if (gx#stx-pair? _tl1522715663_)
                              (let ((_e1523615614_
                                     (gx#syntax-e _tl1522715663_)))
                                (let ((_tl1523415621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1523615614_)))
                                      (_hd1523515618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1523615614_))))
                                  (if (gx#identifier? _hd1523515618_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g42996_|
                                           _hd1523515618_)
                                          (if (gx#stx-pair? _tl1523415621_)
                                              (let ((_e1523915624_
                                                     (gx#syntax-e
                                                      _tl1523415621_)))
                                                (let ((_tl1523715631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1523915624_)))
                                                      (_hd1523815628_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1523915624_))))
                                                  (if (gx#stx-null?
                                                       _tl1523715631_)
                                                      (___kont3899738998_
                                                       _hd1523815628_)
                                                      (___match3913139132_
                                                       _e1522915656_
                                                       _hd1522815660_
                                                       _tl1522715663_
                                                       _e1523615614_
                                                       _hd1523515618_
                                                       _tl1523415621_
                                                       _e1523915624_
                                                       _hd1523815628_
                                                       _tl1523715631_))))
                                              (___kont3900739008_
                                               _tl1523415621_
                                               _hd1523515618_
                                               _hd1522815660_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g42995_|
                                               _hd1523515618_)
                                              (if (gx#stx-pair? _tl1523415621_)
                                                  (let ((_e1524915572_
                                                         (gx#syntax-e
                                                          _tl1523415621_)))
                                                    (let ((_tl1524715579_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1524915572_)))
                                                          (_hd1524815576_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1524915572_))))
                                                      (if (gx#stx-null?
                                                           _tl1524715579_)
                                                          (___kont3899939000_
                                                           _hd1524815576_)
                                                          (___match3913139132_
                                                           _e1522915656_
                                                           _hd1522815660_
                                                           _tl1522715663_
                                                           _e1523615614_
                                                           _hd1523515618_
                                                           _tl1523415621_
                                                           _e1524915572_
                                                           _hd1524815576_
                                                           _tl1524715579_))))
                                                  (___kont3900739008_
                                                   _tl1523415621_
                                                   _hd1523515618_
                                                   _hd1522815660_))
                                              (if (gx#stx-pair? _tl1523415621_)
                                                  (let ((_e1527115461_
                                                         (gx#syntax-e
                                                          _tl1523415621_)))
                                                    (let ((_tl1526915468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1527115461_)))
                                                          (_hd1527015465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1527115461_))))
                                                      (if (gx#stx-null?
                                                           _tl1526915468_)
                                                          (___match3911339114_
                                                           _e1522915656_
                                                           _hd1522815660_
                                                           _tl1522715663_
                                                           _e1523615614_
                                                           _hd1523515618_
                                                           _tl1523415621_
                                                           _e1527115461_
                                                           _hd1527015465_
                                                           _tl1526915468_)
                                                          (___match3913139132_
                                                           _e1522915656_
                                                           _hd1522815660_
                                                           _tl1522715663_
                                                           _e1523615614_
                                                           _hd1523515618_
                                                           _tl1523415621_
                                                           _e1527115461_
                                                           _hd1527015465_
                                                           _tl1526915468_))))
                                                  (___kont3900739008_
                                                   _tl1523415621_
                                                   _hd1523515618_
                                                   _hd1522815660_))))
                                      (if (gx#stx-datum? _hd1523515618_)
                                          (let ((_e1525715515_
                                                 (gx#stx-e _hd1523515618_)))
                                            (if (equal? _e1525715515_ '::)
                                                (if (gx#stx-pair?
                                                     _tl1523415621_)
                                                    (let ((_e1526015519_
                                                           (gx#syntax-e
                                                            _tl1523415621_)))
                                                      (let ((_tl1525815526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1526015519_)))
                    (_hd1525915523_
                     (let () (declare (not safe)) (##car _e1526015519_))))
                (if (gx#stx-null? _tl1525815526_)
                    (___kont3900139002_ _hd1525915523_)
                    (___match3913139132_
                     _e1522915656_
                     _hd1522815660_
                     _tl1522715663_
                     _e1523615614_
                     _hd1523515618_
                     _tl1523415621_
                     _e1526015519_
                     _hd1525915523_
                     _tl1525815526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3900739008_
                                                     _tl1523415621_
                                                     _hd1523515618_
                                                     _hd1522815660_))
                                                (if (gx#stx-pair?
                                                     _tl1523415621_)
                                                    (let ((_e1527115461_
                                                           (gx#syntax-e
                                                            _tl1523415621_)))
                                                      (let ((_tl1526915468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1527115461_)))
                    (_hd1527015465_
                     (let () (declare (not safe)) (##car _e1527115461_))))
                (if (gx#stx-null? _tl1526915468_)
                    (___match3911339114_
                     _e1522915656_
                     _hd1522815660_
                     _tl1522715663_
                     _e1523615614_
                     _hd1523515618_
                     _tl1523415621_
                     _e1527115461_
                     _hd1527015465_
                     _tl1526915468_)
                    (___match3913139132_
                     _e1522915656_
                     _hd1522815660_
                     _tl1522715663_
                     _e1523615614_
                     _hd1523515618_
                     _tl1523415621_
                     _e1527115461_
                     _hd1527015465_
                     _tl1526915468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3900739008_
                                                     _tl1523415621_
                                                     _hd1523515618_
                                                     _hd1522815660_))))
                                          (if (gx#stx-pair? _tl1523415621_)
                                              (let ((_e1527115461_
                                                     (gx#syntax-e
                                                      _tl1523415621_)))
                                                (let ((_tl1526915468_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1527115461_)))
                                                      (_hd1527015465_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1527115461_))))
                                                  (if (gx#stx-null?
                                                       _tl1526915468_)
                                                      (___match3911339114_
                                                       _e1522915656_
                                                       _hd1522815660_
                                                       _tl1522715663_
                                                       _e1523615614_
                                                       _hd1523515618_
                                                       _tl1523415621_
                                                       _e1527115461_
                                                       _hd1527015465_
                                                       _tl1526915468_)
                                                      (___match3913139132_
                                                       _e1522915656_
                                                       _hd1522815660_
                                                       _tl1522715663_
                                                       _e1523615614_
                                                       _hd1523515618_
                                                       _tl1523415621_
                                                       _e1527115461_
                                                       _hd1527015465_
                                                       _tl1526915468_))))
                                              (___kont3900739008_
                                               _tl1523415621_
                                               _hd1523515618_
                                               _hd1522815660_))))))
                              (___kont3900939010_ _tl1522715663_)))))
                  (let () (declare (not safe)) (_g1522515303_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15674_)
        (letrec ((_simple-quote?15677_
                  (lambda (_e16369_)
                    (let* ((___stx3915239153_ _e16369_)
                           (_g1637716414_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3915239153_))))
                      (let ((___kont3915539156_ (lambda () '#f))
                            (___kont3915739158_ (lambda () '#f))
                            (___kont3915939160_
                             (lambda (_L16528_ _L16530_)
                               (if (_simple-quote?15677_ _L16530_)
                                   (_simple-quote?15677_ _L16528_)
                                   '#f)))
                            (___kont3916139162_
                             (lambda (_L16489_)
                               (_simple-quote?15677_
                                (foldr (lambda (_g1650216505_ _g1650316508_)
                                         (cons _g1650216505_ _g1650316508_))
                                       '()
                                       _L16489_))))
                            (___kont3916539166_
                             (lambda (_L16436_)
                               (_simple-quote?15677_ _L16436_)))
                            (___kont3916739168_ (lambda () '#t)))
                        (let* ((_g1637516448_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3915239153_)
                                      (let ((_e1640816432_
                                             (unbox (gx#syntax-e
                                                     ___stx3915239153_))))
                                        (___kont3916539166_ _e1640816432_))
                                      (___kont3916739168_))))
                               (___match3922339224_
                                (lambda (_e1639716455_
                                         ___splice3916339164_
                                         _target1639816459_
                                         _tl1640016462_)
                                  (letrec ((_loop1640116465_
                                            (lambda (_hd1639916469_
                                                     _e1640516472_)
                                              (if (gx#stx-pair? _hd1639916469_)
                                                  (let ((_e1640216475_
                                                         (gx#syntax-e
                                                          _hd1639916469_)))
                                                    (let ((_lp-tl1640416482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1640216475_)))
                                                          (_lp-hd1640316479_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1640216475_))))
                                                      (_loop1640116465_
                                                       _lp-tl1640416482_
                                                       (cons _lp-hd1640316479_
                                                             _e1640516472_))))
                                                  (let ((_e1640616485_
                                                         (reverse _e1640516472_)))
                                                    (___kont3916139162_
                                                     _e1640616485_))))))
                                    (_loop1640116465_
                                     _target1639816459_
                                     '()))))
                               (_g1637416511_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3915239153_)
                                      (let ((_e1639716455_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3915239153_))))
                                        (if (gx#stx-pair/null? _e1639716455_)
                                            (let ((___splice3916339164_
                                                   (gx#syntax-split-splice
                                                    _e1639716455_
                                                    '0)))
                                              (let ((_tl1640016462_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3916339164_
                                                        '1)))
                                                    (_target1639816459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3916339164_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1640016462_)
                                                    (___match3922339224_
                                                     _e1639716455_
                                                     ___splice3916339164_
                                                     _target1639816459_
                                                     _tl1640016462_)
                                                    (___kont3916739168_))))
                                            (___kont3916739168_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1637516448_))))))
                          (if (gx#stx-pair? ___stx3915239153_)
                              (let ((_e1638116579_
                                     (gx#syntax-e ___stx3915239153_)))
                                (let ((_tl1637916586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1638116579_)))
                                      (_hd1638016583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1638116579_))))
                                  (if (gx#identifier? _hd1638016583_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g42998_|
                                           _hd1638016583_)
                                          (if (gx#stx-pair? _tl1637916586_)
                                              (let ((_e1638416589_
                                                     (gx#syntax-e
                                                      _tl1637916586_)))
                                                (let ((_tl1638216596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1638416589_)))
                                                      (_hd1638316593_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1638416589_))))
                                                  (if (gx#stx-null?
                                                       _tl1638216596_)
                                                      (___kont3915539156_)
                                                      (___kont3915939160_
                                                       _tl1637916586_
                                                       _hd1638016583_))))
                                              (___kont3915939160_
                                               _tl1637916586_
                                               _hd1638016583_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g42997_|
                                               _hd1638016583_)
                                              (if (gx#stx-pair? _tl1637916586_)
                                                  (let ((_e1639016558_
                                                         (gx#syntax-e
                                                          _tl1637916586_)))
                                                    (let ((_tl1638816565_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1639016558_)))
                                                          (_hd1638916562_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1639016558_))))
                                                      (if (gx#stx-null?
                                                           _tl1638816565_)
                                                          (___kont3915739158_)
                                                          (___kont3915939160_
                                                           _tl1637916586_
                                                           _hd1638016583_))))
                                                  (___kont3915939160_
                                                   _tl1637916586_
                                                   _hd1638016583_))
                                              (___kont3915939160_
                                               _tl1637916586_
                                               _hd1638016583_)))
                                      (___kont3915939160_
                                       _tl1637916586_
                                       _hd1638016583_))))
                              (let ()
                                (declare (not safe))
                                (_g1637416511_))))))))
                 (_generate15679_
                  (lambda (_e15741_ _d15743_)
                    (let* ((___stx3923039231_ _e15741_)
                           (_g1575215810_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3923039231_))))
                      (let ((___kont3923339234_
                             (lambda (_L16321_)
                               (let* ((_g1633416342_
                                       (lambda (_g1633516338_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1633516338_)))
                                      (_g1633316361_
                                       (lambda (_g1633516346_)
                                         ((lambda (_L16349_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _L16349_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1633516346_))))
                                 (_g1633316361_
                                  (_generate15679_
                                   _L16321_
                                   (fx1+ _d15743_))))))
                            (___kont3923539236_
                             (lambda (_L16250_)
                               (if (fxzero? _d15743_)
                                   _L16250_
                                   (let* ((_g1626316271_
                                           (lambda (_g1626416267_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1626416267_)))
                                          (_g1626216290_
                                           (lambda (_g1626416275_)
                                             ((lambda (_L16278_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _L16278_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1626416275_))))
                                     (_g1626216290_
                                      (_generate15679_
                                       _L16250_
                                       (fx1- _d15743_)))))))
                            (___kont3923739238_
                             (lambda (_L16179_)
                               (if (fxzero? _d15743_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _L16179_ '()))))
                                   (let* ((_g1619216200_
                                           (lambda (_g1619316196_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1619316196_)))
                                          (_g1619116219_
                                           (lambda (_g1619316204_)
                                             ((lambda (_L16207_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote-splicing)
                                  '()))
                      (cons _L16207_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1619316204_))))
                                     (_g1619116219_
                                      (_generate15679_
                                       _L16179_
                                       (fx1- _d15743_)))))))
                            (___kont3923939240_
                             (lambda (_L16104_ _L16106_)
                               (let* ((_g1612116129_
                                       (lambda (_g1612216125_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1612216125_)))
                                      (_g1612016148_
                                       (lambda (_g1612216133_)
                                         ((lambda (_L16136_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _L16136_
                                                                (cons _L16106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1612216133_))))
                                 (_g1612016148_
                                  (_generate15679_ _L16104_ _d15743_)))))
                            (___kont3924139242_
                             (lambda (_L15990_ _L15992_)
                               (let* ((_g1600316018_
                                       (lambda (_g1600416014_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1600416014_)))
                                      (_g1600216063_
                                       (lambda (_g1600416022_)
                                         (if (gx#stx-pair? _g1600416022_)
                                             (let ((_e1600916025_
                                                    (gx#syntax-e
                                                     _g1600416022_)))
                                               (let ((_hd1600816029_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1600916025_)))
                                                     (_tl1600716032_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1600916025_))))
                                                 (if (gx#stx-pair?
                                                      _tl1600716032_)
                                                     (let ((_e1601216035_
                                                            (gx#syntax-e
                                                             _tl1600716032_)))
                                                       (let ((_hd1601116039_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1601216035_)))
                     (_tl1601016042_
                      (let () (declare (not safe)) (##cdr _e1601216035_))))
                 (if (gx#stx-null? _tl1601016042_)
                     ((lambda (_L16045_ _L16047_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _L16047_ (cons _L16045_ '())))))
                      _hd1601116039_
                      _hd1600816029_)
                     (_g1600316018_ _g1600416022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1600316018_
                                                      _g1600416022_))))
                                             (_g1600316018_ _g1600416022_)))))
                                 (_g1600216063_
                                  (list (_generate15679_ _L15992_ _d15743_)
                                        (_generate15679_
                                         _L15990_
                                         _d15743_))))))
                            (___kont3924339244_
                             (lambda (_L15920_)
                               (let* ((_g1593415942_
                                       (lambda (_g1593515938_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1593515938_)))
                                      (_g1593315961_
                                       (lambda (_g1593515946_)
                                         ((lambda (_L15949_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _L15949_ '()))))
                                          _g1593515946_))))
                                 (_g1593315961_
                                  (_generate15679_
                                   (foldr (lambda (_g1596415967_ _g1596515970_)
                                            (cons _g1596415967_ _g1596515970_))
                                          '()
                                          _L15920_)
                                   _d15743_)))))
                            (___kont3924739248_
                             (lambda (_L15838_)
                               (let* ((_g1584815856_
                                       (lambda (_g1584915852_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1584915852_)))
                                      (_g1584715875_
                                       (lambda (_g1584915860_)
                                         ((lambda (_L15863_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _L15863_ '()))))
                                          _g1584915860_))))
                                 (_g1584715875_
                                  (_generate15679_ _L15838_ _d15743_)))))
                            (___kont3924939250_
                             (lambda (_L15817_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L15817_ '())))))
                        (let* ((_g1575015879_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3923039231_)
                                      (let ((_e1580315834_
                                             (unbox (gx#syntax-e
                                                     ___stx3923039231_))))
                                        (___kont3924739248_ _e1580315834_))
                                      (___kont3924939250_ ___stx3923039231_))))
                               (___match3934939350_
                                (lambda (_e1579215886_
                                         ___splice3924539246_
                                         _target1579315890_
                                         _tl1579515893_)
                                  (letrec ((_loop1579615896_
                                            (lambda (_hd1579415900_
                                                     _e1580015903_)
                                              (if (gx#stx-pair? _hd1579415900_)
                                                  (let ((_e1579715906_
                                                         (gx#syntax-e
                                                          _hd1579415900_)))
                                                    (let ((_lp-tl1579915913_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1579715906_)))
                                                          (_lp-hd1579815910_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1579715906_))))
                                                      (_loop1579615896_
                                                       _lp-tl1579915913_
                                                       (cons _lp-hd1579815910_
                                                             _e1580015903_))))
                                                  (let ((_e1580115916_
                                                         (reverse _e1580015903_)))
                                                    (___kont3924339244_
                                                     _e1580115916_))))))
                                    (_loop1579615896_
                                     _target1579315890_
                                     '()))))
                               (_g1574915973_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3923039231_)
                                      (let ((_e1579215886_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3923039231_))))
                                        (if (gx#stx-pair/null? _e1579215886_)
                                            (let ((___splice3924539246_
                                                   (gx#syntax-split-splice
                                                    _e1579215886_
                                                    '0)))
                                              (let ((_tl1579515893_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3924539246_
                                                        '1)))
                                                    (_target1579315890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3924539246_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1579515893_)
                                                    (___match3934939350_
                                                     _e1579215886_
                                                     ___splice3924539246_
                                                     _target1579315890_
                                                     _tl1579515893_)
                                                    (___kont3924939250_
                                                     ___stx3923039231_))))
                                            (___kont3924939250_
                                             ___stx3923039231_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1575015879_))))))
                          (if (gx#stx-pair? ___stx3923039231_)
                              (let ((_e1575716301_
                                     (gx#syntax-e ___stx3923039231_)))
                                (let ((_tl1575516308_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1575716301_)))
                                      (_hd1575616305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1575716301_))))
                                  (if (gx#identifier? _hd1575616305_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g43002_|
                                           _hd1575616305_)
                                          (if (gx#stx-pair? _tl1575516308_)
                                              (let ((_e1576016311_
                                                     (gx#syntax-e
                                                      _tl1575516308_)))
                                                (let ((_tl1575816318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1576016311_)))
                                                      (_hd1575916315_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1576016311_))))
                                                  (if (gx#stx-null?
                                                       _tl1575816318_)
                                                      (___kont3923339234_
                                                       _hd1575916315_)
                                                      (___kont3924139242_
                                                       _tl1575516308_
                                                       _hd1575616305_))))
                                              (___kont3924139242_
                                               _tl1575516308_
                                               _hd1575616305_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g43001_|
                                               _hd1575616305_)
                                              (if (gx#stx-pair? _tl1575516308_)
                                                  (let ((_e1576716240_
                                                         (gx#syntax-e
                                                          _tl1575516308_)))
                                                    (let ((_tl1576516247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1576716240_)))
                                                          (_hd1576616244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1576716240_))))
                                                      (if (gx#stx-null?
                                                           _tl1576516247_)
                                                          (___kont3923539236_
                                                           _hd1576616244_)
                                                          (___kont3924139242_
                                                           _tl1575516308_
                                                           _hd1575616305_))))
                                                  (___kont3924139242_
                                                   _tl1575516308_
                                                   _hd1575616305_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g43000_|
                                                   _hd1575616305_)
                                                  (if (gx#stx-pair?
                                                       _tl1575516308_)
                                                      (let ((_e1577416169_
                                                             (gx#syntax-e
                                                              _tl1575516308_)))
                                                        (let ((_tl1577216176_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1577416169_)))
                      (_hd1577316173_
                       (let () (declare (not safe)) (##car _e1577416169_))))
                  (if (gx#stx-null? _tl1577216176_)
                      (___kont3923739238_ _hd1577316173_)
                      (___kont3924139242_ _tl1575516308_ _hd1575616305_))))
              (___kont3924139242_ _tl1575516308_ _hd1575616305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3924139242_
                                                   _tl1575516308_
                                                   _hd1575616305_))))
                                      (if (gx#stx-pair? _hd1575616305_)
                                          (let ((_e1578216084_
                                                 (gx#syntax-e _hd1575616305_)))
                                            (let ((_tl1578016091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1578216084_)))
                                                  (_hd1578116088_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1578216084_))))
                                              (if (gx#identifier?
                                                   _hd1578116088_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g42999_|
                                                       _hd1578116088_)
                                                      (if (gx#stx-pair?
                                                           _tl1578016091_)
                                                          (let ((_e1578516094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1578016091_)))
                    (let ((_tl1578316101_
                           (let () (declare (not safe)) (##cdr _e1578516094_)))
                          (_hd1578416098_
                           (let ()
                             (declare (not safe))
                             (##car _e1578516094_))))
                      (if (gx#stx-null? _tl1578316101_)
                          (if (fxzero? _d15743_)
                              (let ((_L16104_ _tl1575516308_)
                                    (_L16106_ _hd1578416098_))
                                (___kont3923939240_ _L16104_ _L16106_))
                              (___kont3924139242_
                               _tl1575516308_
                               _hd1575616305_))
                          (___kont3924139242_ _tl1575516308_ _hd1575616305_))))
                  (___kont3924139242_ _tl1575516308_ _hd1575616305_))
              (___kont3924139242_ _tl1575516308_ _hd1575616305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3924139242_
                                                   _tl1575516308_
                                                   _hd1575616305_))))
                                          (___kont3924139242_
                                           _tl1575516308_
                                           _hd1575616305_)))))
                              (let ()
                                (declare (not safe))
                                (_g1574915973_)))))))))
          (let* ((_g1568115695_
                  (lambda (_g1568215691_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1568215691_)))
                 (_g1568015737_
                  (lambda (_g1568215699_)
                    (if (gx#stx-pair? _g1568215699_)
                        (let ((_e1568615702_ (gx#syntax-e _g1568215699_)))
                          (let ((_hd1568515706_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1568615702_)))
                                (_tl1568415709_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1568615702_))))
                            (if (gx#stx-pair? _tl1568415709_)
                                (let ((_e1568915712_
                                       (gx#syntax-e _tl1568415709_)))
                                  (let ((_hd1568815716_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1568915712_)))
                                        (_tl1568715719_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1568915712_))))
                                    (if (gx#stx-null? _tl1568715719_)
                                        ((lambda (_L15722_)
                                           (if (_simple-quote?15677_ _L15722_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15722_ '()))
                                               (_generate15679_ _L15722_ '0)))
                                         _hd1568815716_)
                                        (_g1568115695_ _g1568215699_))))
                                (_g1568115695_ _g1568215699_))))
                        (_g1568115695_ _g1568215699_)))))
            (_g1568015737_ _stx15674_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16609_)
        (let* ((___stx3935639357_ _$stx16609_)
               (_g1661416635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3935639357_))))
          (let ((___kont3935939360_
                 (lambda (_L16703_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L16703_ '()))))
                (___kont3936139362_
                 (lambda (_L16662_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _L16662_ '())))
                               '())))))
            (let ((___match3937739378_
                   (lambda (_e1661916683_
                            _hd1661816687_
                            _tl1661716690_
                            _e1662216693_
                            _hd1662116697_
                            _tl1662016700_)
                     (let ((_L16703_ _hd1662116697_))
                       (if (gx#stx-datum? _L16703_)
                           (___kont3935939360_ _L16703_)
                           (___kont3936139362_ _hd1662116697_))))))
              (if (gx#stx-pair? ___stx3935639357_)
                  (let ((_e1661916683_ (gx#syntax-e ___stx3935639357_)))
                    (let ((_tl1661716690_
                           (let () (declare (not safe)) (##cdr _e1661916683_)))
                          (_hd1661816687_
                           (let ()
                             (declare (not safe))
                             (##car _e1661916683_))))
                      (if (gx#stx-pair? _tl1661716690_)
                          (let ((_e1662216693_ (gx#syntax-e _tl1661716690_)))
                            (let ((_tl1662016700_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1662216693_)))
                                  (_hd1662116697_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1662216693_))))
                              (if (gx#stx-null? _tl1662016700_)
                                  (___match3937739378_
                                   _e1661916683_
                                   _hd1661816687_
                                   _tl1661716690_
                                   _e1662216693_
                                   _hd1662116697_
                                   _tl1662016700_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1661416635_)))))
                          (let () (declare (not safe)) (_g1661416635_)))))
                  (let () (declare (not safe)) (_g1661416635_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16720_)
        (letrec ((_generate16723_
                  (lambda (_rest16842_)
                    (let _lp16845_ ((_rest16848_ _rest16842_)
                                    (_hd16850_ '())
                                    (_body16851_ '()))
                      (let* ((___stx3941439415_ _rest16848_)
                             (_g1685416866_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx3941439415_))))
                        (let ((___kont3941739418_
                               (lambda (_L16894_ _L16896_)
                                 (let* ((___stx3939439395_ _L16896_)
                                        (_g1691316920_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx3939439395_))))
                                   (let ((___kont3939739398_
                                          (lambda ()
                                            (let ((_arg16956_ (gx#genident)))
                                              (_lp16845_
                                               _L16894_
                                               (cons _arg16956_ _hd16850_)
                                               (cons _arg16956_
                                                     _body16851_)))))
                                         (___kont3939939400_
                                          (lambda ()
                                            (if (gx#stx-null? _L16894_)
                                                (let ((_tail16942_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail16942_
                         _hd16850_)
                  (foldl cons (list _tail16942_) _body16851_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx16720_
                                                 _L16896_))))
                                         (___kont3940139402_
                                          (lambda ()
                                            (_lp16845_
                                             _L16894_
                                             _hd16850_
                                             (cons _L16896_ _body16851_)))))
                                     (if (gx#identifier? ___stx3939439395_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g43004_|
                                              ___stx3939439395_)
                                             (___kont3939739398_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g43003_|
                                                  ___stx3939439395_)
                                                 (___kont3939939400_)
                                                 (___kont3940139402_)))
                                         (___kont3940139402_))))))
                              (___kont3941939420_
                               (lambda ()
                                 (values (reverse _hd16850_)
                                         (reverse _body16851_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx3941439415_)
                              (let ((_e1686016884_
                                     (gx#syntax-e ___stx3941439415_)))
                                (let ((_tl1685816891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1686016884_)))
                                      (_hd1685916888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1686016884_))))
                                  (___kont3941739418_
                                   _tl1685816891_
                                   _hd1685916888_)))
                              (___kont3941939420_))))))))
          (let* ((_g1672616737_
                  (lambda (_g1672716733_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1672716733_)))
                 (_g1672516838_
                  (lambda (_g1672716741_)
                    (if (gx#stx-pair? _g1672716741_)
                        (let ((_e1673116744_ (gx#syntax-e _g1672716741_)))
                          (let ((_hd1673016748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1673116744_)))
                                (_tl1672916751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1673116744_))))
                            ((lambda (_L16754_)
                               (if (and (gx#stx-list? _L16754_)
                                        (not (gx#stx-null? _L16754_)))
                                   (let ((_g43005_ (_generate16723_ _L16754_)))
                                     (begin
                                       (let ((_g43006_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g43005_)
                                                    (##vector-length _g43005_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g43006_ 3)))
                                             (error "Context expects 3 values"
                                                    _g43006_)))
                                       (let ((_hd16767_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g43005_ 0)))
                                             (_body16769_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g43005_ 1)))
                                             (_tail?16770_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g43005_ 2))))
                                         (let* ((_g1677216780_
                                                 (lambda (_g1677316776_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1677316776_)))
                                                (_g1677116834_
                                                 (lambda (_g1677316784_)
                                                   ((lambda (_L16787_)
                                                      (let ()
                                                        (let* ((_g1680016808_
                                                                (lambda (_g1680116804_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1680116804_)))
                       (_g1679916830_
                        (lambda (_g1680116812_)
                          ((lambda (_L16815_)
                             (let ()
                               (let ()
                                 (if _tail?16770_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16787_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16815_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16787_
                                                 (cons _L16815_ '())))))))
                           _g1680116812_))))
                  (_g1679916830_ _body16769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1677316784_))))
                                           (_g1677116834_ _hd16767_)))))
                                   (_g1672616737_ _g1672716741_)))
                             _tl1672916751_)))
                        (_g1672616737_ _g1672716741_)))))
            (_g1672516838_ _stx16720_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16968_)
        (let ((_g1697116978_
               (lambda (_g1697216974_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g1697216974_))))
          (_g1697116978_ _$stx16968_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16982_)
        (let ((_g1698516992_
               (lambda (_g1698616988_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g1698616988_))))
          (_g1698516992_ _$stx16982_))))))
