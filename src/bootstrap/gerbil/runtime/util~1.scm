(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57910_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |[1]#_g57913_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |[1]#_g57914_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57915_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |[1]#_g57916_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57917_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |[1]#_g57918_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57919_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |[1]#_g57920_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57922_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |[1]#_g57923_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57924_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |[1]#_g57925_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57931_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |[1]#_g57932_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57933_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |[1]#_g57934_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57947_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57950_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[1]#_g57971_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57981_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[1]#procedure-formals|
      (lambda (_ctx49427_ _args49429_)
        (let _recur49431_ ((_rest49434_ _args49429_))
          (let* ((___stx5662956630_ _rest49434_)
                 (_g4944049453_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx5662956630_))))
            (let ((___kont5663256633_
                   (lambda (_L49513_ _L49515_)
                     (let* ((___stx5655356554_ _L49515_)
                            (_g4953049575_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                ___stx5655356554_))))
                       (let ((___kont5655656557_
                              (lambda (_L49777_)
                                (cons _L49515_
                                      (let ()
                                        (declare (not safe))
                                        (_recur49431_ _L49513_)))))
                             (___kont5655856559_
                              (lambda (_L49755_ _L49757_)
                                (cons _L49515_
                                      (let ()
                                        (declare (not safe))
                                        (_recur49431_ _L49513_)))))
                             (___kont5656056561_
                              (lambda (_L49705_ _L49707_ _L49708_)
                                (cons (cons _L49708_ (cons _L49705_ '()))
                                      (let ()
                                        (declare (not safe))
                                        (_recur49431_ _L49513_)))))
                             (___kont5656456565_
                              (lambda (_L49613_ _L49615_)
                                (cons _L49615_
                                      (let ()
                                        (declare (not safe))
                                        (_recur49431_ _L49513_)))))
                             (___kont5656656567_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"bad procedure formals"
                                 _ctx49427_
                                 _args49429_
                                 _L49515_))))
                         (let* ((___match5662656627_
                                 (lambda (_e4956649593_
                                          _hd4956549597_
                                          _tl4956449600_
                                          _e4956949603_
                                          _hd4956849607_
                                          _tl4956749610_)
                                   (let ((_L49613_ _hd4956849607_)
                                         (_L49615_ _hd4956549597_))
                                     (if (and (gx#identifier? _L49613_)
                                              (or (gx#free-identifier=?
                                                   _L49613_
                                                   (gx#datum->syntax '#f ':))
                                                  (gx#free-identifier=?
                                                   _L49613_
                                                   (gx#datum->syntax '#f ':-))
                                                  (gx#free-identifier=?
                                                   _L49613_
                                                   (gx#datum->syntax
                                                    '#f
                                                    ':~))))
                                         (___kont5656456565_ _L49613_ _L49615_)
                                         (___kont5656656567_)))))
                                (___match5662056621_
                                 (lambda (_e4956649593_
                                          _hd4956549597_
                                          _tl4956449600_)
                                   (if (gx#stx-pair? _tl4956449600_)
                                       (let ((_e4956949603_
                                              (gx#syntax-e _tl4956449600_)))
                                         (let ((_tl4956749610_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4956949603_)))
                                               (_hd4956849607_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4956949603_))))
                                           (___match5662656627_
                                            _e4956649593_
                                            _hd4956549597_
                                            _tl4956449600_
                                            _e4956949603_
                                            _hd4956849607_
                                            _tl4956749610_)))
                                       (___kont5656656567_))))
                                (___match5661456615_
                                 (lambda (_e4954649645_
                                          _hd4954549649_
                                          _tl4954449652_
                                          ___splice5656256563_
                                          _target4954749655_
                                          _tl4954949658_
                                          _e4955849661_
                                          _hd4955749665_
                                          _tl4955649668_
                                          _e4956149671_
                                          _hd4956049675_
                                          _tl4955949678_)
                                   (letrec ((_loop4955049681_
                                             (lambda (_hd4954849685_
                                                      _contract4955449688_)
                                               (if (gx#stx-pair?
                                                    _hd4954849685_)
                                                   (let ((_e4955149691_
                                                          (gx#syntax-e
                                                           _hd4954849685_)))
                                                     (let ((_lp-tl4955349698_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4955149691_)))
                                                           (_lp-hd4955249695_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4955149691_))))
                                                       (let ((__tmp57908
                                                              (cons _lp-hd4955249695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _contract4955449688_)))
                 (declare (not safe))
                 (_loop4955049681_ _lp-tl4955349698_ __tmp57908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_contract4955549701_
                                                          (reverse _contract4955449688_)))
                                                     (let ((_L49705_
                                                            _hd4956049675_)
                                                           (_L49707_
                                                            _contract4955549701_)
                                                           (_L49708_
                                                            _hd4954549649_))
                                                       (if (gx#identifier?
                                                            _L49708_)
                                                           (___kont5656056561_
                                                            _L49705_
                                                            _L49707_
                                                            _L49708_)
                                                           (___match5662056621_
                                                            _e4954649645_
                                                            _hd4954549649_
                                                            _tl4954449652_))))))))
                                     (let ()
                                       (declare (not safe))
                                       (_loop4955049681_
                                        _target4954749655_
                                        '())))))
                                (___match5658256583_
                                 (lambda (_e4953749735_
                                          _hd4953649739_
                                          _tl4953549742_
                                          _e4954049745_
                                          _hd4953949749_
                                          _tl4953849752_)
                                   (let ((_L49755_ _hd4953949749_)
                                         (_L49757_ _hd4953649739_))
                                     (if (gx#identifier? _L49757_)
                                         (___kont5655856559_ _L49755_ _L49757_)
                                         (if (gx#stx-pair/null? _tl4953549742_)
                                             (if (let ((__tmp57909
                                                        (gx#stx-length
                                                         _tl4953549742_)))
                                                   (declare (not safe))
                                                   (##fx>= __tmp57909 '2))
                                                 (let ((___splice5656256563_
                                                        (gx#syntax-split-splice
                                                         _tl4953549742_
                                                         '2)))
                                                   (let ((_tl4954949658_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5656256563_
                                                             '1)))
                                                         (_target4954749655_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5656256563_
                                                             '0))))
                                                     (if (gx#stx-pair?
                                                          _tl4954949658_)
                                                         (let ((_e4955849661_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4954949658_)))
                   (let ((_tl4955649668_
                          (let () (declare (not safe)) (##cdr _e4955849661_)))
                         (_hd4955749665_
                          (let () (declare (not safe)) (##car _e4955849661_))))
                     (if (gx#identifier? _hd4955749665_)
                         (if (gx#free-identifier=?
                              |[1]#_g57910_|
                              _hd4955749665_)
                             (if (gx#stx-pair? _tl4955649668_)
                                 (let ((_e4956149671_
                                        (gx#syntax-e _tl4955649668_)))
                                   (let ((_tl4955949678_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4956149671_)))
                                         (_hd4956049675_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4956149671_))))
                                     (if (gx#stx-null? _tl4955949678_)
                                         (___match5661456615_
                                          _e4953749735_
                                          _hd4953649739_
                                          _tl4953549742_
                                          ___splice5656256563_
                                          _target4954749655_
                                          _tl4954949658_
                                          _e4955849661_
                                          _hd4955749665_
                                          _tl4955649668_
                                          _e4956149671_
                                          _hd4956049675_
                                          _tl4955949678_)
                                         (___match5662656627_
                                          _e4953749735_
                                          _hd4953649739_
                                          _tl4953549742_
                                          _e4954049745_
                                          _hd4953949749_
                                          _tl4953849752_))))
                                 (___match5662656627_
                                  _e4953749735_
                                  _hd4953649739_
                                  _tl4953549742_
                                  _e4954049745_
                                  _hd4953949749_
                                  _tl4953849752_))
                             (___match5662656627_
                              _e4953749735_
                              _hd4953649739_
                              _tl4953549742_
                              _e4954049745_
                              _hd4953949749_
                              _tl4953849752_))
                         (___match5662656627_
                          _e4953749735_
                          _hd4953649739_
                          _tl4953549742_
                          _e4954049745_
                          _hd4953949749_
                          _tl4953849752_))))
                 (___match5662656627_
                  _e4953749735_
                  _hd4953649739_
                  _tl4953549742_
                  _e4954049745_
                  _hd4953949749_
                  _tl4953849752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match5662656627_
                                                  _e4953749735_
                                                  _hd4953649739_
                                                  _tl4953549742_
                                                  _e4954049745_
                                                  _hd4953949749_
                                                  _tl4953849752_))
                                             (___match5662656627_
                                              _e4953749735_
                                              _hd4953649739_
                                              _tl4953549742_
                                              _e4954049745_
                                              _hd4953949749_
                                              _tl4953849752_))))))
                                (_g4952649770_
                                 (lambda ()
                                   (if (gx#stx-pair? ___stx5655356554_)
                                       (let ((_e4953749735_
                                              (gx#syntax-e ___stx5655356554_)))
                                         (let ((_tl4953549742_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4953749735_)))
                                               (_hd4953649739_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4953749735_))))
                                           (if (gx#stx-pair? _tl4953549742_)
                                               (let ((_e4954049745_
                                                      (gx#syntax-e
                                                       _tl4953549742_)))
                                                 (let ((_tl4953849752_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4954049745_)))
                                                       (_hd4953949749_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4954049745_))))
                                                   (if (gx#stx-null?
                                                        _tl4953849752_)
                                                       (___match5658256583_
                                                        _e4953749735_
                                                        _hd4953649739_
                                                        _tl4953549742_
                                                        _e4954049745_
                                                        _hd4953949749_
                                                        _tl4953849752_)
                                                       (if (gx#stx-pair/null?
                                                            _tl4953549742_)
                                                           (if (let ((__tmp57911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-length _tl4953549742_)))
                         (declare (not safe))
                         (##fx>= __tmp57911 '2))
                       (let ((___splice5656256563_
                              (gx#syntax-split-splice _tl4953549742_ '2)))
                         (let ((_tl4954949658_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice5656256563_ '1)))
                               (_target4954749655_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice5656256563_ '0))))
                           (if (gx#stx-pair? _tl4954949658_)
                               (let ((_e4955849661_
                                      (gx#syntax-e _tl4954949658_)))
                                 (let ((_tl4955649668_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4955849661_)))
                                       (_hd4955749665_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4955849661_))))
                                   (if (gx#identifier? _hd4955749665_)
                                       (if (gx#free-identifier=?
                                            |[1]#_g57910_|
                                            _hd4955749665_)
                                           (if (gx#stx-pair? _tl4955649668_)
                                               (let ((_e4956149671_
                                                      (gx#syntax-e
                                                       _tl4955649668_)))
                                                 (let ((_tl4955949678_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4956149671_)))
                                                       (_hd4956049675_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4956149671_))))
                                                   (if (gx#stx-null?
                                                        _tl4955949678_)
                                                       (___match5661456615_
                                                        _e4953749735_
                                                        _hd4953649739_
                                                        _tl4953549742_
                                                        ___splice5656256563_
                                                        _target4954749655_
                                                        _tl4954949658_
                                                        _e4955849661_
                                                        _hd4955749665_
                                                        _tl4955649668_
                                                        _e4956149671_
                                                        _hd4956049675_
                                                        _tl4955949678_)
                                                       (___match5662656627_
                                                        _e4953749735_
                                                        _hd4953649739_
                                                        _tl4953549742_
                                                        _e4954049745_
                                                        _hd4953949749_
                                                        _tl4953849752_))))
                                               (___match5662656627_
                                                _e4953749735_
                                                _hd4953649739_
                                                _tl4953549742_
                                                _e4954049745_
                                                _hd4953949749_
                                                _tl4953849752_))
                                           (___match5662656627_
                                            _e4953749735_
                                            _hd4953649739_
                                            _tl4953549742_
                                            _e4954049745_
                                            _hd4953949749_
                                            _tl4953849752_))
                                       (___match5662656627_
                                        _e4953749735_
                                        _hd4953649739_
                                        _tl4953549742_
                                        _e4954049745_
                                        _hd4953949749_
                                        _tl4953849752_))))
                               (___match5662656627_
                                _e4953749735_
                                _hd4953649739_
                                _tl4953549742_
                                _e4954049745_
                                _hd4953949749_
                                _tl4953849752_))))
                       (___match5662656627_
                        _e4953749735_
                        _hd4953649739_
                        _tl4953549742_
                        _e4954049745_
                        _hd4953949749_
                        _tl4953849752_))
                   (___match5662656627_
                    _e4953749735_
                    _hd4953649739_
                    _tl4953549742_
                    _e4954049745_
                    _hd4953949749_
                    _tl4953849752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _tl4953549742_)
                                                   (if (let ((__tmp57912
                                                              (gx#stx-length
                                                               _tl4953549742_)))
                                                         (declare (not safe))
                                                         (##fx>= __tmp57912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '2))
               (let ((___splice5656256563_
                      (gx#syntax-split-splice _tl4953549742_ '2)))
                 (let ((_tl4954949658_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice5656256563_ '1)))
                       (_target4954749655_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice5656256563_ '0))))
                   (if (gx#stx-pair? _tl4954949658_)
                       (let ((_e4955849661_ (gx#syntax-e _tl4954949658_)))
                         (let ((_tl4955649668_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4955849661_)))
                               (_hd4955749665_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4955849661_))))
                           (if (gx#identifier? _hd4955749665_)
                               (if (gx#free-identifier=?
                                    |[1]#_g57910_|
                                    _hd4955749665_)
                                   (if (gx#stx-pair? _tl4955649668_)
                                       (let ((_e4956149671_
                                              (gx#syntax-e _tl4955649668_)))
                                         (let ((_tl4955949678_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4956149671_)))
                                               (_hd4956049675_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4956149671_))))
                                           (if (gx#stx-null? _tl4955949678_)
                                               (___match5661456615_
                                                _e4953749735_
                                                _hd4953649739_
                                                _tl4953549742_
                                                ___splice5656256563_
                                                _target4954749655_
                                                _tl4954949658_
                                                _e4955849661_
                                                _hd4955749665_
                                                _tl4955649668_
                                                _e4956149671_
                                                _hd4956049675_
                                                _tl4955949678_)
                                               (___kont5656656567_))))
                                       (___kont5656656567_))
                                   (___kont5656656567_))
                               (___kont5656656567_))))
                       (___kont5656656567_))))
               (___kont5656656567_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5656656567_)))))
                                       (___kont5656656567_))))
                                (_L49777_ ___stx5655356554_))
                           (if (gx#identifier? _L49777_)
                               (___kont5655656557_ _L49777_)
                               (let ()
                                 (declare (not safe))
                                 (_g4952649770_))))))))
                  (___kont5663456635_ (lambda (_L49482_) _L49482_))
                  (___kont5663656637_ (lambda () '()))
                  (___kont5663856639_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"bad procedure formals"
                      _ctx49427_
                      _args49429_
                      (gx#datum->syntax '#f 'hd)))))
              (let* ((_g4943849475_
                      (lambda ()
                        (if (gx#stx-null? ___stx5662956630_)
                            (___kont5663656637_)
                            (___kont5663856639_))))
                     (_g4943749496_
                      (lambda ()
                        (let ((_L49482_ ___stx5662956630_))
                          (if (gx#identifier? _L49482_)
                              (___kont5663456635_ _L49482_)
                              (let ()
                                (declare (not safe))
                                (_g4943849475_)))))))
                (if (gx#stx-pair? ___stx5662956630_)
                    (let ((_e4944649503_ (gx#syntax-e ___stx5662956630_)))
                      (let ((_tl4944449510_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4944649503_)))
                            (_hd4944549507_
                             (let ()
                               (declare (not safe))
                               (##car _e4944649503_))))
                        (___kont5663256633_ _tl4944449510_ _hd4944549507_)))
                    (let () (declare (not safe)) (_g4943749496_)))))))))
    (define |[1]#procedure-signature|
      (lambda (_ctx48994_ _args48996_ _return48997_ _effect48998_)
        (let* ((_argument-types49416_
                (let _recur49000_ ((_rest49003_ _args48996_))
                  (let* ((___stx5676556766_ _rest49003_)
                         (_g4900849021_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             ___stx5676556766_))))
                    (let ((___kont5676856769_
                           (lambda (_L49069_ _L49071_)
                             (let* ((___stx5665156652_ _L49071_)
                                    (_g4908749143_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        ___stx5665156652_))))
                               (let ((___kont5665456655_
                                      (lambda (_L49399_)
                                        (cons (gx#core-quote-syntax 't::t)
                                              (let ()
                                                (declare (not safe))
                                                (_recur49000_ _L49069_)))))
                                     (___kont5665656657_
                                      (lambda (_L49377_ _L49379_)
                                        (cons (gx#core-quote-syntax 't::t)
                                              (let ()
                                                (declare (not safe))
                                                (_recur49000_ _L49069_)))))
                                     (___kont5665856659_
                                      (lambda (_L49330_ _L49332_)
                                        (let ((_info49347_
                                               (gx#syntax-local-value
                                                _L49330_)))
                                          (cons (let ((__obj57785 _info49347_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj57785
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj57785
                                                         '10
                                                         '#f
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core/mop~MOP-2#class-type-info::t
                                                       __obj57785
                                                       'type-descriptor)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur49000_ _L49069_))))))
                                     (___kont5666056661_
                                      (lambda (_L49276_ _L49278_)
                                        (cons (gx#core-quote-syntax 't::t)
                                              (let ()
                                                (declare (not safe))
                                                (_recur49000_ _L49069_)))))
                                     (___kont5666256663_
                                      (lambda (_L49211_ _L49213_ _L49214_)
                                        (let ((_info49236_
                                               (gx#syntax-local-value
                                                _L49211_)))
                                          (cons '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur49000_ _L49069_))))))
                                     (___kont5666456665_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"bad procedure signature"
                                         _ctx48994_
                                         _L49071_))))
                                 (let* ((___match5676256763_
                                         (lambda (_e4912549161_
                                                  _hd4912449165_
                                                  _tl4912349168_
                                                  _e4912849171_
                                                  _hd4912749175_
                                                  _tl4912649178_
                                                  _e4913149181_
                                                  _hd4913049185_
                                                  _tl4912949188_
                                                  _e4913449191_
                                                  _hd4913349195_
                                                  _tl4913249198_
                                                  _e4913749201_
                                                  _hd4913649205_
                                                  _tl4913549208_)
                                           (let ((_L49211_ _hd4913649205_)
                                                 (_L49213_ _hd4913049185_)
                                                 (_L49214_ _hd4912449165_))
                                             (if (and (gx#identifier? _L49214_)
                                                      (gx#identifier? _L49213_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                         _L49211_)))
                                                 (___kont5666256663_
                                                  _L49211_
                                                  _L49213_
                                                  _L49214_)
                                                 (___kont5666456665_)))))
                                        (___match5672456725_
                                         (lambda (_e4911349246_
                                                  _hd4911249250_
                                                  _tl4911149253_
                                                  _e4911649256_
                                                  _hd4911549260_
                                                  _tl4911449263_
                                                  _e4911949266_
                                                  _hd4911849270_
                                                  _tl4911749273_)
                                           (let ((_L49276_ _hd4911849270_)
                                                 (_L49278_ _hd4911249250_))
                                             (if (and (gx#identifier? _L49278_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                         _L49276_)))
                                                 (___kont5666056661_
                                                  _L49276_
                                                  _L49278_)
                                                 (___kont5666456665_)))))
                                        (___match5670256703_
                                         (lambda (_e4910249300_
                                                  _hd4910149304_
                                                  _tl4910049307_
                                                  _e4910549310_
                                                  _hd4910449314_
                                                  _tl4910349317_
                                                  _e4910849320_
                                                  _hd4910749324_
                                                  _tl4910649327_)
                                           (let ((_L49330_ _hd4910749324_)
                                                 (_L49332_ _hd4910149304_))
                                             (if (and (gx#identifier? _L49332_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                         _L49330_)))
                                                 (___kont5665856659_
                                                  _L49330_
                                                  _L49332_)
                                                 (___kont5666456665_)))))
                                        (___match5668056681_
                                         (lambda (_e4909449357_
                                                  _hd4909349361_
                                                  _tl4909249364_
                                                  _e4909749367_
                                                  _hd4909649371_
                                                  _tl4909549374_)
                                           (let ((_L49377_ _hd4909649371_)
                                                 (_L49379_ _hd4909349361_))
                                             (if (gx#identifier? _L49379_)
                                                 (___kont5665656657_
                                                  _L49377_
                                                  _L49379_)
                                                 (___kont5666456665_)))))
                                        (_g4908249392_
                                         (lambda ()
                                           (if (gx#stx-pair? ___stx5665156652_)
                                               (let ((_e4909449357_
                                                      (gx#syntax-e
                                                       ___stx5665156652_)))
                                                 (let ((_tl4909249364_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4909449357_)))
                                                       (_hd4909349361_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4909449357_))))
                                                   (if (gx#stx-pair?
                                                        _tl4909249364_)
                                                       (let ((_e4909749367_
                                                              (gx#syntax-e
                                                               _tl4909249364_)))
                                                         (let ((_tl4909549374_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4909749367_)))
                       (_hd4909649371_
                        (let () (declare (not safe)) (##car _e4909749367_))))
                   (if (gx#stx-null? _tl4909549374_)
                       (___match5668056681_
                        _e4909449357_
                        _hd4909349361_
                        _tl4909249364_
                        _e4909749367_
                        _hd4909649371_
                        _tl4909549374_)
                       (if (gx#identifier? _hd4909649371_)
                           (if (gx#free-identifier=?
                                |[1]#_g57913_|
                                _hd4909649371_)
                               (if (gx#stx-pair? _tl4909549374_)
                                   (let ((_e4910849320_
                                          (gx#syntax-e _tl4909549374_)))
                                     (let ((_tl4910649327_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4910849320_)))
                                           (_hd4910749324_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4910849320_))))
                                       (___match5670256703_
                                        _e4909449357_
                                        _hd4909349361_
                                        _tl4909249364_
                                        _e4909749367_
                                        _hd4909649371_
                                        _tl4909549374_
                                        _e4910849320_
                                        _hd4910749324_
                                        _tl4910649327_)))
                                   (___kont5666456665_))
                               (if (gx#free-identifier=?
                                    |[1]#_g57914_|
                                    _hd4909649371_)
                                   (if (gx#stx-pair? _tl4909549374_)
                                       (let ((_e4911949266_
                                              (gx#syntax-e _tl4909549374_)))
                                         (let ((_tl4911749273_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4911949266_)))
                                               (_hd4911849270_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4911949266_))))
                                           (___match5672456725_
                                            _e4909449357_
                                            _hd4909349361_
                                            _tl4909249364_
                                            _e4909749367_
                                            _hd4909649371_
                                            _tl4909549374_
                                            _e4911949266_
                                            _hd4911849270_
                                            _tl4911749273_)))
                                       (___kont5666456665_))
                                   (if (gx#free-identifier=?
                                        |[1]#_g57915_|
                                        _hd4909649371_)
                                       (if (gx#stx-pair? _tl4909549374_)
                                           (let ((_e4913149181_
                                                  (gx#syntax-e
                                                   _tl4909549374_)))
                                             (let ((_tl4912949188_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4913149181_)))
                                                   (_hd4913049185_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4913149181_))))
                                               (if (gx#stx-pair?
                                                    _tl4912949188_)
                                                   (let ((_e4913449191_
                                                          (gx#syntax-e
                                                           _tl4912949188_)))
                                                     (let ((_tl4913249198_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4913449191_)))
                                                           (_hd4913349195_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4913449191_))))
                                                       (if (gx#identifier?
                                                            _hd4913349195_)
                                                           (if (gx#free-identifier=?
                                                                |[1]#_g57916_|
                                                                _hd4913349195_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl4913249198_)
                           (let ((_e4913749201_ (gx#syntax-e _tl4913249198_)))
                             (let ((_tl4913549208_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4913749201_)))
                                   (_hd4913649205_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4913749201_))))
                               (___match5676256763_
                                _e4909449357_
                                _hd4909349361_
                                _tl4909249364_
                                _e4909749367_
                                _hd4909649371_
                                _tl4909549374_
                                _e4913149181_
                                _hd4913049185_
                                _tl4912949188_
                                _e4913449191_
                                _hd4913349195_
                                _tl4913249198_
                                _e4913749201_
                                _hd4913649205_
                                _tl4913549208_)))
                           (___kont5666456665_))
                       (___kont5666456665_))
                   (___kont5666456665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5666456665_))))
                                           (___kont5666456665_))
                                       (___kont5666456665_))))
                           (___kont5666456665_)))))
               (___kont5666456665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont5666456665_))))
                                        (_L49399_ ___stx5665156652_))
                                   (if (gx#identifier? _L49399_)
                                       (___kont5665456655_ _L49399_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4908249392_))))))))
                          (___kont5677056771_
                           (lambda (_L49039_) (gx#core-quote-syntax 't::t)))
                          (___kont5677256773_ (lambda () '())))
                      (let* ((_g4900749032_
                              (lambda ()
                                (if (gx#stx-null? ___stx5676556766_)
                                    (___kont5677256773_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4900849021_)))))
                             (_g4900649052_
                              (lambda ()
                                (let ((_L49039_ ___stx5676556766_))
                                  (if (gx#identifier? _L49039_)
                                      (___kont5677056771_ _L49039_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4900749032_)))))))
                        (if (gx#stx-pair? ___stx5676556766_)
                            (let ((_e4901449059_
                                   (gx#syntax-e ___stx5676556766_)))
                              (let ((_tl4901249066_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4901449059_)))
                                    (_hd4901349063_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4901449059_))))
                                (___kont5676856769_
                                 _tl4901249066_
                                 _hd4901349063_)))
                            (let () (declare (not safe)) (_g4900649052_))))))))
               (_return-type49422_
                (let ((_info49419_
                       (gx#syntax-local-value _return48997_ false)))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _info49419_))
                      (let ((__obj57786 _info49419_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj57786
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj57786
                               '10
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj57786
                             'type-descriptor)))
                      (gx#raise-syntax-error
                       '#f
                       '"bad procedure return type"
                       _ctx48994_
                       _return48997_)))))
          (cons 'arguments:
                (cons _argument-types49416_
                      (cons 'return:
                            (cons _return-type49422_
                                  (cons 'effect:
                                        (cons _effect48998_ '())))))))))
    (define |[1]#procedure-typedecl|
      (lambda (_ctx48593_ _args48595_)
        (let _recur48597_ ((_rest48600_ _args48595_))
          (let* ((___stx5689756898_ _rest48600_)
                 (_g4860548618_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx5689756898_))))
            (let ((___kont5690056901_
                   (lambda (_L48666_ _L48668_)
                     (let* ((___stx5678556786_ _L48668_)
                            (_g4868348739_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                ___stx5678556786_))))
                       (let ((___kont5678856789_
                              (lambda (_L48977_)
                                (cons (cons _L48977_
                                            (cons (gx#datum->syntax '#f ':t)
                                                  '()))
                                      (let ()
                                        (declare (not safe))
                                        (_recur48597_ _L48666_)))))
                             (___kont5679056791_
                              (lambda (_L48955_ _L48957_)
                                (cons (cons _L48957_
                                            (cons (gx#datum->syntax '#f ':t)
                                                  '()))
                                      (let ()
                                        (declare (not safe))
                                        (_recur48597_ _L48666_)))))
                             (___kont5679256793_
                              (lambda (_L48911_ _L48913_)
                                (cons (cons _L48913_ (cons _L48911_ '()))
                                      (let ()
                                        (declare (not safe))
                                        (_recur48597_ _L48666_)))))
                             (___kont5679456795_
                              (lambda (_L48857_ _L48859_)
                                (cons (cons _L48859_ (cons _L48857_ '()))
                                      (let ()
                                        (declare (not safe))
                                        (_recur48597_ _L48666_)))))
                             (___kont5679656797_
                              (lambda (_L48796_ _L48798_ _L48799_)
                                (cons (cons _L48799_ (cons _L48796_ '()))
                                      (let ()
                                        (declare (not safe))
                                        (_recur48597_ _L48666_))))))
                         (let* ((___match5689456895_
                                 (lambda (_e4872148746_
                                          _hd4872048750_
                                          _tl4871948753_
                                          _e4872448756_
                                          _hd4872348760_
                                          _tl4872248763_
                                          _e4872748766_
                                          _hd4872648770_
                                          _tl4872548773_
                                          _e4873048776_
                                          _hd4872948780_
                                          _tl4872848783_
                                          _e4873348786_
                                          _hd4873248790_
                                          _tl4873148793_)
                                   (let ((_L48796_ _hd4873248790_)
                                         (_L48798_ _hd4872648770_)
                                         (_L48799_ _hd4872048750_))
                                     (if (and (gx#identifier? _L48799_)
                                              (gx#identifier? _L48798_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L48796_)))
                                         (___kont5679656797_
                                          _L48796_
                                          _L48798_
                                          _L48799_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4868348739_))))))
                                (___match5685656857_
                                 (lambda (_e4870948827_
                                          _hd4870848831_
                                          _tl4870748834_
                                          _e4871248837_
                                          _hd4871148841_
                                          _tl4871048844_
                                          _e4871548847_
                                          _hd4871448851_
                                          _tl4871348854_)
                                   (let ((_L48857_ _hd4871448851_)
                                         (_L48859_ _hd4870848831_))
                                     (if (and (gx#identifier? _L48859_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L48857_)))
                                         (___kont5679456795_ _L48857_ _L48859_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4868348739_))))))
                                (___match5683456835_
                                 (lambda (_e4869848881_
                                          _hd4869748885_
                                          _tl4869648888_
                                          _e4870148891_
                                          _hd4870048895_
                                          _tl4869948898_
                                          _e4870448901_
                                          _hd4870348905_
                                          _tl4870248908_)
                                   (let ((_L48911_ _hd4870348905_)
                                         (_L48913_ _hd4869748885_))
                                     (if (and (gx#identifier? _L48913_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L48911_)))
                                         (___kont5679256793_ _L48911_ _L48913_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4868348739_))))))
                                (___match5681256813_
                                 (lambda (_e4869048935_
                                          _hd4868948939_
                                          _tl4868848942_
                                          _e4869348945_
                                          _hd4869248949_
                                          _tl4869148952_)
                                   (let ((_L48955_ _hd4869248949_)
                                         (_L48957_ _hd4868948939_))
                                     (if (gx#identifier? _L48957_)
                                         (___kont5679056791_ _L48955_ _L48957_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4868348739_))))))
                                (_g4867948970_
                                 (lambda ()
                                   (if (gx#stx-pair? ___stx5678556786_)
                                       (let ((_e4869048935_
                                              (gx#syntax-e ___stx5678556786_)))
                                         (let ((_tl4868848942_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4869048935_)))
                                               (_hd4868948939_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4869048935_))))
                                           (if (gx#stx-pair? _tl4868848942_)
                                               (let ((_e4869348945_
                                                      (gx#syntax-e
                                                       _tl4868848942_)))
                                                 (let ((_tl4869148952_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4869348945_)))
                                                       (_hd4869248949_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4869348945_))))
                                                   (if (gx#stx-null?
                                                        _tl4869148952_)
                                                       (___match5681256813_
                                                        _e4869048935_
                                                        _hd4868948939_
                                                        _tl4868848942_
                                                        _e4869348945_
                                                        _hd4869248949_
                                                        _tl4869148952_)
                                                       (if (gx#identifier?
                                                            _hd4869248949_)
                                                           (if (gx#free-identifier=?
                                                                |[1]#_g57917_|
                                                                _hd4869248949_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl4869148952_)
                           (let ((_e4870448901_ (gx#syntax-e _tl4869148952_)))
                             (let ((_tl4870248908_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4870448901_)))
                                   (_hd4870348905_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4870448901_))))
                               (___match5683456835_
                                _e4869048935_
                                _hd4868948939_
                                _tl4868848942_
                                _e4869348945_
                                _hd4869248949_
                                _tl4869148952_
                                _e4870448901_
                                _hd4870348905_
                                _tl4870248908_)))
                           (let () (declare (not safe)) (_g4868348739_)))
                       (if (gx#free-identifier=? |[1]#_g57918_| _hd4869248949_)
                           (if (gx#stx-pair? _tl4869148952_)
                               (let ((_e4871548847_
                                      (gx#syntax-e _tl4869148952_)))
                                 (let ((_tl4871348854_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4871548847_)))
                                       (_hd4871448851_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4871548847_))))
                                   (___match5685656857_
                                    _e4869048935_
                                    _hd4868948939_
                                    _tl4868848942_
                                    _e4869348945_
                                    _hd4869248949_
                                    _tl4869148952_
                                    _e4871548847_
                                    _hd4871448851_
                                    _tl4871348854_)))
                               (let () (declare (not safe)) (_g4868348739_)))
                           (if (gx#free-identifier=?
                                |[1]#_g57919_|
                                _hd4869248949_)
                               (if (gx#stx-pair? _tl4869148952_)
                                   (let ((_e4872748766_
                                          (gx#syntax-e _tl4869148952_)))
                                     (let ((_tl4872548773_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4872748766_)))
                                           (_hd4872648770_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4872748766_))))
                                       (if (gx#stx-pair? _tl4872548773_)
                                           (let ((_e4873048776_
                                                  (gx#syntax-e
                                                   _tl4872548773_)))
                                             (let ((_tl4872848783_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4873048776_)))
                                                   (_hd4872948780_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4873048776_))))
                                               (if (gx#identifier?
                                                    _hd4872948780_)
                                                   (if (gx#free-identifier=?
                                                        |[1]#_g57920_|
                                                        _hd4872948780_)
                                                       (if (gx#stx-pair?
                                                            _tl4872848783_)
                                                           (let ((_e4873348786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl4872848783_)))
                     (let ((_tl4873148793_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4873348786_)))
                           (_hd4873248790_
                            (let ()
                              (declare (not safe))
                              (##car _e4873348786_))))
                       (___match5689456895_
                        _e4869048935_
                        _hd4868948939_
                        _tl4868848942_
                        _e4869348945_
                        _hd4869248949_
                        _tl4869148952_
                        _e4872748766_
                        _hd4872648770_
                        _tl4872548773_
                        _e4873048776_
                        _hd4872948780_
                        _tl4872848783_
                        _e4873348786_
                        _hd4873248790_
                        _tl4873148793_)))
                   (let () (declare (not safe)) (_g4868348739_)))
               (let () (declare (not safe)) (_g4868348739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4868348739_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4868348739_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4868348739_)))
                               (let () (declare (not safe)) (_g4868348739_)))))
                   (let () (declare (not safe)) (_g4868348739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4868348739_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4868348739_)))))
                                (_L48977_ ___stx5678556786_))
                           (if (gx#identifier? _L48977_)
                               (___kont5678856789_ _L48977_)
                               (let ()
                                 (declare (not safe))
                                 (_g4867948970_))))))))
                  (___kont5690256903_
                   (lambda (_L48636_)
                     (cons (cons _L48636_
                                 (cons (gx#datum->syntax '#f ':t) '()))
                           '())))
                  (___kont5690456905_ (lambda () '())))
              (let* ((_g4860448629_
                      (lambda ()
                        (if (gx#stx-null? ___stx5689756898_)
                            (___kont5690456905_)
                            (let () (declare (not safe)) (_g4860548618_)))))
                     (_g4860348649_
                      (lambda ()
                        (let ((_L48636_ ___stx5689756898_))
                          (if (gx#identifier? _L48636_)
                              (___kont5690256903_ _L48636_)
                              (let ()
                                (declare (not safe))
                                (_g4860448629_)))))))
                (if (gx#stx-pair? ___stx5689756898_)
                    (let ((_e4861148656_ (gx#syntax-e ___stx5689756898_)))
                      (let ((_tl4860948663_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4861148656_)))
                            (_hd4861048660_
                             (let ()
                               (declare (not safe))
                               (##car _e4861148656_))))
                        (___kont5690056901_ _tl4860948663_ _hd4861048660_)))
                    (let () (declare (not safe)) (_g4860348649_)))))))))
    (define |[1]#procedure-contract|
      (lambda (_ctx48124_ _args48126_)
        (let _recur48128_ ((_rest48131_ _args48126_))
          (let* ((___stx5702957030_ _rest48131_)
                 (_g4813648149_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx5702957030_))))
            (let ((___kont5703257033_
                   (lambda (_L48197_ _L48199_)
                     (let* ((___stx5691756918_ _L48199_)
                            (_g4821448270_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                ___stx5691756918_))))
                       (let ((___kont5692056921_
                              (lambda (_L48576_)
                                (let ()
                                  (declare (not safe))
                                  (_recur48128_ _L48197_))))
                             (___kont5692256923_
                              (lambda (_L48554_ _L48556_)
                                (let ()
                                  (declare (not safe))
                                  (_recur48128_ _L48197_))))
                             (___kont5692456925_
                              (lambda (_L48442_ _L48444_)
                                (let* ((_info48459_
                                        (gx#syntax-local-value _L48442_))
                                       (_g4846248477_
                                        (lambda (_g4846348473_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g4846348473_)))
                                       (_g4846148523_
                                        (lambda (_g4846348481_)
                                          (if (gx#stx-pair? _g4846348481_)
                                              (let ((_e4846848484_
                                                     (gx#syntax-e
                                                      _g4846348481_)))
                                                (let ((_hd4846748488_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4846848484_)))
                                                      (_tl4846648491_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4846848484_))))
                                                  (if (gx#stx-pair?
                                                       _tl4846648491_)
                                                      (let ((_e4847148494_
                                                             (gx#syntax-e
                                                              _tl4846648491_)))
                                                        (let ((_hd4847048498_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e4847148494_)))
                      (_tl4846948501_
                       (let () (declare (not safe)) (##cdr _e4847148494_))))
                  (if (gx#stx-null? _tl4846948501_)
                      ((lambda (_L48504_ _L48506_)
                         (let ()
                           (cons (cons (gx#datum->syntax '#f 'unless)
                                       (cons (cons _L48504_
                                                   (cons _L48444_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'error)
                                                         (cons '"bad argument; contract violation"
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L48506_ '()))
                             (cons _L48444_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (let ()
                                   (declare (not safe))
                                   (_recur48128_ _L48197_)))))
                       _hd4847048498_
                       _hd4846748488_)
                      (let ()
                        (declare (not safe))
                        (_g4846248477_ _g4846348481_)))))
              (let () (declare (not safe)) (_g4846248477_ _g4846348481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g4846248477_
                                                 _g4846348481_)))))
                                       (__tmp57921
                                        (list (let ((__obj57787 _info48459_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj57787
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj57787
                                                       '10
                                                       '#f
                                                       '#f))
                                                    (class-slot-ref
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj57787
                                                     'type-descriptor)))
                                              (let ((__obj57788 _info48459_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj57788
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj57788
                                                       '12
                                                       '#f
                                                       '#f))
                                                    (class-slot-ref
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj57788
                                                     'predicate))))))
                                  (declare (not safe))
                                  (_g4846148523_ __tmp57921))))
                             (___kont5692656927_
                              (lambda (_L48388_ _L48390_)
                                (let ()
                                  (declare (not safe))
                                  (_recur48128_ _L48197_))))
                             (___kont5692856929_
                              (lambda (_L48327_ _L48329_ _L48330_)
                                (cons (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons _L48329_
                                                        (cons _L48330_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"bad argument; contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L48329_ '()))
                                  (cons _L48330_ '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_recur48128_ _L48197_))))))
                         (let* ((___match5702657027_
                                 (lambda (_e4825248277_
                                          _hd4825148281_
                                          _tl4825048284_
                                          _e4825548287_
                                          _hd4825448291_
                                          _tl4825348294_
                                          _e4825848297_
                                          _hd4825748301_
                                          _tl4825648304_
                                          _e4826148307_
                                          _hd4826048311_
                                          _tl4825948314_
                                          _e4826448317_
                                          _hd4826348321_
                                          _tl4826248324_)
                                   (let ((_L48327_ _hd4826348321_)
                                         (_L48329_ _hd4825748301_)
                                         (_L48330_ _hd4825148281_))
                                     (if (and (gx#identifier? _L48330_)
                                              (gx#identifier? _L48329_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L48327_)))
                                         (___kont5692856929_
                                          _L48327_
                                          _L48329_
                                          _L48330_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4821448270_))))))
                                (___match5698856989_
                                 (lambda (_e4824048358_
                                          _hd4823948362_
                                          _tl4823848365_
                                          _e4824348368_
                                          _hd4824248372_
                                          _tl4824148375_
                                          _e4824648378_
                                          _hd4824548382_
                                          _tl4824448385_)
                                   (let ((_L48388_ _hd4824548382_)
                                         (_L48390_ _hd4823948362_))
                                     (if (and (gx#identifier? _L48390_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L48388_)))
                                         (___kont5692656927_ _L48388_ _L48390_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4821448270_))))))
                                (___match5696656967_
                                 (lambda (_e4822948412_
                                          _hd4822848416_
                                          _tl4822748419_
                                          _e4823248422_
                                          _hd4823148426_
                                          _tl4823048429_
                                          _e4823548432_
                                          _hd4823448436_
                                          _tl4823348439_)
                                   (let ((_L48442_ _hd4823448436_)
                                         (_L48444_ _hd4822848416_))
                                     (if (and (gx#identifier? _L48444_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L48442_)))
                                         (___kont5692456925_ _L48442_ _L48444_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4821448270_))))))
                                (___match5694456945_
                                 (lambda (_e4822148534_
                                          _hd4822048538_
                                          _tl4821948541_
                                          _e4822448544_
                                          _hd4822348548_
                                          _tl4822248551_)
                                   (let ((_L48554_ _hd4822348548_)
                                         (_L48556_ _hd4822048538_))
                                     (if (gx#identifier? _L48556_)
                                         (___kont5692256923_ _L48554_ _L48556_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4821448270_))))))
                                (_g4821048569_
                                 (lambda ()
                                   (if (gx#stx-pair? ___stx5691756918_)
                                       (let ((_e4822148534_
                                              (gx#syntax-e ___stx5691756918_)))
                                         (let ((_tl4821948541_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4822148534_)))
                                               (_hd4822048538_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4822148534_))))
                                           (if (gx#stx-pair? _tl4821948541_)
                                               (let ((_e4822448544_
                                                      (gx#syntax-e
                                                       _tl4821948541_)))
                                                 (let ((_tl4822248551_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4822448544_)))
                                                       (_hd4822348548_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4822448544_))))
                                                   (if (gx#stx-null?
                                                        _tl4822248551_)
                                                       (___match5694456945_
                                                        _e4822148534_
                                                        _hd4822048538_
                                                        _tl4821948541_
                                                        _e4822448544_
                                                        _hd4822348548_
                                                        _tl4822248551_)
                                                       (if (gx#identifier?
                                                            _hd4822348548_)
                                                           (if (gx#free-identifier=?
                                                                |[1]#_g57922_|
                                                                _hd4822348548_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl4822248551_)
                           (let ((_e4823548432_ (gx#syntax-e _tl4822248551_)))
                             (let ((_tl4823348439_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4823548432_)))
                                   (_hd4823448436_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4823548432_))))
                               (___match5696656967_
                                _e4822148534_
                                _hd4822048538_
                                _tl4821948541_
                                _e4822448544_
                                _hd4822348548_
                                _tl4822248551_
                                _e4823548432_
                                _hd4823448436_
                                _tl4823348439_)))
                           (let () (declare (not safe)) (_g4821448270_)))
                       (if (gx#free-identifier=? |[1]#_g57923_| _hd4822348548_)
                           (if (gx#stx-pair? _tl4822248551_)
                               (let ((_e4824648378_
                                      (gx#syntax-e _tl4822248551_)))
                                 (let ((_tl4824448385_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4824648378_)))
                                       (_hd4824548382_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4824648378_))))
                                   (___match5698856989_
                                    _e4822148534_
                                    _hd4822048538_
                                    _tl4821948541_
                                    _e4822448544_
                                    _hd4822348548_
                                    _tl4822248551_
                                    _e4824648378_
                                    _hd4824548382_
                                    _tl4824448385_)))
                               (let () (declare (not safe)) (_g4821448270_)))
                           (if (gx#free-identifier=?
                                |[1]#_g57924_|
                                _hd4822348548_)
                               (if (gx#stx-pair? _tl4822248551_)
                                   (let ((_e4825848297_
                                          (gx#syntax-e _tl4822248551_)))
                                     (let ((_tl4825648304_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4825848297_)))
                                           (_hd4825748301_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4825848297_))))
                                       (if (gx#stx-pair? _tl4825648304_)
                                           (let ((_e4826148307_
                                                  (gx#syntax-e
                                                   _tl4825648304_)))
                                             (let ((_tl4825948314_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4826148307_)))
                                                   (_hd4826048311_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4826148307_))))
                                               (if (gx#identifier?
                                                    _hd4826048311_)
                                                   (if (gx#free-identifier=?
                                                        |[1]#_g57925_|
                                                        _hd4826048311_)
                                                       (if (gx#stx-pair?
                                                            _tl4825948314_)
                                                           (let ((_e4826448317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl4825948314_)))
                     (let ((_tl4826248324_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4826448317_)))
                           (_hd4826348321_
                            (let ()
                              (declare (not safe))
                              (##car _e4826448317_))))
                       (___match5702657027_
                        _e4822148534_
                        _hd4822048538_
                        _tl4821948541_
                        _e4822448544_
                        _hd4822348548_
                        _tl4822248551_
                        _e4825848297_
                        _hd4825748301_
                        _tl4825648304_
                        _e4826148307_
                        _hd4826048311_
                        _tl4825948314_
                        _e4826448317_
                        _hd4826348321_
                        _tl4826248324_)))
                   (let () (declare (not safe)) (_g4821448270_)))
               (let () (declare (not safe)) (_g4821448270_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4821448270_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4821448270_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4821448270_)))
                               (let () (declare (not safe)) (_g4821448270_)))))
                   (let () (declare (not safe)) (_g4821448270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4821448270_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4821448270_)))))
                                (_L48576_ ___stx5691756918_))
                           (if (gx#identifier? _L48576_)
                               (___kont5692056921_ _L48576_)
                               (let ()
                                 (declare (not safe))
                                 (_g4821048569_))))))))
                  (___kont5703457035_ (lambda (_L48167_) '()))
                  (___kont5703657037_ (lambda () '())))
              (let* ((_g4813548160_
                      (lambda ()
                        (if (gx#stx-null? ___stx5702957030_)
                            (___kont5703657037_)
                            (let () (declare (not safe)) (_g4813648149_)))))
                     (_g4813448180_
                      (lambda ()
                        (let ((_L48167_ ___stx5702957030_))
                          (if (gx#identifier? _L48167_)
                              (___kont5703457035_ _L48167_)
                              (let ()
                                (declare (not safe))
                                (_g4813548160_)))))))
                (if (gx#stx-pair? ___stx5702957030_)
                    (let ((_e4814248187_ (gx#syntax-e ___stx5702957030_)))
                      (let ((_tl4814048194_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4814248187_)))
                            (_hd4814148191_
                             (let ()
                               (declare (not safe))
                               (##car _e4814248187_))))
                        (___kont5703257033_ _tl4814048194_ _hd4814148191_)))
                    (let () (declare (not safe)) (_g4813448180_)))))))))
    (define |[1]#procedure-invocation|
      (lambda (_ctx47720_ _invoke47722_ _args47723_)
        (let _loop47725_ ((_rest47728_ _args47723_)
                          (_invocation-args47730_ '()))
          (let* ((___stx5716157162_ _rest47728_)
                 (_g4773447747_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx5716157162_))))
            (let ((___kont5716457165_
                   (lambda (_L47796_ _L47798_)
                     (let* ((___stx5704957050_ _L47798_)
                            (_g4781347869_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                ___stx5704957050_))))
                       (let ((___kont5705257053_
                              (lambda (_L48107_)
                                (let ((__tmp57926
                                       (cons _L48107_ _invocation-args47730_)))
                                  (declare (not safe))
                                  (_loop47725_ _L47796_ __tmp57926))))
                             (___kont5705457055_
                              (lambda (_L48085_ _L48087_)
                                (let ((__tmp57927
                                       (cons _L48087_ _invocation-args47730_)))
                                  (declare (not safe))
                                  (_loop47725_ _L47796_ __tmp57927))))
                             (___kont5705657057_
                              (lambda (_L48041_ _L48043_)
                                (let ((__tmp57928
                                       (cons _L48043_ _invocation-args47730_)))
                                  (declare (not safe))
                                  (_loop47725_ _L47796_ __tmp57928))))
                             (___kont5705857059_
                              (lambda (_L47987_ _L47989_)
                                (let ((__tmp57929
                                       (cons _L47989_ _invocation-args47730_)))
                                  (declare (not safe))
                                  (_loop47725_ _L47796_ __tmp57929))))
                             (___kont5706057061_
                              (lambda (_L47926_ _L47928_ _L47929_)
                                (let ((__tmp57930
                                       (cons _L47929_ _invocation-args47730_)))
                                  (declare (not safe))
                                  (_loop47725_ _L47796_ __tmp57930)))))
                         (let* ((___match5715857159_
                                 (lambda (_e4785147876_
                                          _hd4785047880_
                                          _tl4784947883_
                                          _e4785447886_
                                          _hd4785347890_
                                          _tl4785247893_
                                          _e4785747896_
                                          _hd4785647900_
                                          _tl4785547903_
                                          _e4786047906_
                                          _hd4785947910_
                                          _tl4785847913_
                                          _e4786347916_
                                          _hd4786247920_
                                          _tl4786147923_)
                                   (let ((_L47926_ _hd4786247920_)
                                         (_L47928_ _hd4785647900_)
                                         (_L47929_ _hd4785047880_))
                                     (if (and (gx#identifier? _L47929_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L47926_)))
                                         (___kont5706057061_
                                          _L47926_
                                          _L47928_
                                          _L47929_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4781347869_))))))
                                (___match5712057121_
                                 (lambda (_e4783947957_
                                          _hd4783847961_
                                          _tl4783747964_
                                          _e4784247967_
                                          _hd4784147971_
                                          _tl4784047974_
                                          _e4784547977_
                                          _hd4784447981_
                                          _tl4784347984_)
                                   (let ((_L47987_ _hd4784447981_)
                                         (_L47989_ _hd4783847961_))
                                     (if (and (gx#identifier? _L47989_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L47987_)))
                                         (___kont5705857059_ _L47987_ _L47989_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4781347869_))))))
                                (___match5709857099_
                                 (lambda (_e4782848011_
                                          _hd4782748015_
                                          _tl4782648018_
                                          _e4783148021_
                                          _hd4783048025_
                                          _tl4782948028_
                                          _e4783448031_
                                          _hd4783348035_
                                          _tl4783248038_)
                                   (let ((_L48041_ _hd4783348035_)
                                         (_L48043_ _hd4782748015_))
                                     (if (and (gx#identifier? _L48043_)
                                              (let ()
                                                (declare (not safe))
                                                (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                 _L48041_)))
                                         (___kont5705657057_ _L48041_ _L48043_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4781347869_))))))
                                (___match5707657077_
                                 (lambda (_e4782048065_
                                          _hd4781948069_
                                          _tl4781848072_
                                          _e4782348075_
                                          _hd4782248079_
                                          _tl4782148082_)
                                   (let ((_L48085_ _hd4782248079_)
                                         (_L48087_ _hd4781948069_))
                                     (if (gx#identifier? _L48087_)
                                         (___kont5705457055_ _L48085_ _L48087_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4781347869_))))))
                                (_g4780948100_
                                 (lambda ()
                                   (if (gx#stx-pair? ___stx5704957050_)
                                       (let ((_e4782048065_
                                              (gx#syntax-e ___stx5704957050_)))
                                         (let ((_tl4781848072_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4782048065_)))
                                               (_hd4781948069_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4782048065_))))
                                           (if (gx#stx-pair? _tl4781848072_)
                                               (let ((_e4782348075_
                                                      (gx#syntax-e
                                                       _tl4781848072_)))
                                                 (let ((_tl4782148082_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4782348075_)))
                                                       (_hd4782248079_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4782348075_))))
                                                   (if (gx#stx-null?
                                                        _tl4782148082_)
                                                       (___match5707657077_
                                                        _e4782048065_
                                                        _hd4781948069_
                                                        _tl4781848072_
                                                        _e4782348075_
                                                        _hd4782248079_
                                                        _tl4782148082_)
                                                       (if (gx#identifier?
                                                            _hd4782248079_)
                                                           (if (gx#free-identifier=?
                                                                |[1]#_g57931_|
                                                                _hd4782248079_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl4782148082_)
                           (let ((_e4783448031_ (gx#syntax-e _tl4782148082_)))
                             (let ((_tl4783248038_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4783448031_)))
                                   (_hd4783348035_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4783448031_))))
                               (___match5709857099_
                                _e4782048065_
                                _hd4781948069_
                                _tl4781848072_
                                _e4782348075_
                                _hd4782248079_
                                _tl4782148082_
                                _e4783448031_
                                _hd4783348035_
                                _tl4783248038_)))
                           (let () (declare (not safe)) (_g4781347869_)))
                       (if (gx#free-identifier=? |[1]#_g57932_| _hd4782248079_)
                           (if (gx#stx-pair? _tl4782148082_)
                               (let ((_e4784547977_
                                      (gx#syntax-e _tl4782148082_)))
                                 (let ((_tl4784347984_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4784547977_)))
                                       (_hd4784447981_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4784547977_))))
                                   (___match5712057121_
                                    _e4782048065_
                                    _hd4781948069_
                                    _tl4781848072_
                                    _e4782348075_
                                    _hd4782248079_
                                    _tl4782148082_
                                    _e4784547977_
                                    _hd4784447981_
                                    _tl4784347984_)))
                               (let () (declare (not safe)) (_g4781347869_)))
                           (if (gx#free-identifier=?
                                |[1]#_g57933_|
                                _hd4782248079_)
                               (if (gx#stx-pair? _tl4782148082_)
                                   (let ((_e4785747896_
                                          (gx#syntax-e _tl4782148082_)))
                                     (let ((_tl4785547903_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4785747896_)))
                                           (_hd4785647900_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4785747896_))))
                                       (if (gx#stx-pair? _tl4785547903_)
                                           (let ((_e4786047906_
                                                  (gx#syntax-e
                                                   _tl4785547903_)))
                                             (let ((_tl4785847913_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4786047906_)))
                                                   (_hd4785947910_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4786047906_))))
                                               (if (gx#identifier?
                                                    _hd4785947910_)
                                                   (if (gx#free-identifier=?
                                                        |[1]#_g57934_|
                                                        _hd4785947910_)
                                                       (if (gx#stx-pair?
                                                            _tl4785847913_)
                                                           (let ((_e4786347916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl4785847913_)))
                     (let ((_tl4786147923_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4786347916_)))
                           (_hd4786247920_
                            (let ()
                              (declare (not safe))
                              (##car _e4786347916_))))
                       (___match5715857159_
                        _e4782048065_
                        _hd4781948069_
                        _tl4781848072_
                        _e4782348075_
                        _hd4782248079_
                        _tl4782148082_
                        _e4785747896_
                        _hd4785647900_
                        _tl4785547903_
                        _e4786047906_
                        _hd4785947910_
                        _tl4785847913_
                        _e4786347916_
                        _hd4786247920_
                        _tl4786147923_)))
                   (let () (declare (not safe)) (_g4781347869_)))
               (let () (declare (not safe)) (_g4781347869_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4781347869_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4781347869_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4781347869_)))
                               (let () (declare (not safe)) (_g4781347869_)))))
                   (let () (declare (not safe)) (_g4781347869_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4781347869_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4781347869_)))))
                                (_L48107_ ___stx5704957050_))
                           (if (gx#identifier? _L48107_)
                               (___kont5705257053_ _L48107_)
                               (let ()
                                 (declare (not safe))
                                 (_g4780948100_))))))))
                  (___kont5716657167_
                   (lambda (_L47765_)
                     (let ((__tmp57935
                            (let ((__tmp57936
                                   (reverse!
                                    (cons _L47765_ _invocation-args47730_))))
                              (declare (not safe))
                              (cons _invoke47722_ __tmp57936))))
                       (declare (not safe))
                       (cons 'apply __tmp57935))))
                  (___kont5716857169_
                   (lambda ()
                     (cons _invoke47722_ (reverse! _invocation-args47730_)))))
              (let* ((_g4773347758_
                      (lambda ()
                        (if (gx#stx-null? ___stx5716157162_)
                            (___kont5716857169_)
                            (let () (declare (not safe)) (_g4773447747_)))))
                     (_g4773247779_
                      (lambda ()
                        (let ((_L47765_ ___stx5716157162_))
                          (if (gx#identifier? _L47765_)
                              (___kont5716657167_ _L47765_)
                              (let ()
                                (declare (not safe))
                                (_g4773347758_)))))))
                (if (gx#stx-pair? ___stx5716157162_)
                    (let ((_e4774047786_ (gx#syntax-e ___stx5716157162_)))
                      (let ((_tl4773847793_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4774047786_)))
                            (_hd4773947790_
                             (let ()
                               (declare (not safe))
                               (##car _e4774047786_))))
                        (___kont5716457165_ _tl4773847793_ _hd4773947790_)))
                    (let () (declare (not safe)) (_g4773247779_)))))))))
    (define |[:0:]#defapi|
      (lambda (_stx49795_)
        (let* ((___stx5718157182_ _stx49795_)
               (_g4980049892_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5718157182_))))
          (let ((___kont5718457185_
                 (lambda (_L50226_ _L50228_ _L50229_ _L50230_ _L50231_)
                   (let ((_unchecked50270_
                          (gx#stx-identifier _L50231_ '"__" _L50231_))
                         (_effect50272_
                          (let ((_effect5026150263_ (gx#stx-e _L50228_)))
                            (if _effect5026150263_
                                (let ((_effect50267_ _effect5026150263_))
                                  (map gx#stx-e _effect50267_))
                                '#f))))
                     (let* ((_g5027450318_
                             (lambda (_g5027550314_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g5027550314_)))
                            (_g5027350484_
                             (lambda (_g5027550322_)
                               (if (gx#stx-pair? _g5027550322_)
                                   (let ((_e5028550325_
                                          (gx#syntax-e _g5027550322_)))
                                     (let ((_hd5028450329_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e5028550325_)))
                                           (_tl5028350332_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e5028550325_))))
                                       (if (gx#stx-pair? _tl5028350332_)
                                           (let ((_e5028850335_
                                                  (gx#syntax-e
                                                   _tl5028350332_)))
                                             (let ((_hd5028750339_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e5028850335_)))
                                                   (_tl5028650342_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e5028850335_))))
                                               (if (gx#stx-pair/null?
                                                    _hd5028750339_)
                                                   (let ((_g57937_
                                                          (gx#syntax-split-splice
                                                           _hd5028750339_
                                                           '0)))
                                                     (begin
                                                       (let ((_g57938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (if (##values? _g57937_)
                            (##vector-length _g57937_)
                            1))))
                 (if (not (let () (declare (not safe)) (##fx= _g57938_ 2)))
                     (error "Context expects 2 values" _g57938_)))
               (let ((_target5028950345_
                      (let () (declare (not safe)) (##vector-ref _g57937_ 0)))
                     (_tl5029150348_
                      (let () (declare (not safe)) (##vector-ref _g57937_ 1))))
                 (if (gx#stx-null? _tl5029150348_)
                     (letrec ((_loop5029250351_
                               (lambda (_hd5029050355_
                                        _contract-check5029650358_)
                                 (if (gx#stx-pair? _hd5029050355_)
                                     (let ((_e5029350361_
                                            (gx#syntax-e _hd5029050355_)))
                                       (let ((_lp-hd5029450365_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5029350361_)))
                                             (_lp-tl5029550368_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5029350361_))))
                                         (_loop5029250351_
                                          _lp-tl5029550368_
                                          (cons _lp-hd5029450365_
                                                _contract-check5029650358_))))
                                     (let ((_contract-check5029750371_
                                            (reverse _contract-check5029650358_)))
                                       (if (gx#stx-pair? _tl5028650342_)
                                           (let ((_e5030050375_
                                                  (gx#syntax-e
                                                   _tl5028650342_)))
                                             (let ((_hd5029950379_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e5030050375_)))
                                                   (_tl5029850382_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e5030050375_))))
                                               (if (gx#stx-pair?
                                                    _tl5029850382_)
                                                   (let ((_e5030350385_
                                                          (gx#syntax-e
                                                           _tl5029850382_)))
                                                     (let ((_hd5030250389_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e5030350385_)))
                                                           (_tl5030150392_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e5030350385_))))
                                                       (if (gx#stx-pair?
                                                            _tl5030150392_)
                                                           (let ((_e5030650395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl5030150392_)))
                     (let ((_hd5030550399_
                            (let ()
                              (declare (not safe))
                              (##car _e5030650395_)))
                           (_tl5030450402_
                            (let ()
                              (declare (not safe))
                              (##cdr _e5030650395_))))
                       (if (gx#stx-pair? _tl5030450402_)
                           (let ((_e5030950405_ (gx#syntax-e _tl5030450402_)))
                             (let ((_hd5030850409_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e5030950405_)))
                                   (_tl5030750412_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e5030950405_))))
                               (if (gx#stx-pair? _tl5030750412_)
                                   (let ((_e5031250415_
                                          (gx#syntax-e _tl5030750412_)))
                                     (let ((_hd5031150419_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e5031250415_)))
                                           (_tl5031050422_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e5031250415_))))
                                       (if (gx#stx-null? _tl5031050422_)
                                           ((lambda (_L50425_
                                                     _L50427_
                                                     _L50428_
                                                     _L50429_
                                                     _L50430_
                                                     _L50431_
                                                     _L50432_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'def)
                          (cons (cons _L50231_ _L50432_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@type.signature)
                                                        _L50430_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (let ((__tmp57940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g5046950472_ _g5047050475_)
                               (cons _g5046950472_ _g5047050475_)))
                            (__tmp57939 (cons _L50427_ '())))
                        (declare (not safe))
                        (__foldr1 __tmp57940 __tmp57939 _L50431_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _L50425_ _L50432_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@type.signature)
                                                              _L50429_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'with-type)
                            (cons _L50428_
                                  (let ((__tmp57941
                                         (lambda (_g5046750478_ _g5046850481_)
                                           (cons _g5046750478_
                                                 _g5046850481_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp57941 '() _L50226_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd5031150419_
                                            _hd5030850409_
                                            _hd5030550399_
                                            _hd5030250389_
                                            _hd5029950379_
                                            _contract-check5029750371_
                                            _hd5028450329_)
                                           (_g5027450318_ _g5027550322_))))
                                   (_g5027450318_ _g5027550322_))))
                           (_g5027450318_ _g5027550322_))))
                   (_g5027450318_ _g5027550322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5027450318_
                                                    _g5027550322_))))
                                           (_g5027450318_ _g5027550322_)))))))
                       (_loop5029250351_ _target5028950345_ '()))
                     (_g5027450318_ _g5027550322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5027450318_
                                                    _g5027550322_))))
                                           (_g5027450318_ _g5027550322_))))
                                   (_g5027450318_ _g5027550322_)))))
                       (_g5027350484_
                        (list (let ()
                                (declare (not safe))
                                (|[1]#procedure-formals| _stx49795_ _L50230_))
                              (let ()
                                (declare (not safe))
                                (|[1]#procedure-contract| _stx49795_ _L50230_))
                              (let ((__tmp57942
                                     (let ((__tmp57944
                                            (gx#core-quote-syntax
                                             _unchecked50270_))
                                           (__tmp57943
                                            (let ()
                                              (declare (not safe))
                                              (|[1]#procedure-signature|
                                               _stx49795_
                                               _L50230_
                                               _L50229_
                                               _effect50272_))))
                                       (declare (not safe))
                                       (cons __tmp57944 __tmp57943))))
                                (declare (not safe))
                                (cons 'unchecked: __tmp57942))
                              (cons 'return:
                                    (cons (let ((__obj57789
                                                 (gx#syntax-local-value
                                                  _L50229_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj57789
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj57789
                                                   '10
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj57789
                                                 'type-descriptor)))
                                          (cons 'effect:
                                                (cons _effect50272_ '()))))
                              (let ()
                                (declare (not safe))
                                (|[1]#procedure-typedecl| _stx49795_ _L50230_))
                              (let ()
                                (declare (not safe))
                                (|[1]#procedure-invocation|
                                 _stx49795_
                                 _unchecked50270_
                                 _L50230_))
                              _unchecked50270_))))))
                (___kont5718857189_
                 (lambda (_L50078_ _L50080_ _L50081_ _L50082_)
                   (cons (gx#datum->syntax '#f 'defapi)
                         (cons (cons _L50082_ _L50081_)
                               (cons (gx#datum->syntax '#f ':-)
                                     (cons _L50080_
                                           (cons 'effect:
                                                 (cons '#f
                                                       (let ((__tmp57945
                                                              (lambda (_g5010650109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g5010750112_)
                        (cons _g5010650109_ _g5010750112_))))
                 (declare (not safe))
                 (__foldr1 __tmp57945 '() _L50078_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (___kont5719257193_
                 (lambda (_L49959_ _L49961_ _L49962_)
                   (cons (gx#datum->syntax '#f 'defapi)
                         (cons (cons _L49962_ _L49961_)
                               (cons (gx#datum->syntax '#f ':-)
                                     (cons (gx#datum->syntax '#f ':t)
                                           (cons 'effect:
                                                 (cons '#f
                                                       (let ((__tmp57946
                                                              (lambda (_g4998249985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4998349988_)
                        (cons _g4998249985_ _g4998349988_))))
                 (declare (not safe))
                 (__foldr1 __tmp57946 '() _L49959_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (let* ((___match5732457325_
                    (lambda (_e4987149899_
                             _hd4987049903_
                             _tl4986949906_
                             _e4987449909_
                             _hd4987349913_
                             _tl4987249916_
                             _e4987749919_
                             _hd4987649923_
                             _tl4987549926_
                             ___splice5719457195_
                             _target4987849929_
                             _tl4988049932_)
                      (letrec ((_loop4988149935_
                                (lambda (_hd4987949939_ _body4988549942_)
                                  (if (gx#stx-pair? _hd4987949939_)
                                      (let ((_e4988249945_
                                             (gx#syntax-e _hd4987949939_)))
                                        (let ((_lp-tl4988449952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4988249945_)))
                                              (_lp-hd4988349949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4988249945_))))
                                          (_loop4988149935_
                                           _lp-tl4988449952_
                                           (cons _lp-hd4988349949_
                                                 _body4988549942_))))
                                      (let ((_body4988649955_
                                             (reverse _body4988549942_)))
                                        (___kont5719257193_
                                         _body4988649955_
                                         _tl4987549926_
                                         _hd4987649923_))))))
                        (_loop4988149935_ _target4987849929_ '()))))
                   (___match5729857299_
                    (lambda (_e4984449998_
                             _hd4984350002_
                             _tl4984250005_
                             _e4984750008_
                             _hd4984650012_
                             _tl4984550015_
                             _e4985050018_
                             _hd4984950022_
                             _tl4984850025_
                             _e4985350028_
                             _hd4985250032_
                             _tl4985150035_
                             _e4985650038_
                             _hd4985550042_
                             _tl4985450045_
                             ___splice5719057191_
                             _target4985750048_
                             _tl4985950051_)
                      (letrec ((_loop4986050054_
                                (lambda (_hd4985850058_ _body4986450061_)
                                  (if (gx#stx-pair? _hd4985850058_)
                                      (let ((_e4986150064_
                                             (gx#syntax-e _hd4985850058_)))
                                        (let ((_lp-tl4986350071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4986150064_)))
                                              (_lp-hd4986250068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4986150064_))))
                                          (_loop4986050054_
                                           _lp-tl4986350071_
                                           (cons _lp-hd4986250068_
                                                 _body4986450061_))))
                                      (let ((_body4986550074_
                                             (reverse _body4986450061_)))
                                        (___kont5718857189_
                                         _body4986550074_
                                         _hd4985550042_
                                         _tl4984850025_
                                         _hd4984950022_))))))
                        (_loop4986050054_ _target4985750048_ '()))))
                   (___match5725657257_
                    (lambda (_e4980950122_
                             _hd4980850126_
                             _tl4980750129_
                             _e4981250132_
                             _hd4981150136_
                             _tl4981050139_
                             _e4981550142_
                             _hd4981450146_
                             _tl4981350149_
                             _e4981850152_
                             _hd4981750156_
                             _tl4981650159_
                             _e4982150162_
                             _hd4982050166_
                             _tl4981950169_
                             _e4982450172_
                             _hd4982350176_
                             _tl4982250179_
                             _e4982550182_
                             _e4982850186_
                             _hd4982750190_
                             _tl4982650193_
                             ___splice5718657187_
                             _target4982950196_
                             _tl4983150199_)
                      (letrec ((_loop4983250202_
                                (lambda (_hd4983050206_ _body4983650209_)
                                  (if (gx#stx-pair? _hd4983050206_)
                                      (let ((_e4983350212_
                                             (gx#syntax-e _hd4983050206_)))
                                        (let ((_lp-tl4983550219_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4983350212_)))
                                              (_lp-hd4983450216_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4983350212_))))
                                          (_loop4983250202_
                                           _lp-tl4983550219_
                                           (cons _lp-hd4983450216_
                                                 _body4983650209_))))
                                      (let ((_body4983750222_
                                             (reverse _body4983650209_)))
                                        (___kont5718457185_
                                         _body4983750222_
                                         _hd4982750190_
                                         _hd4982050166_
                                         _tl4981350149_
                                         _hd4981450146_))))))
                        (_loop4983250202_ _target4982950196_ '())))))
              (if (gx#stx-pair? ___stx5718157182_)
                  (let ((_e4980950122_ (gx#syntax-e ___stx5718157182_)))
                    (let ((_tl4980750129_
                           (let () (declare (not safe)) (##cdr _e4980950122_)))
                          (_hd4980850126_
                           (let ()
                             (declare (not safe))
                             (##car _e4980950122_))))
                      (if (gx#stx-pair? _tl4980750129_)
                          (let ((_e4981250132_ (gx#syntax-e _tl4980750129_)))
                            (let ((_tl4981050139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4981250132_)))
                                  (_hd4981150136_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4981250132_))))
                              (if (gx#stx-pair? _hd4981150136_)
                                  (let ((_e4981550142_
                                         (gx#syntax-e _hd4981150136_)))
                                    (let ((_tl4981350149_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4981550142_)))
                                          (_hd4981450146_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4981550142_))))
                                      (if (gx#stx-pair? _tl4981050139_)
                                          (let ((_e4981850152_
                                                 (gx#syntax-e _tl4981050139_)))
                                            (let ((_tl4981650159_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4981850152_)))
                                                  (_hd4981750156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4981850152_))))
                                              (if (gx#identifier?
                                                   _hd4981750156_)
                                                  (if (gx#free-identifier=?
                                                       |[1]#_g57947_|
                                                       _hd4981750156_)
                                                      (if (gx#stx-pair?
                                                           _tl4981650159_)
                                                          (let ((_e4982150162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4981650159_)))
                    (let ((_tl4981950169_
                           (let () (declare (not safe)) (##cdr _e4982150162_)))
                          (_hd4982050166_
                           (let ()
                             (declare (not safe))
                             (##car _e4982150162_))))
                      (if (gx#stx-pair? _tl4981950169_)
                          (let ((_e4982450172_ (gx#syntax-e _tl4981950169_)))
                            (let ((_tl4982250179_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4982450172_)))
                                  (_hd4982350176_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4982450172_))))
                              (if (gx#stx-datum? _hd4982350176_)
                                  (let ((_e4982550182_
                                         (gx#stx-e _hd4982350176_)))
                                    (if (equal? _e4982550182_ 'effect:)
                                        (if (gx#stx-pair? _tl4982250179_)
                                            (let ((_e4982850186_
                                                   (gx#syntax-e
                                                    _tl4982250179_)))
                                              (let ((_tl4982650193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4982850186_)))
                                                    (_hd4982750190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4982850186_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4982650193_)
                                                    (let ((___splice5718657187_
                                                           (gx#syntax-split-splice
                                                            _tl4982650193_
                                                            '0)))
                                                      (let ((_tl4983150199_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5718657187_ '1)))
                    (_target4982950196_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5718657187_ '0))))
                (if (gx#stx-null? _tl4983150199_)
                    (___match5725657257_
                     _e4980950122_
                     _hd4980850126_
                     _tl4980750129_
                     _e4981250132_
                     _hd4981150136_
                     _tl4981050139_
                     _e4981550142_
                     _hd4981450146_
                     _tl4981350149_
                     _e4981850152_
                     _hd4981750156_
                     _tl4981650159_
                     _e4982150162_
                     _hd4982050166_
                     _tl4981950169_
                     _e4982450172_
                     _hd4982350176_
                     _tl4982250179_
                     _e4982550182_
                     _e4982850186_
                     _hd4982750190_
                     _tl4982650193_
                     ___splice5718657187_
                     _target4982950196_
                     _tl4983150199_)
                    (if (gx#stx-pair/null? _tl4981950169_)
                        (let ((___splice5719057191_
                               (gx#syntax-split-splice _tl4981950169_ '0)))
                          (let ((_tl4985950051_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5719057191_ '1)))
                                (_target4985750048_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5719057191_ '0))))
                            (if (gx#stx-null? _tl4985950051_)
                                (___match5729857299_
                                 _e4980950122_
                                 _hd4980850126_
                                 _tl4980750129_
                                 _e4981250132_
                                 _hd4981150136_
                                 _tl4981050139_
                                 _e4981550142_
                                 _hd4981450146_
                                 _tl4981350149_
                                 _e4981850152_
                                 _hd4981750156_
                                 _tl4981650159_
                                 _e4982150162_
                                 _hd4982050166_
                                 _tl4981950169_
                                 ___splice5719057191_
                                 _target4985750048_
                                 _tl4985950051_)
                                (if (gx#stx-pair/null? _tl4981050139_)
                                    (let ((___splice5719457195_
                                           (gx#syntax-split-splice
                                            _tl4981050139_
                                            '0)))
                                      (let ((_tl4988049932_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5719457195_
                                                '1)))
                                            (_target4987849929_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5719457195_
                                                '0))))
                                        (if (gx#stx-null? _tl4988049932_)
                                            (___match5732457325_
                                             _e4980950122_
                                             _hd4980850126_
                                             _tl4980750129_
                                             _e4981250132_
                                             _hd4981150136_
                                             _tl4981050139_
                                             _e4981550142_
                                             _hd4981450146_
                                             _tl4981350149_
                                             ___splice5719457195_
                                             _target4987849929_
                                             _tl4988049932_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4980049892_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4980049892_))))))
                        (if (gx#stx-pair/null? _tl4981050139_)
                            (let ((___splice5719457195_
                                   (gx#syntax-split-splice _tl4981050139_ '0)))
                              (let ((_tl4988049932_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5719457195_ '1)))
                                    (_target4987849929_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5719457195_
                                        '0))))
                                (if (gx#stx-null? _tl4988049932_)
                                    (___match5732457325_
                                     _e4980950122_
                                     _hd4980850126_
                                     _tl4980750129_
                                     _e4981250132_
                                     _hd4981150136_
                                     _tl4981050139_
                                     _e4981550142_
                                     _hd4981450146_
                                     _tl4981350149_
                                     ___splice5719457195_
                                     _target4987849929_
                                     _tl4988049932_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4980049892_)))))
                            (let () (declare (not safe)) (_g4980049892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl4981950169_)
                                                        (let ((___splice5719057191_
                                                               (gx#syntax-split-splice
                                                                _tl4981950169_
                                                                '0)))
                                                          (let ((_tl4985950051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5719057191_ '1)))
                        (_target4985750048_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5719057191_ '0))))
                    (if (gx#stx-null? _tl4985950051_)
                        (___match5729857299_
                         _e4980950122_
                         _hd4980850126_
                         _tl4980750129_
                         _e4981250132_
                         _hd4981150136_
                         _tl4981050139_
                         _e4981550142_
                         _hd4981450146_
                         _tl4981350149_
                         _e4981850152_
                         _hd4981750156_
                         _tl4981650159_
                         _e4982150162_
                         _hd4982050166_
                         _tl4981950169_
                         ___splice5719057191_
                         _target4985750048_
                         _tl4985950051_)
                        (if (gx#stx-pair/null? _tl4981050139_)
                            (let ((___splice5719457195_
                                   (gx#syntax-split-splice _tl4981050139_ '0)))
                              (let ((_tl4988049932_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5719457195_ '1)))
                                    (_target4987849929_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5719457195_
                                        '0))))
                                (if (gx#stx-null? _tl4988049932_)
                                    (___match5732457325_
                                     _e4980950122_
                                     _hd4980850126_
                                     _tl4980750129_
                                     _e4981250132_
                                     _hd4981150136_
                                     _tl4981050139_
                                     _e4981550142_
                                     _hd4981450146_
                                     _tl4981350149_
                                     ___splice5719457195_
                                     _target4987849929_
                                     _tl4988049932_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4980049892_)))))
                            (let () (declare (not safe)) (_g4980049892_))))))
                (if (gx#stx-pair/null? _tl4981050139_)
                    (let ((___splice5719457195_
                           (gx#syntax-split-splice _tl4981050139_ '0)))
                      (let ((_tl4988049932_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5719457195_ '1)))
                            (_target4987849929_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5719457195_ '0))))
                        (if (gx#stx-null? _tl4988049932_)
                            (___match5732457325_
                             _e4980950122_
                             _hd4980850126_
                             _tl4980750129_
                             _e4981250132_
                             _hd4981150136_
                             _tl4981050139_
                             _e4981550142_
                             _hd4981450146_
                             _tl4981350149_
                             ___splice5719457195_
                             _target4987849929_
                             _tl4988049932_)
                            (let () (declare (not safe)) (_g4980049892_)))))
                    (let () (declare (not safe)) (_g4980049892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl4981950169_)
                                                (let ((___splice5719057191_
                                                       (gx#syntax-split-splice
                                                        _tl4981950169_
                                                        '0)))
                                                  (let ((_tl4985950051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5719057191_
                                                            '1)))
                                                        (_target4985750048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5719057191_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl4985950051_)
                                                        (___match5729857299_
                                                         _e4980950122_
                                                         _hd4980850126_
                                                         _tl4980750129_
                                                         _e4981250132_
                                                         _hd4981150136_
                                                         _tl4981050139_
                                                         _e4981550142_
                                                         _hd4981450146_
                                                         _tl4981350149_
                                                         _e4981850152_
                                                         _hd4981750156_
                                                         _tl4981650159_
                                                         _e4982150162_
                                                         _hd4982050166_
                                                         _tl4981950169_
                                                         ___splice5719057191_
                                                         _target4985750048_
                                                         _tl4985950051_)
                                                        (if (gx#stx-pair/null?
                                                             _tl4981050139_)
                                                            (let ((___splice5719457195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl4981050139_ '0)))
                      (let ((_tl4988049932_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5719457195_ '1)))
                            (_target4987849929_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5719457195_ '0))))
                        (if (gx#stx-null? _tl4988049932_)
                            (___match5732457325_
                             _e4980950122_
                             _hd4980850126_
                             _tl4980750129_
                             _e4981250132_
                             _hd4981150136_
                             _tl4981050139_
                             _e4981550142_
                             _hd4981450146_
                             _tl4981350149_
                             ___splice5719457195_
                             _target4987849929_
                             _tl4988049932_)
                            (let () (declare (not safe)) (_g4980049892_)))))
                    (let () (declare (not safe)) (_g4980049892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl4981050139_)
                                                    (let ((___splice5719457195_
                                                           (gx#syntax-split-splice
                                                            _tl4981050139_
                                                            '0)))
                                                      (let ((_tl4988049932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5719457195_ '1)))
                    (_target4987849929_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5719457195_ '0))))
                (if (gx#stx-null? _tl4988049932_)
                    (___match5732457325_
                     _e4980950122_
                     _hd4980850126_
                     _tl4980750129_
                     _e4981250132_
                     _hd4981150136_
                     _tl4981050139_
                     _e4981550142_
                     _hd4981450146_
                     _tl4981350149_
                     ___splice5719457195_
                     _target4987849929_
                     _tl4988049932_)
                    (let () (declare (not safe)) (_g4980049892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4980049892_)))))
                                        (if (gx#stx-pair/null? _tl4981950169_)
                                            (let ((___splice5719057191_
                                                   (gx#syntax-split-splice
                                                    _tl4981950169_
                                                    '0)))
                                              (let ((_tl4985950051_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5719057191_
                                                        '1)))
                                                    (_target4985750048_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5719057191_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4985950051_)
                                                    (___match5729857299_
                                                     _e4980950122_
                                                     _hd4980850126_
                                                     _tl4980750129_
                                                     _e4981250132_
                                                     _hd4981150136_
                                                     _tl4981050139_
                                                     _e4981550142_
                                                     _hd4981450146_
                                                     _tl4981350149_
                                                     _e4981850152_
                                                     _hd4981750156_
                                                     _tl4981650159_
                                                     _e4982150162_
                                                     _hd4982050166_
                                                     _tl4981950169_
                                                     ___splice5719057191_
                                                     _target4985750048_
                                                     _tl4985950051_)
                                                    (if (gx#stx-pair/null?
                                                         _tl4981050139_)
                                                        (let ((___splice5719457195_
                                                               (gx#syntax-split-splice
                                                                _tl4981050139_
                                                                '0)))
                                                          (let ((_tl4988049932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5719457195_ '1)))
                        (_target4987849929_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5719457195_ '0))))
                    (if (gx#stx-null? _tl4988049932_)
                        (___match5732457325_
                         _e4980950122_
                         _hd4980850126_
                         _tl4980750129_
                         _e4981250132_
                         _hd4981150136_
                         _tl4981050139_
                         _e4981550142_
                         _hd4981450146_
                         _tl4981350149_
                         ___splice5719457195_
                         _target4987849929_
                         _tl4988049932_)
                        (let () (declare (not safe)) (_g4980049892_)))))
                (let () (declare (not safe)) (_g4980049892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl4981050139_)
                                                (let ((___splice5719457195_
                                                       (gx#syntax-split-splice
                                                        _tl4981050139_
                                                        '0)))
                                                  (let ((_tl4988049932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5719457195_
                                                            '1)))
                                                        (_target4987849929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5719457195_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl4988049932_)
                                                        (___match5732457325_
                                                         _e4980950122_
                                                         _hd4980850126_
                                                         _tl4980750129_
                                                         _e4981250132_
                                                         _hd4981150136_
                                                         _tl4981050139_
                                                         _e4981550142_
                                                         _hd4981450146_
                                                         _tl4981350149_
                                                         ___splice5719457195_
                                                         _target4987849929_
                                                         _tl4988049932_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g4980049892_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4980049892_))))))
                                  (if (gx#stx-pair/null? _tl4981950169_)
                                      (let ((___splice5719057191_
                                             (gx#syntax-split-splice
                                              _tl4981950169_
                                              '0)))
                                        (let ((_tl4985950051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5719057191_
                                                  '1)))
                                              (_target4985750048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5719057191_
                                                  '0))))
                                          (if (gx#stx-null? _tl4985950051_)
                                              (___match5729857299_
                                               _e4980950122_
                                               _hd4980850126_
                                               _tl4980750129_
                                               _e4981250132_
                                               _hd4981150136_
                                               _tl4981050139_
                                               _e4981550142_
                                               _hd4981450146_
                                               _tl4981350149_
                                               _e4981850152_
                                               _hd4981750156_
                                               _tl4981650159_
                                               _e4982150162_
                                               _hd4982050166_
                                               _tl4981950169_
                                               ___splice5719057191_
                                               _target4985750048_
                                               _tl4985950051_)
                                              (if (gx#stx-pair/null?
                                                   _tl4981050139_)
                                                  (let ((___splice5719457195_
                                                         (gx#syntax-split-splice
                                                          _tl4981050139_
                                                          '0)))
                                                    (let ((_tl4988049932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5719457195_
                                                              '1)))
                                                          (_target4987849929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5719457195_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4988049932_)
                                                          (___match5732457325_
                                                           _e4980950122_
                                                           _hd4980850126_
                                                           _tl4980750129_
                                                           _e4981250132_
                                                           _hd4981150136_
                                                           _tl4981050139_
                                                           _e4981550142_
                                                           _hd4981450146_
                                                           _tl4981350149_
                                                           ___splice5719457195_
                                                           _target4987849929_
                                                           _tl4988049932_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4980049892_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4980049892_))))))
                                      (if (gx#stx-pair/null? _tl4981050139_)
                                          (let ((___splice5719457195_
                                                 (gx#syntax-split-splice
                                                  _tl4981050139_
                                                  '0)))
                                            (let ((_tl4988049932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice5719457195_
                                                      '1)))
                                                  (_target4987849929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice5719457195_
                                                      '0))))
                                              (if (gx#stx-null? _tl4988049932_)
                                                  (___match5732457325_
                                                   _e4980950122_
                                                   _hd4980850126_
                                                   _tl4980750129_
                                                   _e4981250132_
                                                   _hd4981150136_
                                                   _tl4981050139_
                                                   _e4981550142_
                                                   _hd4981450146_
                                                   _tl4981350149_
                                                   ___splice5719457195_
                                                   _target4987849929_
                                                   _tl4988049932_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4980049892_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4980049892_)))))))
                          (if (gx#stx-pair/null? _tl4981950169_)
                              (let ((___splice5719057191_
                                     (gx#syntax-split-splice
                                      _tl4981950169_
                                      '0)))
                                (let ((_tl4985950051_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5719057191_
                                          '1)))
                                      (_target4985750048_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5719057191_
                                          '0))))
                                  (if (gx#stx-null? _tl4985950051_)
                                      (___match5729857299_
                                       _e4980950122_
                                       _hd4980850126_
                                       _tl4980750129_
                                       _e4981250132_
                                       _hd4981150136_
                                       _tl4981050139_
                                       _e4981550142_
                                       _hd4981450146_
                                       _tl4981350149_
                                       _e4981850152_
                                       _hd4981750156_
                                       _tl4981650159_
                                       _e4982150162_
                                       _hd4982050166_
                                       _tl4981950169_
                                       ___splice5719057191_
                                       _target4985750048_
                                       _tl4985950051_)
                                      (if (gx#stx-pair/null? _tl4981050139_)
                                          (let ((___splice5719457195_
                                                 (gx#syntax-split-splice
                                                  _tl4981050139_
                                                  '0)))
                                            (let ((_tl4988049932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice5719457195_
                                                      '1)))
                                                  (_target4987849929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice5719457195_
                                                      '0))))
                                              (if (gx#stx-null? _tl4988049932_)
                                                  (___match5732457325_
                                                   _e4980950122_
                                                   _hd4980850126_
                                                   _tl4980750129_
                                                   _e4981250132_
                                                   _hd4981150136_
                                                   _tl4981050139_
                                                   _e4981550142_
                                                   _hd4981450146_
                                                   _tl4981350149_
                                                   ___splice5719457195_
                                                   _target4987849929_
                                                   _tl4988049932_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4980049892_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4980049892_))))))
                              (if (gx#stx-pair/null? _tl4981050139_)
                                  (let ((___splice5719457195_
                                         (gx#syntax-split-splice
                                          _tl4981050139_
                                          '0)))
                                    (let ((_tl4988049932_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice5719457195_
                                              '1)))
                                          (_target4987849929_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice5719457195_
                                              '0))))
                                      (if (gx#stx-null? _tl4988049932_)
                                          (___match5732457325_
                                           _e4980950122_
                                           _hd4980850126_
                                           _tl4980750129_
                                           _e4981250132_
                                           _hd4981150136_
                                           _tl4981050139_
                                           _e4981550142_
                                           _hd4981450146_
                                           _tl4981350149_
                                           ___splice5719457195_
                                           _target4987849929_
                                           _tl4988049932_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4980049892_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4980049892_)))))))
                  (if (gx#stx-pair/null? _tl4981050139_)
                      (let ((___splice5719457195_
                             (gx#syntax-split-splice _tl4981050139_ '0)))
                        (let ((_tl4988049932_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5719457195_ '1)))
                              (_target4987849929_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5719457195_ '0))))
                          (if (gx#stx-null? _tl4988049932_)
                              (___match5732457325_
                               _e4980950122_
                               _hd4980850126_
                               _tl4980750129_
                               _e4981250132_
                               _hd4981150136_
                               _tl4981050139_
                               _e4981550142_
                               _hd4981450146_
                               _tl4981350149_
                               ___splice5719457195_
                               _target4987849929_
                               _tl4988049932_)
                              (let () (declare (not safe)) (_g4980049892_)))))
                      (let () (declare (not safe)) (_g4980049892_))))
              (if (gx#stx-pair/null? _tl4981050139_)
                  (let ((___splice5719457195_
                         (gx#syntax-split-splice _tl4981050139_ '0)))
                    (let ((_tl4988049932_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5719457195_ '1)))
                          (_target4987849929_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5719457195_ '0))))
                      (if (gx#stx-null? _tl4988049932_)
                          (___match5732457325_
                           _e4980950122_
                           _hd4980850126_
                           _tl4980750129_
                           _e4981250132_
                           _hd4981150136_
                           _tl4981050139_
                           _e4981550142_
                           _hd4981450146_
                           _tl4981350149_
                           ___splice5719457195_
                           _target4987849929_
                           _tl4988049932_)
                          (let () (declare (not safe)) (_g4980049892_)))))
                  (let () (declare (not safe)) (_g4980049892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _tl4981050139_)
                                                      (let ((___splice5719457195_
                                                             (gx#syntax-split-splice
                                                              _tl4981050139_
                                                              '0)))
                                                        (let ((_tl4988049932_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice5719457195_ '1)))
                      (_target4987849929_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice5719457195_ '0))))
                  (if (gx#stx-null? _tl4988049932_)
                      (___match5732457325_
                       _e4980950122_
                       _hd4980850126_
                       _tl4980750129_
                       _e4981250132_
                       _hd4981150136_
                       _tl4981050139_
                       _e4981550142_
                       _hd4981450146_
                       _tl4981350149_
                       ___splice5719457195_
                       _target4987849929_
                       _tl4988049932_)
                      (let () (declare (not safe)) (_g4980049892_)))))
              (let () (declare (not safe)) (_g4980049892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl4981050139_)
                                              (let ((___splice5719457195_
                                                     (gx#syntax-split-splice
                                                      _tl4981050139_
                                                      '0)))
                                                (let ((_tl4988049932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5719457195_
                                                          '1)))
                                                      (_target4987849929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5719457195_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl4988049932_)
                                                      (___match5732457325_
                                                       _e4980950122_
                                                       _hd4980850126_
                                                       _tl4980750129_
                                                       _e4981250132_
                                                       _hd4981150136_
                                                       _tl4981050139_
                                                       _e4981550142_
                                                       _hd4981450146_
                                                       _tl4981350149_
                                                       ___splice5719457195_
                                                       _target4987849929_
                                                       _tl4988049932_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4980049892_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4980049892_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4980049892_)))))
                          (let () (declare (not safe)) (_g4980049892_)))))
                  (let () (declare (not safe)) (_g4980049892_))))))))
    (define |[:0:]#deftyped|
      (lambda (_stx50496_)
        (let* ((___stx5732757328_ _stx50496_)
               (_g5050050552_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5732757328_))))
          (let ((___kont5733057331_
                 (lambda (_L50724_ _L50726_ _L50727_ _L50728_)
                   (let* ((_g5075350772_
                           (lambda (_g5075450768_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g5075450768_)))
                          (_g5075250839_
                           (lambda (_g5075450776_)
                             (if (gx#stx-pair? _g5075450776_)
                                 (let ((_e5076050779_
                                        (gx#syntax-e _g5075450776_)))
                                   (let ((_hd5075950783_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5076050779_)))
                                         (_tl5075850786_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5076050779_))))
                                     (if (gx#stx-pair? _tl5075850786_)
                                         (let ((_e5076350789_
                                                (gx#syntax-e _tl5075850786_)))
                                           (let ((_hd5076250793_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5076350789_)))
                                                 (_tl5076150796_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5076350789_))))
                                             (if (gx#stx-pair? _tl5076150796_)
                                                 (let ((_e5076650799_
                                                        (gx#syntax-e
                                                         _tl5076150796_)))
                                                   (let ((_hd5076550803_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5076650799_)))
                                                         (_tl5076450806_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5076650799_))))
                                                     (if (gx#stx-null?
                                                          _tl5076450806_)
                                                         ((lambda (_L50809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L50811_
                           _L50812_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'def)
                            (cons (cons _L50728_ _L50812_)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@type.signature)
                                                          _L50811_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'with-type)
                        (cons _L50809_
                              (let ((__tmp57948
                                     (lambda (_g5083050833_ _g5083150836_)
                                       (cons _g5083050833_ _g5083150836_))))
                                (declare (not safe))
                                (__foldr1 __tmp57948 '() _L50724_))))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd5076550803_
                  _hd5076250793_
                  _hd5075950783_)
                 (_g5075350772_ _g5075450776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g5075350772_
                                                  _g5075450776_))))
                                         (_g5075350772_ _g5075450776_))))
                                 (_g5075350772_ _g5075450776_)))))
                     (_g5075250839_
                      (list (let ()
                              (declare (not safe))
                              (|[1]#procedure-formals| _stx50496_ _L50727_))
                            (let ()
                              (declare (not safe))
                              (|[1]#procedure-signature|
                               _stx50496_
                               _L50727_
                               _L50726_
                               '#f))
                            (let ()
                              (declare (not safe))
                              (|[1]#procedure-typedecl|
                               _stx50496_
                               _L50727_)))))))
                (___kont5733457335_
                 (lambda (_L50609_ _L50611_)
                   (cons (gx#datum->syntax '#f 'deftyped)
                         (cons _L50611_
                               (cons (gx#datum->syntax '#f ':-)
                                     (cons (gx#datum->syntax '#f ':t)
                                           (let ((__tmp57949
                                                  (lambda (_g5062850631_
                                                           _g5062950634_)
                                                    (cons _g5062850631_
                                                          _g5062950634_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp57949
                                              '()
                                              _L50609_)))))))))
            (let* ((___match5740057401_
                    (lambda (_e5053450559_
                             _hd5053350563_
                             _tl5053250566_
                             _e5053750569_
                             _hd5053650573_
                             _tl5053550576_
                             ___splice5733657337_
                             _target5053850579_
                             _tl5054050582_)
                      (letrec ((_loop5054150585_
                                (lambda (_hd5053950589_ _body5054550592_)
                                  (if (gx#stx-pair? _hd5053950589_)
                                      (let ((_e5054250595_
                                             (gx#syntax-e _hd5053950589_)))
                                        (let ((_lp-tl5054450602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5054250595_)))
                                              (_lp-hd5054350599_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5054250595_))))
                                          (_loop5054150585_
                                           _lp-tl5054450602_
                                           (cons _lp-hd5054350599_
                                                 _body5054550592_))))
                                      (let ((_body5054650605_
                                             (reverse _body5054550592_)))
                                        (___kont5733457335_
                                         _body5054650605_
                                         _hd5053650573_))))))
                        (_loop5054150585_ _target5053850579_ '()))))
                   (___match5738057381_
                    (lambda (_e5050850644_
                             _hd5050750648_
                             _tl5050650651_
                             _e5051150654_
                             _hd5051050658_
                             _tl5050950661_
                             _e5051450664_
                             _hd5051350668_
                             _tl5051250671_
                             _e5051750674_
                             _hd5051650678_
                             _tl5051550681_
                             _e5052050684_
                             _hd5051950688_
                             _tl5051850691_
                             ___splice5733257333_
                             _target5052150694_
                             _tl5052350697_)
                      (letrec ((_loop5052450700_
                                (lambda (_hd5052250704_ _body5052850707_)
                                  (if (gx#stx-pair? _hd5052250704_)
                                      (let ((_e5052550710_
                                             (gx#syntax-e _hd5052250704_)))
                                        (let ((_lp-tl5052750717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5052550710_)))
                                              (_lp-hd5052650714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5052550710_))))
                                          (_loop5052450700_
                                           _lp-tl5052750717_
                                           (cons _lp-hd5052650714_
                                                 _body5052850707_))))
                                      (let ((_body5052950720_
                                             (reverse _body5052850707_)))
                                        (___kont5733057331_
                                         _body5052950720_
                                         _hd5051950688_
                                         _tl5051250671_
                                         _hd5051350668_))))))
                        (_loop5052450700_ _target5052150694_ '())))))
              (if (gx#stx-pair? ___stx5732757328_)
                  (let ((_e5050850644_ (gx#syntax-e ___stx5732757328_)))
                    (let ((_tl5050650651_
                           (let () (declare (not safe)) (##cdr _e5050850644_)))
                          (_hd5050750648_
                           (let ()
                             (declare (not safe))
                             (##car _e5050850644_))))
                      (if (gx#stx-pair? _tl5050650651_)
                          (let ((_e5051150654_ (gx#syntax-e _tl5050650651_)))
                            (let ((_tl5050950661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5051150654_)))
                                  (_hd5051050658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5051150654_))))
                              (if (gx#stx-pair? _hd5051050658_)
                                  (let ((_e5051450664_
                                         (gx#syntax-e _hd5051050658_)))
                                    (let ((_tl5051250671_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5051450664_)))
                                          (_hd5051350668_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5051450664_))))
                                      (if (gx#stx-pair? _tl5050950661_)
                                          (let ((_e5051750674_
                                                 (gx#syntax-e _tl5050950661_)))
                                            (let ((_tl5051550681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e5051750674_)))
                                                  (_hd5051650678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e5051750674_))))
                                              (if (gx#identifier?
                                                   _hd5051650678_)
                                                  (if (gx#free-identifier=?
                                                       |[1]#_g57950_|
                                                       _hd5051650678_)
                                                      (if (gx#stx-pair?
                                                           _tl5051550681_)
                                                          (let ((_e5052050684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5051550681_)))
                    (let ((_tl5051850691_
                           (let () (declare (not safe)) (##cdr _e5052050684_)))
                          (_hd5051950688_
                           (let ()
                             (declare (not safe))
                             (##car _e5052050684_))))
                      (if (gx#stx-pair/null? _tl5051850691_)
                          (let ((___splice5733257333_
                                 (gx#syntax-split-splice _tl5051850691_ '0)))
                            (let ((_tl5052350697_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5733257333_ '1)))
                                  (_target5052150694_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5733257333_ '0))))
                              (if (gx#stx-null? _tl5052350697_)
                                  (___match5738057381_
                                   _e5050850644_
                                   _hd5050750648_
                                   _tl5050650651_
                                   _e5051150654_
                                   _hd5051050658_
                                   _tl5050950661_
                                   _e5051450664_
                                   _hd5051350668_
                                   _tl5051250671_
                                   _e5051750674_
                                   _hd5051650678_
                                   _tl5051550681_
                                   _e5052050684_
                                   _hd5051950688_
                                   _tl5051850691_
                                   ___splice5733257333_
                                   _target5052150694_
                                   _tl5052350697_)
                                  (if (gx#stx-pair/null? _tl5050950661_)
                                      (let ((___splice5733657337_
                                             (gx#syntax-split-splice
                                              _tl5050950661_
                                              '0)))
                                        (let ((_tl5054050582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5733657337_
                                                  '1)))
                                              (_target5053850579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5733657337_
                                                  '0))))
                                          (if (gx#stx-null? _tl5054050582_)
                                              (___match5740057401_
                                               _e5050850644_
                                               _hd5050750648_
                                               _tl5050650651_
                                               _e5051150654_
                                               _hd5051050658_
                                               _tl5050950661_
                                               ___splice5733657337_
                                               _target5053850579_
                                               _tl5054050582_)
                                              (let ()
                                                (declare (not safe))
                                                (_g5050050552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g5050050552_))))))
                          (if (gx#stx-pair/null? _tl5050950661_)
                              (let ((___splice5733657337_
                                     (gx#syntax-split-splice
                                      _tl5050950661_
                                      '0)))
                                (let ((_tl5054050582_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5733657337_
                                          '1)))
                                      (_target5053850579_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5733657337_
                                          '0))))
                                  (if (gx#stx-null? _tl5054050582_)
                                      (___match5740057401_
                                       _e5050850644_
                                       _hd5050750648_
                                       _tl5050650651_
                                       _e5051150654_
                                       _hd5051050658_
                                       _tl5050950661_
                                       ___splice5733657337_
                                       _target5053850579_
                                       _tl5054050582_)
                                      (let ()
                                        (declare (not safe))
                                        (_g5050050552_)))))
                              (let () (declare (not safe)) (_g5050050552_))))))
                  (if (gx#stx-pair/null? _tl5050950661_)
                      (let ((___splice5733657337_
                             (gx#syntax-split-splice _tl5050950661_ '0)))
                        (let ((_tl5054050582_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5733657337_ '1)))
                              (_target5053850579_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5733657337_ '0))))
                          (if (gx#stx-null? _tl5054050582_)
                              (___match5740057401_
                               _e5050850644_
                               _hd5050750648_
                               _tl5050650651_
                               _e5051150654_
                               _hd5051050658_
                               _tl5050950661_
                               ___splice5733657337_
                               _target5053850579_
                               _tl5054050582_)
                              (let () (declare (not safe)) (_g5050050552_)))))
                      (let () (declare (not safe)) (_g5050050552_))))
              (if (gx#stx-pair/null? _tl5050950661_)
                  (let ((___splice5733657337_
                         (gx#syntax-split-splice _tl5050950661_ '0)))
                    (let ((_tl5054050582_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5733657337_ '1)))
                          (_target5053850579_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5733657337_ '0))))
                      (if (gx#stx-null? _tl5054050582_)
                          (___match5740057401_
                           _e5050850644_
                           _hd5050750648_
                           _tl5050650651_
                           _e5051150654_
                           _hd5051050658_
                           _tl5050950661_
                           ___splice5733657337_
                           _target5053850579_
                           _tl5054050582_)
                          (let () (declare (not safe)) (_g5050050552_)))))
                  (let () (declare (not safe)) (_g5050050552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _tl5050950661_)
                                                      (let ((___splice5733657337_
                                                             (gx#syntax-split-splice
                                                              _tl5050950661_
                                                              '0)))
                                                        (let ((_tl5054050582_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice5733657337_ '1)))
                      (_target5053850579_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice5733657337_ '0))))
                  (if (gx#stx-null? _tl5054050582_)
                      (___match5740057401_
                       _e5050850644_
                       _hd5050750648_
                       _tl5050650651_
                       _e5051150654_
                       _hd5051050658_
                       _tl5050950661_
                       ___splice5733657337_
                       _target5053850579_
                       _tl5054050582_)
                      (let () (declare (not safe)) (_g5050050552_)))))
              (let () (declare (not safe)) (_g5050050552_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl5050950661_)
                                              (let ((___splice5733657337_
                                                     (gx#syntax-split-splice
                                                      _tl5050950661_
                                                      '0)))
                                                (let ((_tl5054050582_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5733657337_
                                                          '1)))
                                                      (_target5053850579_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5733657337_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl5054050582_)
                                                      (___match5740057401_
                                                       _e5050850644_
                                                       _hd5050750648_
                                                       _tl5050650651_
                                                       _e5051150654_
                                                       _hd5051050658_
                                                       _tl5050950661_
                                                       ___splice5733657337_
                                                       _target5053850579_
                                                       _tl5054050582_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g5050050552_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g5050050552_))))))
                                  (if (gx#stx-pair/null? _tl5050950661_)
                                      (let ((___splice5733657337_
                                             (gx#syntax-split-splice
                                              _tl5050950661_
                                              '0)))
                                        (let ((_tl5054050582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5733657337_
                                                  '1)))
                                              (_target5053850579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5733657337_
                                                  '0))))
                                          (if (gx#stx-null? _tl5054050582_)
                                              (___match5740057401_
                                               _e5050850644_
                                               _hd5050750648_
                                               _tl5050650651_
                                               _e5051150654_
                                               _hd5051050658_
                                               _tl5050950661_
                                               ___splice5733657337_
                                               _target5053850579_
                                               _tl5054050582_)
                                              (let ()
                                                (declare (not safe))
                                                (_g5050050552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g5050050552_))))))
                          (let () (declare (not safe)) (_g5050050552_)))))
                  (let () (declare (not safe)) (_g5050050552_))))))))
    (define |[:0:]#with-type|
      (lambda (_stx50849_)
        (let* ((_g5085250894_
                (lambda (_g5085350890_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5085350890_)))
               (_g5085151232_
                (lambda (_g5085350898_)
                  (if (gx#stx-pair? _g5085350898_)
                      (let ((_e5085950901_ (gx#syntax-e _g5085350898_)))
                        (let ((_hd5085850905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5085950901_)))
                              (_tl5085750908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5085950901_))))
                          (if (gx#stx-pair? _tl5085750908_)
                              (let ((_e5086250911_
                                     (gx#syntax-e _tl5085750908_)))
                                (let ((_hd5086150915_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5086250911_)))
                                      (_tl5086050918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5086250911_))))
                                  (if (gx#stx-pair/null? _hd5086150915_)
                                      (let ((_g57951_
                                             (gx#syntax-split-splice
                                              _hd5086150915_
                                              '0)))
                                        (begin
                                          (let ((_g57952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g57951_)
                                                       (##vector-length
                                                        _g57951_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g57952_ 2)))
                                                (error "Context expects 2 values"
                                                       _g57952_)))
                                          (let ((_target5086350921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g57951_ 0)))
                                                (_tl5086550924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g57951_ 1))))
                                            (if (gx#stx-null? _tl5086550924_)
                                                (letrec ((_loop5086650927_
                                                          (lambda (_hd5086450931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _type5087050934_
                           _id5087150936_)
                    (if (gx#stx-pair? _hd5086450931_)
                        (let ((_e5086750939_ (gx#syntax-e _hd5086450931_)))
                          (let ((_lp-hd5086850943_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5086750939_)))
                                (_lp-tl5086950946_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5086750939_))))
                            (if (gx#stx-pair? _lp-hd5086850943_)
                                (let ((_e5087650949_
                                       (gx#syntax-e _lp-hd5086850943_)))
                                  (let ((_hd5087550953_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5087650949_)))
                                        (_tl5087450956_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5087650949_))))
                                    (if (gx#stx-pair? _tl5087450956_)
                                        (let ((_e5087950959_
                                               (gx#syntax-e _tl5087450956_)))
                                          (let ((_hd5087850963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5087950959_)))
                                                (_tl5087750966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5087950959_))))
                                            (if (gx#stx-null? _tl5087750966_)
                                                (_loop5086650927_
                                                 _lp-tl5086950946_
                                                 (cons _hd5087850963_
                                                       _type5087050934_)
                                                 (cons _hd5087550953_
                                                       _id5087150936_))
                                                (_g5085250894_
                                                 _g5085350898_))))
                                        (_g5085250894_ _g5085350898_))))
                                (_g5085250894_ _g5085350898_))))
                        (let ((_type5087250969_ (reverse _type5087050934_))
                              (_id5087350972_ (reverse _id5087150936_)))
                          (if (gx#stx-pair/null? _tl5086050918_)
                              (let ((_g57953_
                                     (gx#syntax-split-splice
                                      _tl5086050918_
                                      '0)))
                                (begin
                                  (let ((_g57954_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g57953_)
                                               (##vector-length _g57953_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g57954_ 2)))
                                        (error "Context expects 2 values"
                                               _g57954_)))
                                  (let ((_target5088050975_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g57953_ 0)))
                                        (_tl5088250978_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g57953_ 1))))
                                    (if (gx#stx-null? _tl5088250978_)
                                        (letrec ((_loop5088350981_
                                                  (lambda (_hd5088150985_
                                                           _body5088750988_)
                                                    (if (gx#stx-pair?
                                                         _hd5088150985_)
                                                        (let ((_e5088450991_
                                                               (gx#syntax-e
                                                                _hd5088150985_)))
                                                          (let ((_lp-hd5088550995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e5088450991_)))
                        (_lp-tl5088650998_
                         (let () (declare (not safe)) (##cdr _e5088450991_))))
                    (_loop5088350981_
                     _lp-tl5088650998_
                     (cons _lp-hd5088550995_ _body5088750988_))))
                (let ((_body5088851001_ (reverse _body5088750988_)))
                  ((lambda (_L51005_ _L51007_ _L51008_)
                     (if (and (gx#identifier-list?
                               (let ((__tmp57955
                                      (lambda (_g5103051033_ _g5103151036_)
                                        (cons _g5103051033_ _g5103151036_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp57955 '() _L51008_)))
                              (let ((__tmp57956
                                     (let ((__tmp57957
                                            (lambda (_g5103851041_
                                                     _g5103951044_)
                                              (cons _g5103851041_
                                                    _g5103951044_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp57957 '() _L51007_))))
                                (declare (not safe))
                                (__andmap1
                                 gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                 __tmp57956)))
                         (let* ((_g5104751080_
                                 (lambda (_g5104851076_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g5104851076_)))
                                (_g5104651212_
                                 (lambda (_g5104851084_)
                                   (if (gx#stx-pair? _g5104851084_)
                                       (let ((_e5105351087_
                                              (gx#syntax-e _g5104851084_)))
                                         (let ((_hd5105251091_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5105351087_)))
                                               (_tl5105151094_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5105351087_))))
                                           (if (gx#stx-pair/null?
                                                _hd5105251091_)
                                               (let ((_g57958_
                                                      (gx#syntax-split-splice
                                                       _hd5105251091_
                                                       '0)))
                                                 (begin
                                                   (let ((_g57959_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g57958_)
                        (##vector-length _g57958_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g57959_ 2)))
                 (error "Context expects 2 values" _g57959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target5105451097_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g57958_
                                                             0)))
                                                         (_tl5105651100_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g57958_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl5105651100_)
                                                         (letrec ((_loop5105751103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd5105551107_ _qid5106151110_)
                             (if (gx#stx-pair? _hd5105551107_)
                                 (let ((_e5105851113_
                                        (gx#syntax-e _hd5105551107_)))
                                   (let ((_lp-hd5105951117_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5105851113_)))
                                         (_lp-tl5106051120_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5105851113_))))
                                     (_loop5105751103_
                                      _lp-tl5106051120_
                                      (cons _lp-hd5105951117_
                                            _qid5106151110_))))
                                 (let ((_qid5106251123_
                                        (reverse _qid5106151110_)))
                                   (if (gx#stx-pair? _tl5105151094_)
                                       (let ((_e5106551127_
                                              (gx#syntax-e _tl5105151094_)))
                                         (let ((_hd5106451131_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5106551127_)))
                                               (_tl5106351134_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5106551127_))))
                                           (if (gx#stx-pair/null?
                                                _hd5106451131_)
                                               (let ((_g57960_
                                                      (gx#syntax-split-splice
                                                       _hd5106451131_
                                                       '0)))
                                                 (begin
                                                   (let ((_g57961_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g57960_)
                        (##vector-length _g57960_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g57961_ 2)))
                 (error "Context expects 2 values" _g57961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target5106651137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g57960_
                                                             0)))
                                                         (_tl5106851140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g57960_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl5106851140_)
                                                         (letrec ((_loop5106951143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd5106751147_ _tid5107351150_)
                             (if (gx#stx-pair? _hd5106751147_)
                                 (let ((_e5107051153_
                                        (gx#syntax-e _hd5106751147_)))
                                   (let ((_lp-hd5107151157_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5107051153_)))
                                         (_lp-tl5107251160_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5107051153_))))
                                     (_loop5106951143_
                                      _lp-tl5107251160_
                                      (cons _lp-hd5107151157_
                                            _tid5107351150_))))
                                 (let ((_tid5107451163_
                                        (reverse _tid5107351150_)))
                                   (if (gx#stx-null? _tl5106351134_)
                                       ((lambda (_L51167_ _L51169_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@type.assert)
                                                              (begin
                                                                (gx#syntax-check-splice-targets
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L51167_
                         _L51169_)
                        (let ((__tmp57962
                               (lambda (_g5119451198_
                                        _g5119551201_
                                        _g5119651203_)
                                 (cons (cons _g5119551201_
                                             (cons _g5119451198_ '()))
                                       _g5119651203_))))
                          (declare (not safe))
                          (__foldr2 __tmp57962 '() _L51167_ _L51169_))))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons '()
                                  (let ((__tmp57963
                                         (lambda (_g5119251206_ _g5119351209_)
                                           (cons _g5119251206_
                                                 _g5119351209_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp57963 '() _L51005_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tid5107451163_
                                        _qid5106251123_)
                                       (_g5104751080_ _g5104851084_)))))))
                   (_loop5106951143_ _target5106651137_ '()))
                 (_g5104751080_ _g5104851084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g5104751080_ _g5104851084_))))
                                       (_g5104751080_ _g5104851084_)))))))
                   (_loop5105751103_ _target5105451097_ '()))
                 (_g5104751080_ _g5104851084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g5104751080_ _g5104851084_))))
                                       (_g5104751080_ _g5104851084_)))))
                           (_g5104651212_
                            (list (map gx#core-quote-syntax
                                       (let ((__tmp57964
                                              (lambda (_g5121551218_
                                                       _g5121651221_)
                                                (cons _g5121551218_
                                                      _g5121651221_))))
                                         (declare (not safe))
                                         (__foldr1 __tmp57964 '() _L51008_)))
                                  (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                       (map gx#syntax-local-value
                                            (let ((__tmp57965
                                                   (lambda (_g5122351226_
                                                            _g5122451229_)
                                                     (cons _g5122351226_
                                                           _g5122451229_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp57965
                                               '()
                                               _L51007_)))))))
                         (_g5085250894_ _g5085350898_)))
                   _body5088851001_
                   _type5087250969_
                   _id5087350972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop5088350981_
                                           _target5088050975_
                                           '()))
                                        (_g5085250894_ _g5085350898_)))))
                              (_g5085250894_ _g5085350898_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop5086650927_
                                                   _target5086350921_
                                                   '()
                                                   '()))
                                                (_g5085250894_
                                                 _g5085350898_)))))
                                      (_g5085250894_ _g5085350898_))))
                              (_g5085250894_ _g5085350898_))))
                      (_g5085250894_ _g5085350898_)))))
          (_g5085151232_ _stx50849_))))
    (define |[:0:]#declare-inline|
      (lambda (_$stx51240_)
        (let* ((_g5124451262_
                (lambda (_g5124551258_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5124551258_)))
               (_g5124351317_
                (lambda (_g5124551266_)
                  (if (gx#stx-pair? _g5124551266_)
                      (let ((_e5125051269_ (gx#syntax-e _g5124551266_)))
                        (let ((_hd5124951273_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5125051269_)))
                              (_tl5124851276_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5125051269_))))
                          (if (gx#stx-pair? _tl5124851276_)
                              (let ((_e5125351279_
                                     (gx#syntax-e _tl5124851276_)))
                                (let ((_hd5125251283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5125351279_)))
                                      (_tl5125151286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5125351279_))))
                                  (if (gx#stx-pair? _tl5125151286_)
                                      (let ((_e5125651289_
                                             (gx#syntax-e _tl5125151286_)))
                                        (let ((_hd5125551293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5125651289_)))
                                              (_tl5125451296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5125651289_))))
                                          (if (gx#stx-null? _tl5125451296_)
                                              ((lambda (_L51299_ _L51301_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _L51301_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L51299_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd5125551293_
                                               _hd5125251283_)
                                              (_g5124451262_ _g5124551266_))))
                                      (_g5124451262_ _g5124551266_))))
                              (_g5124451262_ _g5124551266_))))
                      (_g5124451262_ _g5124551266_)))))
          (_g5124351317_ _$stx51240_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx51321_)
        (let* ((_g5132551339_
                (lambda (_g5132651335_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5132651335_)))
               (_g5132451380_
                (lambda (_g5132651343_)
                  (if (gx#stx-pair? _g5132651343_)
                      (let ((_e5133051346_ (gx#syntax-e _g5132651343_)))
                        (let ((_hd5132951350_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5133051346_)))
                              (_tl5132851353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5133051346_))))
                          (if (gx#stx-pair? _tl5132851353_)
                              (let ((_e5133351356_
                                     (gx#syntax-e _tl5132851353_)))
                                (let ((_hd5133251360_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5133351356_)))
                                      (_tl5133151363_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5133351356_))))
                                  (if (gx#stx-null? _tl5133151363_)
                                      ((lambda (_L51366_)
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'declare)
                         (cons (cons (gx#datum->syntax '#f 'not)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'interrupts-enabled)
                                           '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (gx#datum->syntax '#f 'again)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'unless)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##fx=)
                           (cons (cons (gx#datum->syntax '#f '##vector-cas!)
                                       (cons _L51366_
                                             (cons '0
                                                   (cons '1 (cons '0 '())))))
                                 (cons '0 '())))
                     (cons (cons (gx#datum->syntax '#f '##thread-yield!) '())
                           (cons (cons (gx#datum->syntax '#f 'again) '())
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd5133251360_)
                                      (_g5132551339_ _g5132651343_))))
                              (_g5132551339_ _g5132651343_))))
                      (_g5132551339_ _g5132651343_)))))
          (_g5132451380_ _$stx51321_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx51384_)
        (let* ((_g5138851402_
                (lambda (_g5138951398_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5138951398_)))
               (_g5138751443_
                (lambda (_g5138951406_)
                  (if (gx#stx-pair? _g5138951406_)
                      (let ((_e5139351409_ (gx#syntax-e _g5138951406_)))
                        (let ((_hd5139251413_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5139351409_)))
                              (_tl5139151416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5139351409_))))
                          (if (gx#stx-pair? _tl5139151416_)
                              (let ((_e5139651419_
                                     (gx#syntax-e _tl5139151416_)))
                                (let ((_hd5139551423_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5139651419_)))
                                      (_tl5139451426_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5139651419_))))
                                  (if (gx#stx-null? _tl5139451426_)
                                      ((lambda (_L51429_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _L51429_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd5139551423_)
                                      (_g5138851402_ _g5138951406_))))
                              (_g5138851402_ _g5138951406_))))
                      (_g5138851402_ _g5138951406_)))))
          (_g5138751443_ _$stx51384_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx51447_)
        (let* ((_g5145151461_
                (lambda (_g5145251457_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5145251457_)))
               (_g5145051482_
                (lambda (_g5145251465_)
                  (if (gx#stx-pair? _g5145251465_)
                      (let ((_e5145551468_ (gx#syntax-e _g5145251465_)))
                        (let ((_hd5145451472_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5145551468_)))
                              (_tl5145351475_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5145551468_))))
                          (if (gx#stx-null? _tl5145351475_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_g5145151461_ _g5145251465_))))
                      (_g5145151461_ _g5145251465_)))))
          (_g5145051482_ _$stx51447_))))
    (define |[:0:]#defaget|
      (lambda (_$stx51486_)
        (let* ((_g5149051508_
                (lambda (_g5149151504_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5149151504_)))
               (_g5148951563_
                (lambda (_g5149151512_)
                  (if (gx#stx-pair? _g5149151512_)
                      (let ((_e5149651515_ (gx#syntax-e _g5149151512_)))
                        (let ((_hd5149551519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5149651515_)))
                              (_tl5149451522_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5149651515_))))
                          (if (gx#stx-pair? _tl5149451522_)
                              (let ((_e5149951525_
                                     (gx#syntax-e _tl5149451522_)))
                                (let ((_hd5149851529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5149951525_)))
                                      (_tl5149751532_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5149951525_))))
                                  (if (gx#stx-pair? _tl5149751532_)
                                      (let ((_e5150251535_
                                             (gx#syntax-e _tl5149751532_)))
                                        (let ((_hd5150151539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5150251535_)))
                                              (_tl5150051542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5150251535_))))
                                          (if (gx#stx-null? _tl5150051542_)
                                              ((lambda (_L51545_ _L51547_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'defapi)
                                                       (cons (cons _L51547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'lst)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'default)
                                                   (cons '#f '()))
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'cond)
                                 (cons (cons (cons (gx#datum->syntax '#f 'and)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'pair?)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lst)
                             '()))
                 (cons (cons _L51545_
                             (cons (gx#datum->syntax '#f 'key)
                                   (cons (gx#datum->syntax '#f 'lst) '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (gx#datum->syntax '#f '=>)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'cdr)
                                                         '())))
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'procedure?)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'default)
                                                               '()))
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':-)
                             (cons (gx#datum->syntax '#f 'default)
                                   (cons (gx#datum->syntax '#f ':procedure)
                                         '())))
                       (cons (gx#datum->syntax '#f 'key) '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'else)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'default)
                                                               '()))
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd5150151539_
                                               _hd5149851529_)
                                              (_g5149051508_ _g5149151512_))))
                                      (_g5149051508_ _g5149151512_))))
                              (_g5149051508_ _g5149151512_))))
                      (_g5149051508_ _g5149151512_)))))
          (_g5148951563_ _$stx51486_))))
    (define |[:0:]#defpget|
      (lambda (_$stx51567_)
        (let* ((_g5157151589_
                (lambda (_g5157251585_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5157251585_)))
               (_g5157051644_
                (lambda (_g5157251593_)
                  (if (gx#stx-pair? _g5157251593_)
                      (let ((_e5157751596_ (gx#syntax-e _g5157251593_)))
                        (let ((_hd5157651600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5157751596_)))
                              (_tl5157551603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5157751596_))))
                          (if (gx#stx-pair? _tl5157551603_)
                              (let ((_e5158051606_
                                     (gx#syntax-e _tl5157551603_)))
                                (let ((_hd5157951610_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5158051606_)))
                                      (_tl5157851613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5158051606_))))
                                  (if (gx#stx-pair? _tl5157851613_)
                                      (let ((_e5158351616_
                                             (gx#syntax-e _tl5157851613_)))
                                        (let ((_hd5158251620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5158351616_)))
                                              (_tl5158151623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5158351616_))))
                                          (if (gx#stx-null? _tl5158151623_)
                                              ((lambda (_L51626_ _L51628_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'defapi)
                                                       (cons (cons _L51628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'lst)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'default)
                                                   (cons '#f '()))
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (gx#datum->syntax '#f 'lp)
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'rest)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'lst)
                                                               '()))
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'match)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'rest)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '@list)
                                         (cons (gx#datum->syntax '#f 'k)
                                               (cons (gx#datum->syntax '#f 'v)
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))))
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons _L51626_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'k)
                         (cons (gx#datum->syntax '#f 'key) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'v)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lp)
                               (cons (gx#datum->syntax '#f 'rest) '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'procedure?)
                         (cons (gx#datum->syntax '#f 'default) '()))
                   (cons (cons (cons (gx#datum->syntax '#f ':-)
                                     (cons (gx#datum->syntax '#f 'default)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  ':procedure)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'key) '()))
                         (cons (gx#datum->syntax '#f 'default) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd5158251620_
                                               _hd5157951610_)
                                              (_g5157151589_ _g5157251593_))))
                                      (_g5157151589_ _g5157251593_))))
                              (_g5157151589_ _g5157251593_))))
                      (_g5157151589_ _g5157251593_)))))
          (_g5157051644_ _$stx51567_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx51648_)
        (let* ((_g5165251670_
                (lambda (_g5165351666_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5165351666_)))
               (_g5165151725_
                (lambda (_g5165351674_)
                  (if (gx#stx-pair? _g5165351674_)
                      (let ((_e5165851677_ (gx#syntax-e _g5165351674_)))
                        (let ((_hd5165751681_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5165851677_)))
                              (_tl5165651684_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5165851677_))))
                          (if (gx#stx-pair? _tl5165651684_)
                              (let ((_e5166151687_
                                     (gx#syntax-e _tl5165651684_)))
                                (let ((_hd5166051691_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5166151687_)))
                                      (_tl5165951694_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5166151687_))))
                                  (if (gx#stx-pair? _tl5165951694_)
                                      (let ((_e5166451697_
                                             (gx#syntax-e _tl5165951694_)))
                                        (let ((_hd5166351701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5166451697_)))
                                              (_tl5166251704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5166451697_))))
                                          (if (gx#stx-null? _tl5166251704_)
                                              ((lambda (_L51707_ _L51709_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'defapi)
                                                       (cons (cons _L51709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'el)
                                 (cons (gx#datum->syntax '#f 'lst) '())))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (gx#datum->syntax '#f 'lp)
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'rest)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'lst)
                                                               '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'r)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@list)
                                   '())
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'match)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'rest)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '@list)
                                         (cons (gx#datum->syntax '#f 'hd)
                                               (gx#datum->syntax '#f 'rest)))
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons _L51707_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'el)
                         (cons (gx#datum->syntax '#f 'hd) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'foldl1)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (gx#datum->syntax '#f 'rest)
                                     (cons (gx#datum->syntax '#f 'r) '()))))
                   (cons (cons (gx#datum->syntax '#f 'lp)
                               (cons (gx#datum->syntax '#f 'rest)
                                     (cons (cons (gx#datum->syntax '#f 'cons)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'hd)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'r)
                                                             '())))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (gx#datum->syntax '#f 'lst)
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd5166351701_
                                               _hd5166051691_)
                                              (_g5165251670_ _g5165351674_))))
                                      (_g5165251670_ _g5165351674_))))
                              (_g5165251670_ _g5165351674_))))
                      (_g5165251670_ _g5165351674_)))))
          (_g5165151725_ _$stx51648_))))
    (define |[:0:]#DBG|
      (lambda (_$stx51729_)
        (let* ((_g5173351744_
                (lambda (_g5173451740_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5173451740_)))
               (_g5173251773_
                (lambda (_g5173451748_)
                  (if (gx#stx-pair? _g5173451748_)
                      (let ((_e5173851751_ (gx#syntax-e _g5173451748_)))
                        (let ((_hd5173751755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5173851751_)))
                              (_tl5173651758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5173851751_))))
                          ((lambda (_L51761_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _L51761_)))
                           _tl5173651758_)))
                      (_g5173351744_ _g5173451748_)))))
          (_g5173251773_ _$stx51729_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx51777_)
        (let* ((___stx5743257433_ _$stx51777_)
               (_g5178852002_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5743257433_))))
          (let ((___kont5743557436_
                 (lambda (_L52855_ _L52857_ _L52858_ _L52859_ _L52860_)
                   (cons _L52860_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp57966
                                                  (lambda (_g5289052893_
                                                           _g5289152896_)
                                                    (cons _g5289052893_
                                                          _g5289152896_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp57966
                                              '()
                                              _L52858_))
                                           (cons _L52859_
                                                 (cons _L52857_
                                                       (cons _L52855_
                                                             '())))))))))
                (___kont5743957440_
                 (lambda (_L52708_ _L52710_ _L52711_ _L52712_)
                   (cons _L52712_
                         (cons '2
                               (cons '()
                                     (cons (let ((__tmp57967
                                                  (lambda (_g5273552738_
                                                           _g5273652741_)
                                                    (cons _g5273552738_
                                                          _g5273652741_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp57967
                                              '()
                                              _L52710_))
                                           (cons _L52711_
                                                 (cons _L52708_
                                                       (cons _L52708_
                                                             '())))))))))
                (___kont5744357444_
                 (lambda (_L52611_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _L52611_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (___kont5744557446_
                 (lambda (_L52534_
                          _L52536_
                          _L52537_
                          _L52538_
                          _L52539_
                          _L52540_)
                   (cons _L52540_
                         (cons '2
                               (cons (cons (cons _L52538_ (cons _L52537_ '()))
                                           _L52539_)
                                     (cons _L52536_ _L52534_))))))
                (___kont5744757448_
                 (lambda (_L52415_ _L52417_ _L52418_ _L52419_ _L52420_)
                   (cons _L52420_
                         (cons '2
                               (cons (cons (cons _L52418_ (cons _L52418_ '()))
                                           _L52419_)
                                     (cons _L52417_ _L52415_))))))
                (___kont5744957450_
                 (lambda (_L52332_ _L52334_ _L52335_)
                   (cons _L52335_
                         (cons '3 (cons '() (cons _L52334_ _L52332_))))))
                (___kont5745157452_
                 (lambda (_L52253_ _L52255_ _L52256_ _L52257_ _L52258_)
                   (cons _L52258_
                         (cons '3
                               (cons (cons _L52256_ _L52257_)
                                     (cons _L52255_ _L52253_))))))
                (___kont5745357454_
                 (lambda (_L52137_
                          _L52139_
                          _L52140_
                          _L52141_
                          _L52142_
                          _L52143_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _L52140_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L52137_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f 'tagval)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'DBG-helper)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tagval)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons (let ((__tmp57968
                                                    (lambda (_g5217752180_
                                                             _g5217852183_)
                                                      (cons _g5217752180_
                                                            _g5217852183_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp57968
                                                '()
                                                _L52142_))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (let ((__tmp57969
                                                    (lambda (_g5217552186_
                                                             _g5217652189_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _g5217552186_ '())))
                    _g5217652189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp57969
                                                '()
                                                _L52141_)))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L52139_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match5778357784_
                    (lambda (_e5196052009_
                             _hd5195952013_
                             _tl5195852016_
                             _e5196352019_
                             _hd5196252023_
                             _tl5196152026_
                             _e5196452029_
                             _e5196752033_
                             _hd5196652037_
                             _tl5196552040_
                             ___splice5745557456_
                             _target5196852043_
                             _tl5197052046_)
                      (letrec ((_loop5197152049_
                                (lambda (_hd5196952053_
                                         _exprs5197552056_
                                         _names5197652058_)
                                  (if (gx#stx-pair? _hd5196952053_)
                                      (let ((_e5197252061_
                                             (gx#syntax-e _hd5196952053_)))
                                        (let ((_lp-tl5197452068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5197252061_)))
                                              (_lp-hd5197352065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5197252061_))))
                                          (if (gx#stx-pair? _lp-hd5197352065_)
                                              (let ((_e5198152071_
                                                     (gx#syntax-e
                                                      _lp-hd5197352065_)))
                                                (let ((_tl5197952078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5198152071_)))
                                                      (_hd5198052075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5198152071_))))
                                                  (if (gx#stx-pair?
                                                       _tl5197952078_)
                                                      (let ((_e5198452081_
                                                             (gx#syntax-e
                                                              _tl5197952078_)))
                                                        (let ((_tl5198252088_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5198452081_)))
                      (_hd5198352085_
                       (let () (declare (not safe)) (##car _e5198452081_))))
                  (if (gx#stx-null? _tl5198252088_)
                      (_loop5197152049_
                       _lp-tl5197452068_
                       (cons _hd5198352085_ _exprs5197552056_)
                       (cons _hd5198052075_ _names5197652058_))
                      (let () (declare (not safe)) (_g5178852002_)))))
              (let () (declare (not safe)) (_g5178852002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5178852002_)))))
                                      (let ((_names5197852094_
                                             (reverse _names5197652058_))
                                            (_exprs5197752091_
                                             (reverse _exprs5197552056_)))
                                        (if (gx#stx-pair? _tl5196552040_)
                                            (let ((_e5198752097_
                                                   (gx#syntax-e
                                                    _tl5196552040_)))
                                              (let ((_tl5198552104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5198752097_)))
                                                    (_hd5198652101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5198752097_))))
                                                (if (gx#stx-null?
                                                     _hd5198652101_)
                                                    (if (gx#stx-pair?
                                                         _tl5198552104_)
                                                        (let ((_e5199052107_
                                                               (gx#syntax-e
                                                                _tl5198552104_)))
                                                          (let ((_tl5198852114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5199052107_)))
                        (_hd5198952111_
                         (let () (declare (not safe)) (##car _e5199052107_))))
                    (if (gx#stx-pair? _tl5198852114_)
                        (let ((_e5199352117_ (gx#syntax-e _tl5198852114_)))
                          (let ((_tl5199152124_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5199352117_)))
                                (_hd5199252121_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5199352117_))))
                            (if (gx#stx-pair? _tl5199152124_)
                                (let ((_e5199652127_
                                       (gx#syntax-e _tl5199152124_)))
                                  (let ((_tl5199452134_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5199652127_)))
                                        (_hd5199552131_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5199652127_))))
                                    (if (gx#stx-null? _tl5199452134_)
                                        (___kont5745357454_
                                         _hd5199552131_
                                         _hd5199252121_
                                         _hd5198952111_
                                         _exprs5197752091_
                                         _names5197852094_
                                         _hd5195952013_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5178852002_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5178852002_)))))
                        (let () (declare (not safe)) (_g5178852002_)))))
                (let () (declare (not safe)) (_g5178852002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5178852002_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5178852002_))))))))
                        (_loop5197152049_ _target5196852043_ '() '()))))
                   (___match5756157562_
                    (lambda (_e5183252634_
                             _hd5183152638_
                             _tl5183052641_
                             _e5183552644_
                             _hd5183452648_
                             _tl5183352651_
                             _e5183652654_
                             _e5183952658_
                             _hd5183852662_
                             _tl5183752665_
                             ___splice5744157442_
                             _target5184052668_
                             _tl5184252671_
                             _e5185152674_
                             _hd5185052678_
                             _tl5184952681_)
                      (letrec ((_loop5184352684_
                                (lambda (_hd5184152688_ _exprs5184752691_)
                                  (if (gx#stx-pair? _hd5184152688_)
                                      (let ((_e5184452694_
                                             (gx#syntax-e _hd5184152688_)))
                                        (let ((_lp-tl5184652701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5184452694_)))
                                              (_lp-hd5184552698_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5184452694_))))
                                          (_loop5184352684_
                                           _lp-tl5184652701_
                                           (cons _lp-hd5184552698_
                                                 _exprs5184752691_))))
                                      (let ((_exprs5184852704_
                                             (reverse _exprs5184752691_)))
                                        (___kont5743957440_
                                         _hd5185052678_
                                         _exprs5184852704_
                                         _hd5183852662_
                                         _hd5183152638_))))))
                        (_loop5184352684_ _target5184052668_ '()))))
                   (___match5752157522_
                    (lambda (_e5179752751_
                             _hd5179652755_
                             _tl5179552758_
                             _e5180052761_
                             _hd5179952765_
                             _tl5179852768_
                             _e5180152771_
                             _e5180452775_
                             _hd5180352779_
                             _tl5180252782_
                             ___splice5743757438_
                             _target5180552785_
                             _tl5180752788_
                             _e5181652791_
                             _hd5181552795_
                             _tl5181452798_
                             _e5181952801_
                             _hd5181852805_
                             _tl5181752808_
                             _e5182252811_
                             _hd5182152815_
                             _tl5182052818_
                             _e5182552821_
                             _hd5182452825_
                             _tl5182352828_)
                      (letrec ((_loop5180852831_
                                (lambda (_hd5180652835_ _exprs5181252838_)
                                  (if (gx#stx-pair? _hd5180652835_)
                                      (let ((_e5180952841_
                                             (gx#syntax-e _hd5180652835_)))
                                        (let ((_lp-tl5181152848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5180952841_)))
                                              (_lp-hd5181052845_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5180952841_))))
                                          (_loop5180852831_
                                           _lp-tl5181152848_
                                           (cons _lp-hd5181052845_
                                                 _exprs5181252838_))))
                                      (let ((_exprs5181352851_
                                             (reverse _exprs5181252838_)))
                                        (___kont5743557436_
                                         _hd5182452825_
                                         _hd5182152815_
                                         _exprs5181352851_
                                         _hd5180352779_
                                         _hd5179652755_))))))
                        (_loop5180852831_ _target5180552785_ '())))))
              (if (gx#stx-pair? ___stx5743257433_)
                  (let ((_e5179752751_ (gx#syntax-e ___stx5743257433_)))
                    (let ((_tl5179552758_
                           (let () (declare (not safe)) (##cdr _e5179752751_)))
                          (_hd5179652755_
                           (let ()
                             (declare (not safe))
                             (##car _e5179752751_))))
                      (if (gx#stx-pair? _tl5179552758_)
                          (let ((_e5180052761_ (gx#syntax-e _tl5179552758_)))
                            (let ((_tl5179852768_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5180052761_)))
                                  (_hd5179952765_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5180052761_))))
                              (if (gx#stx-datum? _hd5179952765_)
                                  (let ((_e5180152771_
                                         (gx#stx-e _hd5179952765_)))
                                    (if (equal? _e5180152771_ '1)
                                        (if (gx#stx-pair? _tl5179852768_)
                                            (let ((_e5180452775_
                                                   (gx#syntax-e
                                                    _tl5179852768_)))
                                              (let ((_tl5180252782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5180452775_)))
                                                    (_hd5180352779_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5180452775_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5180252782_)
                                                    (if (let ((__tmp57970
                                                               (gx#stx-length
                                                                _tl5180252782_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp57970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((___splice5743757438_
                       (gx#syntax-split-splice _tl5180252782_ '2)))
                  (let ((_tl5180752788_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5743757438_ '1)))
                        (_target5180552785_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5743757438_ '0))))
                    (if (gx#stx-pair? _tl5180752788_)
                        (let ((_e5181652791_ (gx#syntax-e _tl5180752788_)))
                          (let ((_tl5181452798_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5181652791_)))
                                (_hd5181552795_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5181652791_))))
                            (if (gx#stx-pair? _hd5181552795_)
                                (let ((_e5181952801_
                                       (gx#syntax-e _hd5181552795_)))
                                  (let ((_tl5181752808_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5181952801_)))
                                        (_hd5181852805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5181952801_))))
                                    (if (gx#identifier? _hd5181852805_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57971_|
                                             _hd5181852805_)
                                            (if (gx#stx-pair? _tl5181752808_)
                                                (let ((_e5182252811_
                                                       (gx#syntax-e
                                                        _tl5181752808_)))
                                                  (let ((_tl5182052818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5182252811_)))
                                                        (_hd5182152815_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5182252811_))))
                                                    (if (gx#stx-null?
                                                         _tl5182052818_)
                                                        (if (gx#stx-pair?
                                                             _tl5181452798_)
                                                            (let ((_e5182552821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5181452798_)))
                      (let ((_tl5182352828_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5182552821_)))
                            (_hd5182452825_
                             (let ()
                               (declare (not safe))
                               (##car _e5182552821_))))
                        (if (gx#stx-null? _tl5182352828_)
                            (___match5752157522_
                             _e5179752751_
                             _hd5179652755_
                             _tl5179552758_
                             _e5180052761_
                             _hd5179952765_
                             _tl5179852768_
                             _e5180152771_
                             _e5180452775_
                             _hd5180352779_
                             _tl5180252782_
                             ___splice5743757438_
                             _target5180552785_
                             _tl5180752788_
                             _e5181652791_
                             _hd5181552795_
                             _tl5181452798_
                             _e5181952801_
                             _hd5181852805_
                             _tl5181752808_
                             _e5182252811_
                             _hd5182152815_
                             _tl5182052818_
                             _e5182552821_
                             _hd5182452825_
                             _tl5182352828_)
                            (if (let ((__tmp57972
                                       (gx#stx-length _tl5180252782_)))
                                  (declare (not safe))
                                  (##fx>= __tmp57972 '1))
                                (let ((___splice5744157442_
                                       (gx#syntax-split-splice
                                        _tl5180252782_
                                        '1)))
                                  (let ((_tl5184252671_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5744157442_
                                            '1)))
                                        (_target5184052668_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5744157442_
                                            '0))))
                                    (if (gx#stx-pair? _tl5184252671_)
                                        (let ((_e5185152674_
                                               (gx#syntax-e _tl5184252671_)))
                                          (let ((_tl5184952681_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5185152674_)))
                                                (_hd5185052678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5185152674_))))
                                            (if (gx#stx-null? _tl5184952681_)
                                                (___match5756157562_
                                                 _e5179752751_
                                                 _hd5179652755_
                                                 _tl5179552758_
                                                 _e5180052761_
                                                 _hd5179952765_
                                                 _tl5179852768_
                                                 _e5180152771_
                                                 _e5180452775_
                                                 _hd5180352779_
                                                 _tl5180252782_
                                                 ___splice5744157442_
                                                 _target5184052668_
                                                 _tl5184252671_
                                                 _e5185152674_
                                                 _hd5185052678_
                                                 _tl5184952681_)
                                                (if (gx#stx-null?
                                                     _tl5180252782_)
                                                    (___kont5744357444_
                                                     _hd5180352779_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5178852002_))))))
                                        (if (gx#stx-null? _tl5180252782_)
                                            (___kont5744357444_ _hd5180352779_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5178852002_))))))
                                (if (gx#stx-null? _tl5180252782_)
                                    (___kont5744357444_ _hd5180352779_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5178852002_)))))))
                    (if (let ((__tmp57973 (gx#stx-length _tl5180252782_)))
                          (declare (not safe))
                          (##fx>= __tmp57973 '1))
                        (let ((___splice5744157442_
                               (gx#syntax-split-splice _tl5180252782_ '1)))
                          (let ((_tl5184252671_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5744157442_ '1)))
                                (_target5184052668_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5744157442_ '0))))
                            (if (gx#stx-pair? _tl5184252671_)
                                (let ((_e5185152674_
                                       (gx#syntax-e _tl5184252671_)))
                                  (let ((_tl5184952681_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5185152674_)))
                                        (_hd5185052678_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5185152674_))))
                                    (if (gx#stx-null? _tl5184952681_)
                                        (___match5756157562_
                                         _e5179752751_
                                         _hd5179652755_
                                         _tl5179552758_
                                         _e5180052761_
                                         _hd5179952765_
                                         _tl5179852768_
                                         _e5180152771_
                                         _e5180452775_
                                         _hd5180352779_
                                         _tl5180252782_
                                         ___splice5744157442_
                                         _target5184052668_
                                         _tl5184252671_
                                         _e5185152674_
                                         _hd5185052678_
                                         _tl5184952681_)
                                        (if (gx#stx-null? _tl5180252782_)
                                            (___kont5744357444_ _hd5180352779_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5178852002_))))))
                                (if (gx#stx-null? _tl5180252782_)
                                    (___kont5744357444_ _hd5180352779_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5178852002_))))))
                        (if (gx#stx-null? _tl5180252782_)
                            (___kont5744357444_ _hd5180352779_)
                            (let () (declare (not safe)) (_g5178852002_)))))
                (if (let ((__tmp57974 (gx#stx-length _tl5180252782_)))
                      (declare (not safe))
                      (##fx>= __tmp57974 '1))
                    (let ((___splice5744157442_
                           (gx#syntax-split-splice _tl5180252782_ '1)))
                      (let ((_tl5184252671_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5744157442_ '1)))
                            (_target5184052668_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5744157442_ '0))))
                        (if (gx#stx-pair? _tl5184252671_)
                            (let ((_e5185152674_ (gx#syntax-e _tl5184252671_)))
                              (let ((_tl5184952681_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5185152674_)))
                                    (_hd5185052678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5185152674_))))
                                (if (gx#stx-null? _tl5184952681_)
                                    (___match5756157562_
                                     _e5179752751_
                                     _hd5179652755_
                                     _tl5179552758_
                                     _e5180052761_
                                     _hd5179952765_
                                     _tl5179852768_
                                     _e5180152771_
                                     _e5180452775_
                                     _hd5180352779_
                                     _tl5180252782_
                                     ___splice5744157442_
                                     _target5184052668_
                                     _tl5184252671_
                                     _e5185152674_
                                     _hd5185052678_
                                     _tl5184952681_)
                                    (if (gx#stx-null? _tl5180252782_)
                                        (___kont5744357444_ _hd5180352779_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5178852002_))))))
                            (if (gx#stx-null? _tl5180252782_)
                                (___kont5744357444_ _hd5180352779_)
                                (let ()
                                  (declare (not safe))
                                  (_g5178852002_))))))
                    (if (gx#stx-null? _tl5180252782_)
                        (___kont5744357444_ _hd5180352779_)
                        (let () (declare (not safe)) (_g5178852002_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp57975
                                                           (gx#stx-length
                                                            _tl5180252782_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp57975 '1))
                                                    (let ((___splice5744157442_
                                                           (gx#syntax-split-splice
                                                            _tl5180252782_
                                                            '1)))
                                                      (let ((_tl5184252671_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5744157442_ '1)))
                    (_target5184052668_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5744157442_ '0))))
                (if (gx#stx-pair? _tl5184252671_)
                    (let ((_e5185152674_ (gx#syntax-e _tl5184252671_)))
                      (let ((_tl5184952681_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5185152674_)))
                            (_hd5185052678_
                             (let ()
                               (declare (not safe))
                               (##car _e5185152674_))))
                        (if (gx#stx-null? _tl5184952681_)
                            (___match5756157562_
                             _e5179752751_
                             _hd5179652755_
                             _tl5179552758_
                             _e5180052761_
                             _hd5179952765_
                             _tl5179852768_
                             _e5180152771_
                             _e5180452775_
                             _hd5180352779_
                             _tl5180252782_
                             ___splice5744157442_
                             _target5184052668_
                             _tl5184252671_
                             _e5185152674_
                             _hd5185052678_
                             _tl5184952681_)
                            (if (gx#stx-null? _tl5180252782_)
                                (___kont5744357444_ _hd5180352779_)
                                (let ()
                                  (declare (not safe))
                                  (_g5178852002_))))))
                    (if (gx#stx-null? _tl5180252782_)
                        (___kont5744357444_ _hd5180352779_)
                        (let () (declare (not safe)) (_g5178852002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5180252782_)
                                                        (___kont5744357444_
                                                         _hd5180352779_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5178852002_)))))
                                            (if (let ((__tmp57976
                                                       (gx#stx-length
                                                        _tl5180252782_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp57976 '1))
                                                (let ((___splice5744157442_
                                                       (gx#syntax-split-splice
                                                        _tl5180252782_
                                                        '1)))
                                                  (let ((_tl5184252671_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5744157442_
                                                            '1)))
                                                        (_target5184052668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5744157442_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5184252671_)
                                                        (let ((_e5185152674_
                                                               (gx#syntax-e
                                                                _tl5184252671_)))
                                                          (let ((_tl5184952681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5185152674_)))
                        (_hd5185052678_
                         (let () (declare (not safe)) (##car _e5185152674_))))
                    (if (gx#stx-null? _tl5184952681_)
                        (___match5756157562_
                         _e5179752751_
                         _hd5179652755_
                         _tl5179552758_
                         _e5180052761_
                         _hd5179952765_
                         _tl5179852768_
                         _e5180152771_
                         _e5180452775_
                         _hd5180352779_
                         _tl5180252782_
                         ___splice5744157442_
                         _target5184052668_
                         _tl5184252671_
                         _e5185152674_
                         _hd5185052678_
                         _tl5184952681_)
                        (if (gx#stx-null? _tl5180252782_)
                            (___kont5744357444_ _hd5180352779_)
                            (let () (declare (not safe)) (_g5178852002_))))))
                (if (gx#stx-null? _tl5180252782_)
                    (___kont5744357444_ _hd5180352779_)
                    (let () (declare (not safe)) (_g5178852002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5180252782_)
                                                    (___kont5744357444_
                                                     _hd5180352779_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5178852002_)))))
                                        (if (let ((__tmp57977
                                                   (gx#stx-length
                                                    _tl5180252782_)))
                                              (declare (not safe))
                                              (##fx>= __tmp57977 '1))
                                            (let ((___splice5744157442_
                                                   (gx#syntax-split-splice
                                                    _tl5180252782_
                                                    '1)))
                                              (let ((_tl5184252671_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5744157442_
                                                        '1)))
                                                    (_target5184052668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5744157442_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5184252671_)
                                                    (let ((_e5185152674_
                                                           (gx#syntax-e
                                                            _tl5184252671_)))
                                                      (let ((_tl5184952681_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5185152674_)))
                    (_hd5185052678_
                     (let () (declare (not safe)) (##car _e5185152674_))))
                (if (gx#stx-null? _tl5184952681_)
                    (___match5756157562_
                     _e5179752751_
                     _hd5179652755_
                     _tl5179552758_
                     _e5180052761_
                     _hd5179952765_
                     _tl5179852768_
                     _e5180152771_
                     _e5180452775_
                     _hd5180352779_
                     _tl5180252782_
                     ___splice5744157442_
                     _target5184052668_
                     _tl5184252671_
                     _e5185152674_
                     _hd5185052678_
                     _tl5184952681_)
                    (if (gx#stx-null? _tl5180252782_)
                        (___kont5744357444_ _hd5180352779_)
                        (let () (declare (not safe)) (_g5178852002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5180252782_)
                                                        (___kont5744357444_
                                                         _hd5180352779_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5178852002_))))))
                                            (if (gx#stx-null? _tl5180252782_)
                                                (___kont5744357444_
                                                 _hd5180352779_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5178852002_)))))))
                                (if (let ((__tmp57978
                                           (gx#stx-length _tl5180252782_)))
                                      (declare (not safe))
                                      (##fx>= __tmp57978 '1))
                                    (let ((___splice5744157442_
                                           (gx#syntax-split-splice
                                            _tl5180252782_
                                            '1)))
                                      (let ((_tl5184252671_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5744157442_
                                                '1)))
                                            (_target5184052668_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5744157442_
                                                '0))))
                                        (if (gx#stx-pair? _tl5184252671_)
                                            (let ((_e5185152674_
                                                   (gx#syntax-e
                                                    _tl5184252671_)))
                                              (let ((_tl5184952681_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5185152674_)))
                                                    (_hd5185052678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5185152674_))))
                                                (if (gx#stx-null?
                                                     _tl5184952681_)
                                                    (___match5756157562_
                                                     _e5179752751_
                                                     _hd5179652755_
                                                     _tl5179552758_
                                                     _e5180052761_
                                                     _hd5179952765_
                                                     _tl5179852768_
                                                     _e5180152771_
                                                     _e5180452775_
                                                     _hd5180352779_
                                                     _tl5180252782_
                                                     ___splice5744157442_
                                                     _target5184052668_
                                                     _tl5184252671_
                                                     _e5185152674_
                                                     _hd5185052678_
                                                     _tl5184952681_)
                                                    (if (gx#stx-null?
                                                         _tl5180252782_)
                                                        (___kont5744357444_
                                                         _hd5180352779_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5178852002_))))))
                                            (if (gx#stx-null? _tl5180252782_)
                                                (___kont5744357444_
                                                 _hd5180352779_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5178852002_))))))
                                    (if (gx#stx-null? _tl5180252782_)
                                        (___kont5744357444_ _hd5180352779_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5178852002_)))))))
                        (if (let ((__tmp57979 (gx#stx-length _tl5180252782_)))
                              (declare (not safe))
                              (##fx>= __tmp57979 '1))
                            (let ((___splice5744157442_
                                   (gx#syntax-split-splice _tl5180252782_ '1)))
                              (let ((_tl5184252671_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5744157442_ '1)))
                                    (_target5184052668_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5744157442_
                                        '0))))
                                (if (gx#stx-pair? _tl5184252671_)
                                    (let ((_e5185152674_
                                           (gx#syntax-e _tl5184252671_)))
                                      (let ((_tl5184952681_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5185152674_)))
                                            (_hd5185052678_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5185152674_))))
                                        (if (gx#stx-null? _tl5184952681_)
                                            (___match5756157562_
                                             _e5179752751_
                                             _hd5179652755_
                                             _tl5179552758_
                                             _e5180052761_
                                             _hd5179952765_
                                             _tl5179852768_
                                             _e5180152771_
                                             _e5180452775_
                                             _hd5180352779_
                                             _tl5180252782_
                                             ___splice5744157442_
                                             _target5184052668_
                                             _tl5184252671_
                                             _e5185152674_
                                             _hd5185052678_
                                             _tl5184952681_)
                                            (if (gx#stx-null? _tl5180252782_)
                                                (___kont5744357444_
                                                 _hd5180352779_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5178852002_))))))
                                    (if (gx#stx-null? _tl5180252782_)
                                        (___kont5744357444_ _hd5180352779_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5178852002_))))))
                            (if (gx#stx-null? _tl5180252782_)
                                (___kont5744357444_ _hd5180352779_)
                                (let ()
                                  (declare (not safe))
                                  (_g5178852002_)))))))
                (if (let ((__tmp57980 (gx#stx-length _tl5180252782_)))
                      (declare (not safe))
                      (##fx>= __tmp57980 '1))
                    (let ((___splice5744157442_
                           (gx#syntax-split-splice _tl5180252782_ '1)))
                      (let ((_tl5184252671_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5744157442_ '1)))
                            (_target5184052668_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5744157442_ '0))))
                        (if (gx#stx-pair? _tl5184252671_)
                            (let ((_e5185152674_ (gx#syntax-e _tl5184252671_)))
                              (let ((_tl5184952681_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5185152674_)))
                                    (_hd5185052678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5185152674_))))
                                (if (gx#stx-null? _tl5184952681_)
                                    (___match5756157562_
                                     _e5179752751_
                                     _hd5179652755_
                                     _tl5179552758_
                                     _e5180052761_
                                     _hd5179952765_
                                     _tl5179852768_
                                     _e5180152771_
                                     _e5180452775_
                                     _hd5180352779_
                                     _tl5180252782_
                                     ___splice5744157442_
                                     _target5184052668_
                                     _tl5184252671_
                                     _e5185152674_
                                     _hd5185052678_
                                     _tl5184952681_)
                                    (if (gx#stx-null? _tl5180252782_)
                                        (___kont5744357444_ _hd5180352779_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5178852002_))))))
                            (if (gx#stx-null? _tl5180252782_)
                                (___kont5744357444_ _hd5180352779_)
                                (let ()
                                  (declare (not safe))
                                  (_g5178852002_))))))
                    (if (gx#stx-null? _tl5180252782_)
                        (___kont5744357444_ _hd5180352779_)
                        (let () (declare (not safe)) (_g5178852002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5180252782_)
                                                        (___kont5744357444_
                                                         _hd5180352779_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5178852002_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5178852002_)))
                                        (if (equal? _e5180152771_ '2)
                                            (if (gx#stx-pair? _tl5179852768_)
                                                (let ((_e5187852474_
                                                       (gx#syntax-e
                                                        _tl5179852768_)))
                                                  (let ((_tl5187652481_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5187852474_)))
                                                        (_hd5187752478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5187852474_))))
                                                    (if (gx#stx-pair?
                                                         _tl5187652481_)
                                                        (let ((_e5188152484_
                                                               (gx#syntax-e
                                                                _tl5187652481_)))
                                                          (let ((_tl5187952491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5188152484_)))
                        (_hd5188052488_
                         (let () (declare (not safe)) (##car _e5188152484_))))
                    (if (gx#stx-pair? _hd5188052488_)
                        (let ((_e5188452494_ (gx#syntax-e _hd5188052488_)))
                          (let ((_tl5188252501_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5188452494_)))
                                (_hd5188352498_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5188452494_))))
                            (if (gx#stx-pair? _hd5188352498_)
                                (let ((_e5188752504_
                                       (gx#syntax-e _hd5188352498_)))
                                  (let ((_tl5188552511_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5188752504_)))
                                        (_hd5188652508_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5188752504_))))
                                    (if (gx#identifier? _hd5188652508_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57981_|
                                             _hd5188652508_)
                                            (if (gx#stx-pair? _tl5188552511_)
                                                (let ((_e5189052514_
                                                       (gx#syntax-e
                                                        _tl5188552511_)))
                                                  (let ((_tl5188852521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5189052514_)))
                                                        (_hd5188952518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5189052514_))))
                                                    (if (gx#stx-null?
                                                         _tl5188852521_)
                                                        (if (gx#stx-pair?
                                                             _tl5188252501_)
                                                            (let ((_e5189352524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5188252501_)))
                      (let ((_tl5189152531_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5189352524_)))
                            (_hd5189252528_
                             (let ()
                               (declare (not safe))
                               (##car _e5189352524_))))
                        (___kont5744557446_
                         _tl5187952491_
                         _tl5189152531_
                         _hd5189252528_
                         _hd5188952518_
                         _hd5187752478_
                         _hd5179652755_)))
                    (___kont5744757448_
                     _tl5187952491_
                     _tl5188252501_
                     _hd5188352498_
                     _hd5187752478_
                     _hd5179652755_))
                (___kont5744757448_
                 _tl5187952491_
                 _tl5188252501_
                 _hd5188352498_
                 _hd5187752478_
                 _hd5179652755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5744757448_
                                                 _tl5187952491_
                                                 _tl5188252501_
                                                 _hd5188352498_
                                                 _hd5187752478_
                                                 _hd5179652755_))
                                            (___kont5744757448_
                                             _tl5187952491_
                                             _tl5188252501_
                                             _hd5188352498_
                                             _hd5187752478_
                                             _hd5179652755_))
                                        (___kont5744757448_
                                         _tl5187952491_
                                         _tl5188252501_
                                         _hd5188352498_
                                         _hd5187752478_
                                         _hd5179652755_))))
                                (___kont5744757448_
                                 _tl5187952491_
                                 _tl5188252501_
                                 _hd5188352498_
                                 _hd5187752478_
                                 _hd5179652755_))))
                        (if (gx#stx-null? _hd5188052488_)
                            (___kont5744957450_
                             _tl5187952491_
                             _hd5187752478_
                             _hd5179652755_)
                            (let () (declare (not safe)) (_g5178852002_))))))
                (let () (declare (not safe)) (_g5178852002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5178852002_)))
                                            (if (equal? _e5180152771_ '3)
                                                (if (gx#stx-pair?
                                                     _tl5179852768_)
                                                    (let ((_e5194552223_
                                                           (gx#syntax-e
                                                            _tl5179852768_)))
                                                      (let ((_tl5194352230_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5194552223_)))
                    (_hd5194452227_
                     (let () (declare (not safe)) (##car _e5194552223_))))
                (if (gx#stx-pair? _tl5194352230_)
                    (let ((_e5194852233_ (gx#syntax-e _tl5194352230_)))
                      (let ((_tl5194652240_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5194852233_)))
                            (_hd5194752237_
                             (let ()
                               (declare (not safe))
                               (##car _e5194852233_))))
                        (if (gx#stx-pair? _hd5194752237_)
                            (let ((_e5195152243_ (gx#syntax-e _hd5194752237_)))
                              (let ((_tl5194952250_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5195152243_)))
                                    (_hd5195052247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5195152243_))))
                                (___kont5745157452_
                                 _tl5194652240_
                                 _tl5194952250_
                                 _hd5195052247_
                                 _hd5194452227_
                                 _hd5179652755_)))
                            (if (gx#stx-pair/null? _hd5194452227_)
                                (let ((___splice5745557456_
                                       (gx#syntax-split-splice
                                        _hd5194452227_
                                        '0)))
                                  (let ((_tl5197052046_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5745557456_
                                            '1)))
                                        (_target5196852043_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5745557456_
                                            '0))))
                                    (if (gx#stx-null? _tl5197052046_)
                                        (___match5778357784_
                                         _e5179752751_
                                         _hd5179652755_
                                         _tl5179552758_
                                         _e5180052761_
                                         _hd5179952765_
                                         _tl5179852768_
                                         _e5180152771_
                                         _e5194552223_
                                         _hd5194452227_
                                         _tl5194352230_
                                         ___splice5745557456_
                                         _target5196852043_
                                         _tl5197052046_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5178852002_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5178852002_))))))
                    (if (gx#stx-pair/null? _hd5194452227_)
                        (let ((___splice5745557456_
                               (gx#syntax-split-splice _hd5194452227_ '0)))
                          (let ((_tl5197052046_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5745557456_ '1)))
                                (_target5196852043_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5745557456_ '0))))
                            (if (gx#stx-null? _tl5197052046_)
                                (___match5778357784_
                                 _e5179752751_
                                 _hd5179652755_
                                 _tl5179552758_
                                 _e5180052761_
                                 _hd5179952765_
                                 _tl5179852768_
                                 _e5180152771_
                                 _e5194552223_
                                 _hd5194452227_
                                 _tl5194352230_
                                 ___splice5745557456_
                                 _target5196852043_
                                 _tl5197052046_)
                                (let ()
                                  (declare (not safe))
                                  (_g5178852002_)))))
                        (let () (declare (not safe)) (_g5178852002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5178852002_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5178852002_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5178852002_)))))
                          (let () (declare (not safe)) (_g5178852002_)))))
                  (let () (declare (not safe)) (_g5178852002_))))))))))
