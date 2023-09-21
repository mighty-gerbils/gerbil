(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g42354_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42355_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42359_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42360_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42361_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42363_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42364_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42365_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42366_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42367_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42368_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42369_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42370_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42371_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42372_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42435_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42457_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42460_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42461_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42467_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42468_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42469_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42470_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42471_|
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
      (lambda _$args29963_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args29963_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx29960_)
        (if (gx#identifier? _stx29960_)
            (let ((__tmp42353 (gx#syntax-local-value _stx29960_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp42353))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28266_ _match-stx28268_)
        (letrec ((_parse128270_
                  (lambda (_hd28623_)
                    (let* ((___stx3953539536_ _hd28623_)
                           (_g2864928791_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3953539536_))))
                      (let ((___kont3953839539_
                             (lambda (_L29723_ _L29725_)
                               (let* ((___stx3945539456_ _L29723_)
                                      (_g2974229775_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3945539456_))))
                                 (let ((___kont3945839459_
                                        (lambda ()
                                          (cons '?: (cons _L29725_ '()))))
                                       (___kont3946039461_
                                        (lambda (_L29916_)
                                          (cons '?:
                                                (cons _L29725_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse128270_
                                                               _L29916_))
                                                            '())))))
                                       (___kont3946239463_
                                        (lambda (_L29886_)
                                          (cons '?:
                                                (cons _L29725_
                                                      (cons '=>:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (_parse128270_ _L29886_))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3946439465_
                                        (lambda (_L29837_ _L29839_)
                                          (cons '?:
                                                (cons _L29725_
                                                      (cons '::
                                                            (cons _L29839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (let ()
                                        (declare (not safe))
                                        (_parse128270_ _L29837_))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3946639467_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28277_ _hd28623_)))))
                                   (let ((_g2973829927_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3945539456_)
                                                (let ((_e2974729906_
                                                       (gx#syntax-e
                                                        ___stx3945539456_)))
                                                  (let ((_tl2974529913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2974729906_)))
                                                        (_hd2974629910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2974729906_))))
                                                    (if (gx#stx-null?
                                                         _tl2974529913_)
                                                        (___kont3946039461_
                                                         _hd2974629910_)
                                                        (if (gx#identifier?
                                                             _hd2974629910_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42355_|
                         _hd2974629910_)
                        (if (gx#stx-pair? _tl2974529913_)
                            (let ((_e2975429876_ (gx#syntax-e _tl2974529913_)))
                              (let ((_tl2975229883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2975429876_)))
                                    (_hd2975329880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2975429876_))))
                                (if (gx#stx-null? _tl2975229883_)
                                    (___kont3946239463_ _hd2975329880_)
                                    (___kont3946639467_))))
                            (___kont3946639467_))
                        (___kont3946639467_))
                    (if (gx#stx-datum? _hd2974629910_)
                        (let ((_e2976029803_ (gx#stx-e _hd2974629910_)))
                          (if (equal? _e2976029803_ '::)
                              (if (gx#stx-pair? _tl2974529913_)
                                  (let ((_e2976329807_
                                         (gx#syntax-e _tl2974529913_)))
                                    (let ((_tl2976129814_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2976329807_)))
                                          (_hd2976229811_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2976329807_))))
                                      (if (gx#stx-pair? _tl2976129814_)
                                          (let ((_e2976629817_
                                                 (gx#syntax-e _tl2976129814_)))
                                            (let ((_tl2976429824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2976629817_)))
                                                  (_hd2976529821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2976629817_))))
                                              (if (gx#identifier?
                                                   _hd2976529821_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42354_|
                                                       _hd2976529821_)
                                                      (if (gx#stx-pair?
                                                           _tl2976429824_)
                                                          (let ((_e2976929827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2976429824_)))
                    (let ((_tl2976729834_
                           (let () (declare (not safe)) (##cdr _e2976929827_)))
                          (_hd2976829831_
                           (let ()
                             (declare (not safe))
                             (##car _e2976929827_))))
                      (if (gx#stx-null? _tl2976729834_)
                          (___kont3946439465_ _hd2976829831_ _hd2976229811_)
                          (___kont3946639467_))))
                  (___kont3946639467_))
              (___kont3946639467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3946639467_))))
                                          (___kont3946639467_))))
                                  (___kont3946639467_))
                              (___kont3946639467_)))
                        (___kont3946639467_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3946639467_)))))
                                     (if (gx#stx-null? ___stx3945539456_)
                                         (___kont3945839459_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2973829927_))))))))
                            (___kont3954039541_
                             (lambda (_L29628_)
                               (let* ((___stx3943739438_ _L29628_)
                                      (_g2964029651_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3943739438_))))
                                 (let ((___kont3944039441_
                                        (lambda (_L29679_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128270_ _L29679_))))
                                       (___kont3944239443_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128270_
                                                 _L29628_)))))
                                   (if (gx#stx-pair? ___stx3943739438_)
                                       (let ((_e2964529669_
                                              (gx#syntax-e ___stx3943739438_)))
                                         (let ((_tl2964329676_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2964529669_)))
                                               (_hd2964429673_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2964529669_))))
                                           (if (gx#stx-null? _tl2964329676_)
                                               (___kont3944039441_
                                                _hd2964429673_)
                                               (___kont3944239443_))))
                                       (___kont3944239443_))))))
                            (___kont3954239543_
                             (lambda (_L29543_)
                               (let* ((___stx3941939420_ _L29543_)
                                      (_g2955529566_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3941939420_))))
                                 (let ((___kont3942239423_
                                        (lambda (_L29594_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128270_ _L29594_))))
                                       (___kont3942439425_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128270_
                                                 _L29543_)))))
                                   (if (gx#stx-pair? ___stx3941939420_)
                                       (let ((_e2956029584_
                                              (gx#syntax-e ___stx3941939420_)))
                                         (let ((_tl2955829591_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2956029584_)))
                                               (_hd2955929588_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2956029584_))))
                                           (if (gx#stx-null? _tl2955829591_)
                                               (___kont3942239423_
                                                _hd2955929588_)
                                               (___kont3942439425_))))
                                       (___kont3942439425_))))))
                            (___kont3954439545_
                             (lambda (_L29513_)
                               (cons 'not:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128270_ _L29513_))
                                           '()))))
                            (___kont3954639547_
                             (lambda (_L29469_ _L29471_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128270_ _L29471_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128270_ _L29469_))
                                                 '())))))
                            (___kont3954839549_
                             (lambda (_L29413_ _L29415_ _L29416_)
                               (if (gx#stx-null? _L29413_)
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128270_ _L29416_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_parse128270_
                                                        _L29415_))
                                                     '())))
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128270_ _L29416_))
                                               (cons (let ((__tmp42356
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons*)
                          (cons _L29415_ _L29413_))))
               (declare (not safe))
               (_parse128270_ __tmp42356))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3955039551_
                             (lambda (_L29365_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28272_ _L29365_))))
                            (___kont3955239553_
                             (lambda (_L29335_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128270_ _L29335_))
                                           '()))))
                            (___kont3955439555_
                             (lambda (_L29298_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128270_ _L29298_))
                                           '()))))
                            (___kont3955639557_
                             (lambda (_L29274_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128270_ _L29274_))))
                            (___kont3955839559_
                             (lambda (_L29236_)
                               (cons 'values:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28273_ _L29236_))
                                           '()))))
                            (___kont3956039561_
                             (lambda (_L29208_)
                               (cons 'vector:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28273_ _L29208_))
                                           '()))))
                            (___kont3956239563_
                             (lambda (_L29169_)
                               (cons 'vector:
                                     (cons (let ((__tmp42357
                                                  (foldr (lambda (_g2918229185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2918329188_)
                   (cons _g2918229185_ _g2918329188_))
                 '()
                 _L29169_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_parse-vector28273_ __tmp42357))
                                           '()))))
                            (___kont3956639567_
                             (lambda (_L29115_ _L29117_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29117_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-vector28273_
                                                    _L29115_))
                                                 '())))))
                            (___kont3956839569_
                             (lambda (_L29085_ _L29087_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29087_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-class-body28275_
                                                    _L29085_))
                                                 '())))))
                            (___kont3957039571_
                             (lambda (_L29045_ _L29047_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L29047_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L29045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont3957239573_
                             (lambda (_L29005_)
                               (cons 'datum: (cons (gx#stx-e _L29005_) '()))))
                            (___kont3957439575_
                             (lambda (_L28965_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28276_ _L28965_))))
                            (___kont3957639577_
                             (lambda (_L28921_ _L28923_)
                               (cons 'apply:
                                     (cons _L28923_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128270_ _L28921_))
                                                 '())))))
                            (___kont3957839579_
                             (lambda (_L28869_)
                               (let ((__tmp42358
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L28869_)
                                       (gx#stx-wrap-source
                                        (cons 'match: _hd28623_)
                                        (let ((_$e28880_
                                               (gx#stx-source _hd28623_)))
                                          (if _$e28880_
                                              _$e28880_
                                              (gx#stx-source _stx28266_)))))))
                                 (declare (not safe))
                                 (_parse128270_ __tmp42358))))
                            (___kont3958039581_
                             (lambda (_L28843_) (cons 'any: '())))
                            (___kont3958239583_
                             (lambda (_L28827_)
                               (cons 'var: (cons _L28827_ '()))))
                            (___kont3958439585_
                             (lambda (_L28809_)
                               (cons 'datum: (cons (gx#stx-e _L28809_) '()))))
                            (___kont3958639587_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28277_ _hd28623_)))))
                        (let* ((_g2864728820_
                                (lambda ()
                                  (let ((_L28809_ ___stx3953539536_))
                                    (if (gx#stx-datum? _L28809_)
                                        (___kont3958439585_ _L28809_)
                                        (___kont3958639587_)))))
                               (_g2864628836_
                                (lambda ()
                                  (let ((_L28827_ ___stx3953539536_))
                                    (if (and (gx#identifier? _L28827_)
                                             (not (gx#ellipsis? _L28827_)))
                                        (___kont3958239583_ _L28827_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2864728820_))))))
                               (_g2864528852_
                                (lambda ()
                                  (let ((_L28843_ ___stx3953539536_))
                                    (if (gx#underscore? _L28843_)
                                        (___kont3958039581_ _L28843_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2864628836_))))))
                               (___match3986239863_
                                (lambda (_e2878228859_
                                         _hd2878128863_
                                         _tl2878028866_)
                                  (let ((_L28869_ _hd2878128863_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L28869_))
                                        (___kont3957839579_ _L28869_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2864528852_))))))
                               (___match3979639797_
                                (lambda (_e2875029025_
                                         _hd2874929029_
                                         _tl2874829032_
                                         _e2875329035_
                                         _hd2875229039_
                                         _tl2875129042_)
                                  (let ((_L29045_ _hd2875229039_)
                                        (_L29047_ _hd2874929029_))
                                    (if (and (gx#identifier? _L29047_)
                                             (or (gx#free-identifier=?
                                                  _L29047_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29047_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29047_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont3957039571_ _L29045_ _L29047_)
                                        (if (gx#identifier? _hd2874929029_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42360_|
                                                 _hd2874929029_)
                                                (___kont3957239573_
                                                 _hd2875229039_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g42359_|
                                                     _hd2874929029_)
                                                    (___kont3957439575_
                                                     _hd2875229039_)
                                                    (___match3986239863_
                                                     _e2875029025_
                                                     _hd2874929029_
                                                     _tl2874829032_)))
                                            (___match3986239863_
                                             _e2875029025_
                                             _hd2874929029_
                                             _tl2874829032_))))))
                               (___match3978239783_
                                (lambda (_e2874529075_
                                         _hd2874429079_
                                         _tl2874329082_)
                                  (let ((_L29085_ _tl2874329082_)
                                        (_L29087_ _hd2874429079_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                           _L29087_))
                                        (___kont3956839569_ _L29085_ _L29087_)
                                        (if (gx#stx-pair? _tl2874329082_)
                                            (let ((_e2875329035_
                                                   (gx#syntax-e
                                                    _tl2874329082_)))
                                              (let ((_tl2875129042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2875329035_)))
                                                    (_hd2875229039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2875329035_))))
                                                (if (gx#stx-null?
                                                     _tl2875129042_)
                                                    (___match3979639797_
                                                     _e2874529075_
                                                     _hd2874429079_
                                                     _tl2874329082_
                                                     _e2875329035_
                                                     _hd2875229039_
                                                     _tl2875129042_)
                                                    (if (gx#identifier?
                                                         _hd2874429079_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g42360_|
                                                             _hd2874429079_)
                                                            (___match3986239863_
                                                             _e2874529075_
                                                             _hd2874429079_
                                                             _tl2874329082_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42359_|
                         _hd2874429079_)
                        (___match3986239863_
                         _e2874529075_
                         _hd2874429079_
                         _tl2874329082_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42361_|
                             _hd2874429079_)
                            (if (gx#stx-pair? _tl2875129042_)
                                (let ((_e2877828911_
                                       (gx#syntax-e _tl2875129042_)))
                                  (let ((_tl2877628918_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2877828911_)))
                                        (_hd2877728915_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2877828911_))))
                                    (if (gx#stx-null? _tl2877628918_)
                                        (___kont3957639577_
                                         _hd2877728915_
                                         _hd2875229039_)
                                        (___match3986239863_
                                         _e2874529075_
                                         _hd2874429079_
                                         _tl2874329082_))))
                                (___match3986239863_
                                 _e2874529075_
                                 _hd2874429079_
                                 _tl2874329082_))
                            (___match3986239863_
                             _e2874529075_
                             _hd2874429079_
                             _tl2874329082_))))
                (___match3986239863_
                 _e2874529075_
                 _hd2874429079_
                 _tl2874329082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match3986239863_
                                             _e2874529075_
                                             _hd2874429079_
                                             _tl2874329082_))))))
                               (___match3977639777_
                                (lambda (_e2874029105_
                                         _hd2873929109_
                                         _tl2873829112_)
                                  (let ((_L29115_ _tl2873829112_)
                                        (_L29117_ _hd2873929109_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                           _L29117_))
                                        (___kont3956639567_ _L29115_ _L29117_)
                                        (___match3978239783_
                                         _e2874029105_
                                         _hd2873929109_
                                         _tl2873829112_)))))
                               (___match3977039771_
                                (lambda (_e2872629135_
                                         ___splice3956439565_
                                         _target2872729139_
                                         _tl2872929142_)
                                  (letrec ((_loop2873029145_
                                            (lambda (_hd2872829149_
                                                     _body2873429152_)
                                              (if (gx#stx-pair? _hd2872829149_)
                                                  (let ((_e2873129155_
                                                         (gx#syntax-e
                                                          _hd2872829149_)))
                                                    (let ((_lp-tl2873329162_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2873129155_)))
                                                          (_lp-hd2873229159_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2873129155_))))
                                                      (let ((__tmp42362
                                                             (cons _lp-hd2873229159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2873429152_)))
                (declare (not safe))
                (_loop2873029145_ _lp-tl2873329162_ __tmp42362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2873529165_
                                                         (reverse _body2873429152_)))
                                                    (___kont3956239563_
                                                     _body2873529165_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2873029145_
                                       _target2872729139_
                                       '())))))
                               (_g2863729191_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3953539536_)
                                      (let ((_e2872629135_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3953539536_))))
                                        (if (gx#stx-pair/null? _e2872629135_)
                                            (let ((___splice3956439565_
                                                   (gx#syntax-split-splice
                                                    _e2872629135_
                                                    '0)))
                                              (let ((_tl2872929142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3956439565_
                                                        '1)))
                                                    (_target2872729139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3956439565_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2872929142_)
                                                    (___match3977039771_
                                                     _e2872629135_
                                                     ___splice3956439565_
                                                     _target2872729139_
                                                     _tl2872929142_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2864528852_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2864528852_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2864528852_)))))
                               (_g2863329308_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3953539536_)
                                      (let ((_e2870929294_
                                             (unbox (gx#syntax-e
                                                     ___stx3953539536_))))
                                        (___kont3955439555_ _e2870929294_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2863729191_)))))
                               (___match3962439625_
                                (lambda (_e2866629533_
                                         _hd2866529537_
                                         _tl2866429540_)
                                  (let ((_L29543_ _tl2866429540_))
                                    (if (gx#stx-list? _L29543_)
                                        (___kont3954239543_ _L29543_)
                                        (___match3977639777_
                                         _e2866629533_
                                         _hd2866529537_
                                         _tl2866429540_)))))
                               (___match3961439615_
                                (lambda (_e2866229618_
                                         _hd2866129622_
                                         _tl2866029625_)
                                  (let ((_L29628_ _tl2866029625_))
                                    (if (gx#stx-list? _L29628_)
                                        (___kont3954039541_ _L29628_)
                                        (___match3977639777_
                                         _e2866229618_
                                         _hd2866129622_
                                         _tl2866029625_))))))
                          (if (gx#stx-pair? ___stx3953539536_)
                              (let ((_e2865529703_
                                     (gx#syntax-e ___stx3953539536_)))
                                (let ((_tl2865329710_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2865529703_)))
                                      (_hd2865429707_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2865529703_))))
                                  (if (gx#identifier? _hd2865429707_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42372_|
                                           _hd2865429707_)
                                          (if (gx#stx-pair? _tl2865329710_)
                                              (let ((_e2865829713_
                                                     (gx#syntax-e
                                                      _tl2865329710_)))
                                                (let ((_tl2865629720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2865829713_)))
                                                      (_hd2865729717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2865829713_))))
                                                  (___kont3953839539_
                                                   _tl2865629720_
                                                   _hd2865729717_)))
                                              (___match3977639777_
                                               _e2865529703_
                                               _hd2865429707_
                                               _tl2865329710_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42371_|
                                               _hd2865429707_)
                                              (___match3961439615_
                                               _e2865529703_
                                               _hd2865429707_
                                               _tl2865329710_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42370_|
                                                   _hd2865429707_)
                                                  (___match3962439625_
                                                   _e2865529703_
                                                   _hd2865429707_
                                                   _tl2865329710_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42369_|
                                                       _hd2865429707_)
                                                      (if (gx#stx-pair?
                                                           _tl2865329710_)
                                                          (let ((_e2867329503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2865329710_)))
                    (let ((_tl2867129510_
                           (let () (declare (not safe)) (##cdr _e2867329503_)))
                          (_hd2867229507_
                           (let ()
                             (declare (not safe))
                             (##car _e2867329503_))))
                      (if (gx#stx-null? _tl2867129510_)
                          (___kont3954439545_ _hd2867229507_)
                          (___match3977639777_
                           _e2865529703_
                           _hd2865429707_
                           _tl2865329710_))))
                  (___match3977639777_
                   _e2865529703_
                   _hd2865429707_
                   _tl2865329710_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g42368_|
                   _hd2865429707_)
                  (if (gx#stx-pair? _tl2865329710_)
                      (let ((_e2868129449_ (gx#syntax-e _tl2865329710_)))
                        (let ((_tl2867929456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2868129449_)))
                              (_hd2868029453_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2868129449_))))
                          (if (gx#stx-pair? _tl2867929456_)
                              (let ((_e2868429459_
                                     (gx#syntax-e _tl2867929456_)))
                                (let ((_tl2868229466_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2868429459_)))
                                      (_hd2868329463_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2868429459_))))
                                  (if (gx#stx-null? _tl2868229466_)
                                      (___kont3954639547_
                                       _hd2868329463_
                                       _hd2868029453_)
                                      (___match3977639777_
                                       _e2865529703_
                                       _hd2865429707_
                                       _tl2865329710_))))
                              (___match3977639777_
                               _e2865529703_
                               _hd2865429707_
                               _tl2865329710_))))
                      (___match3977639777_
                       _e2865529703_
                       _hd2865429707_
                       _tl2865329710_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g42367_|
                       _hd2865429707_)
                      (if (gx#stx-pair? _tl2865329710_)
                          (let ((_e2869329393_ (gx#syntax-e _tl2865329710_)))
                            (let ((_tl2869129400_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2869329393_)))
                                  (_hd2869229397_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2869329393_))))
                              (if (gx#stx-pair? _tl2869129400_)
                                  (let ((_e2869629403_
                                         (gx#syntax-e _tl2869129400_)))
                                    (let ((_tl2869429410_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2869629403_)))
                                          (_hd2869529407_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2869629403_))))
                                      (___kont3954839549_
                                       _tl2869429410_
                                       _hd2869529407_
                                       _hd2869229397_)))
                                  (___match3977639777_
                                   _e2865529703_
                                   _hd2865429707_
                                   _tl2865329710_))))
                          (___match3977639777_
                           _e2865529703_
                           _hd2865429707_
                           _tl2865329710_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g42366_|
                           _hd2865429707_)
                          (___kont3955039551_ _tl2865329710_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42365_|
                               _hd2865429707_)
                              (if (gx#stx-pair? _tl2865329710_)
                                  (let ((_e2870729325_
                                         (gx#syntax-e _tl2865329710_)))
                                    (let ((_tl2870529332_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2870729325_)))
                                          (_hd2870629329_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2870729325_))))
                                      (if (gx#stx-null? _tl2870529332_)
                                          (___kont3955239553_ _hd2870629329_)
                                          (___match3977639777_
                                           _e2865529703_
                                           _hd2865429707_
                                           _tl2865329710_))))
                                  (___match3977639777_
                                   _e2865529703_
                                   _hd2865429707_
                                   _tl2865329710_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42364_|
                                   _hd2865429707_)
                                  (if (gx#stx-pair? _tl2865329710_)
                                      (let ((_e2871629264_
                                             (gx#syntax-e _tl2865329710_)))
                                        (let ((_tl2871429271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2871629264_)))
                                              (_hd2871529268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2871629264_))))
                                          (if (gx#stx-null? _tl2871429271_)
                                              (___kont3955639557_
                                               _hd2871529268_)
                                              (___kont3955839559_
                                               _tl2865329710_))))
                                      (___kont3955839559_ _tl2865329710_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42363_|
                                       _hd2865429707_)
                                      (___kont3956039561_ _tl2865329710_)
                                      (___match3977639777_
                                       _e2865529703_
                                       _hd2865429707_
                                       _tl2865329710_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match3977639777_
                                       _e2865529703_
                                       _hd2865429707_
                                       _tl2865329710_))))
                              (let ()
                                (declare (not safe))
                                (_g2863329308_))))))))
                 (_parse-list28272_
                  (lambda (_body28452_)
                    (let* ((___stx3986539866_ _body28452_)
                           (_g2845828487_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3986539866_))))
                      (let ((___kont3986839869_
                             (lambda (_L28605_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128270_ _L28605_))))
                            (___kont3987039871_
                             (lambda (_L28557_ _L28559_ _L28560_)
                               (cons 'splice:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128270_ _L28560_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28272_
                                                    _L28557_))
                                                 '())))))
                            (___kont3987239873_
                             (lambda (_L28515_ _L28517_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128270_ _L28517_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28272_
                                                    _L28515_))
                                                 '())))))
                            (___kont3987439875_
                             (lambda ()
                               (if (gx#stx-null? _body28452_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28452_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128270_ _body28452_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28277_ _body28452_)))))))
                        (let* ((___match3991439915_
                                (lambda (_e2848128505_
                                         _hd2848028509_
                                         _tl2847928512_)
                                  (let ((_L28515_ _tl2847928512_)
                                        (_L28517_ _hd2848028509_))
                                    (if (not (gx#ellipsis? _L28517_))
                                        (___kont3987239873_ _L28515_ _L28517_)
                                        (___kont3987439875_)))))
                               (___match3990839909_
                                (lambda (_e2847328537_
                                         _hd2847228541_
                                         _tl2847128544_
                                         _e2847628547_
                                         _hd2847528551_
                                         _tl2847428554_)
                                  (let ((_L28557_ _tl2847428554_)
                                        (_L28559_ _hd2847528551_)
                                        (_L28560_ _hd2847228541_))
                                    (if (gx#ellipsis? _L28559_)
                                        (___kont3987039871_
                                         _L28557_
                                         _L28559_
                                         _L28560_)
                                        (___match3991439915_
                                         _e2847328537_
                                         _hd2847228541_
                                         _tl2847128544_))))))
                          (if (gx#stx-pair? ___stx3986539866_)
                              (let ((_e2846328581_
                                     (gx#syntax-e ___stx3986539866_)))
                                (let ((_tl2846128588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2846328581_)))
                                      (_hd2846228585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2846328581_))))
                                  (if (gx#stx-datum? _hd2846228585_)
                                      (let ((_e2846428591_
                                             (gx#stx-e _hd2846228585_)))
                                        (if (equal? _e2846428591_ '::)
                                            (if (gx#stx-pair? _tl2846128588_)
                                                (let ((_e2846728595_
                                                       (gx#syntax-e
                                                        _tl2846128588_)))
                                                  (let ((_tl2846528602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2846728595_)))
                                                        (_hd2846628599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2846728595_))))
                                                    (if (gx#stx-null?
                                                         _tl2846528602_)
                                                        (___kont3986839869_
                                                         _hd2846628599_)
                                                        (___match3990839909_
                                                         _e2846328581_
                                                         _hd2846228585_
                                                         _tl2846128588_
                                                         _e2846728595_
                                                         _hd2846628599_
                                                         _tl2846528602_))))
                                                (___match3991439915_
                                                 _e2846328581_
                                                 _hd2846228585_
                                                 _tl2846128588_))
                                            (if (gx#stx-pair? _tl2846128588_)
                                                (let ((_e2847628547_
                                                       (gx#syntax-e
                                                        _tl2846128588_)))
                                                  (let ((_tl2847428554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2847628547_)))
                                                        (_hd2847528551_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2847628547_))))
                                                    (___match3990839909_
                                                     _e2846328581_
                                                     _hd2846228585_
                                                     _tl2846128588_
                                                     _e2847628547_
                                                     _hd2847528551_
                                                     _tl2847428554_)))
                                                (___match3991439915_
                                                 _e2846328581_
                                                 _hd2846228585_
                                                 _tl2846128588_))))
                                      (if (gx#stx-pair? _tl2846128588_)
                                          (let ((_e2847628547_
                                                 (gx#syntax-e _tl2846128588_)))
                                            (let ((_tl2847428554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2847628547_)))
                                                  (_hd2847528551_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2847628547_))))
                                              (___match3990839909_
                                               _e2846328581_
                                               _hd2846228585_
                                               _tl2846128588_
                                               _e2847628547_
                                               _hd2847528551_
                                               _tl2847428554_)))
                                          (___match3991439915_
                                           _e2846328581_
                                           _hd2846228585_
                                           _tl2846128588_)))))
                              (___kont3987439875_)))))))
                 (_parse-vector28273_
                  (lambda (_body28449_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28274_ _body28449_))
                        (cons 'simple:
                              (cons (gx#stx-map _parse128270_ _body28449_)
                                    '()))
                        (cons 'list:
                              (cons (let ()
                                      (declare (not safe))
                                      (_parse-list28272_ _body28449_))
                                    '())))))
                 (_simple-vector?28274_
                  (lambda (_body28386_)
                    (let* ((___stx3991739918_ _body28386_)
                           (_g2839028402_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3991739918_))))
                      (let ((___kont3992039921_
                             (lambda (_L28430_ _L28432_)
                               (if (not (gx#ellipsis? _L28432_))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28274_ _L28430_))
                                   '#f)))
                            (___kont3992239923_
                             (lambda () (gx#stx-null? _body28386_))))
                        (if (gx#stx-pair? ___stx3991739918_)
                            (let ((_e2839628420_
                                   (gx#syntax-e ___stx3991739918_)))
                              (let ((_tl2839428427_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2839628420_)))
                                    (_hd2839528424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2839628420_))))
                                (___kont3992039921_
                                 _tl2839428427_
                                 _hd2839528424_)))
                            (___kont3992239923_))))))
                 (_parse-class-body28275_
                  (lambda (_body28295_)
                    (let _recur28298_ ((_rest28301_ _body28295_))
                      (let* ((___stx3993339934_ _rest28301_)
                             (_g2830528321_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3993339934_))))
                        (let ((___kont3993639937_
                               (lambda (_L28359_ _L28361_ _L28362_)
                                 (cons* _L28362_
                                        (let ()
                                          (declare (not safe))
                                          (_parse128270_ _L28361_))
                                        (let ()
                                          (declare (not safe))
                                          (_recur28298_ _L28359_)))))
                              (___kont3993839939_
                               (lambda ()
                                 (if (gx#stx-null? _rest28301_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28277_ _rest28301_))))))
                          (let ((___match3995239953_
                                 (lambda (_e2831228339_
                                          _hd2831128343_
                                          _tl2831028346_
                                          _e2831528349_
                                          _hd2831428353_
                                          _tl2831328356_)
                                   (let ((_L28359_ _tl2831328356_)
                                         (_L28361_ _hd2831428353_)
                                         (_L28362_ _hd2831128343_))
                                     (if (gx#stx-keyword? _L28362_)
                                         (___kont3993639937_
                                          _L28359_
                                          _L28361_
                                          _L28362_)
                                         (___kont3993839939_))))))
                            (if (gx#stx-pair? ___stx3993339934_)
                                (let ((_e2831228339_
                                       (gx#syntax-e ___stx3993339934_)))
                                  (let ((_tl2831028346_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2831228339_)))
                                        (_hd2831128343_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2831228339_))))
                                    (if (gx#stx-pair? _tl2831028346_)
                                        (let ((_e2831528349_
                                               (gx#syntax-e _tl2831028346_)))
                                          (let ((_tl2831328356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2831528349_)))
                                                (_hd2831428353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2831528349_))))
                                            (___match3995239953_
                                             _e2831228339_
                                             _hd2831128343_
                                             _tl2831028346_
                                             _e2831528349_
                                             _hd2831428353_
                                             _tl2831328356_)))
                                        (___kont3993839939_))))
                                (___kont3993839939_))))))))
                 (_parse-qq28276_
                  (lambda (_hd28282_)
                    (let ((_g2828428291_
                           (lambda (_g2828528287_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2828528287_))))
                      (declare (not safe))
                      (_g2828428291_ _hd28282_))))
                 (_parse-error28277_
                  (lambda (_hd28279_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28268_
                               (cons _match-stx28268_
                                     (cons _stx28266_ (cons _hd28279_ '())))
                               (cons _stx28266_ (cons _hd28279_ '())))))))
          (let () (declare (not safe)) (_parse128270_ _stx28266_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx29950_)
        (let ((_match-stx29953_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx29950_
           _match-stx29953_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g42374_
        (let ((_g42373_ (let () (declare (not safe)) (##length _g42374_))))
          (cond ((let () (declare (not safe)) (##fx= _g42373_ 1))
                 (apply (lambda (_stx29950_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx29950_)))
                        _g42374_))
                ((let () (declare (not safe)) (##fx= _g42373_ 2))
                 (apply (lambda (_stx29956_ _match-stx29958_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx29956_
                             _match-stx29958_)))
                        _g42374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g42374_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28250_)
        (call-with-current-continuation
         (lambda (_E28254_)
           (with-exception-handler
            (let ((_E!28257_ (current-exception-handler)))
              (lambda (_e28260_)
                (if (syntax-error? _e28260_)
                    (_E28254_ '#f)
                    (_E!28257_ _e28260_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28250_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree26985_)
        (letrec ((_loop26988_
                  (lambda (_ptree27275_ _vars27277_ _K27278_)
                    (let* ((___stx4005140052_ _ptree27275_)
                           (_g2729127401_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4005140052_))))
                      (let ((___kont4005440055_
                             (lambda (_L28031_)
                               (let* ((___stx3997139972_ _L28031_)
                                      (_g2804828082_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3997139972_))))
                                 (let ((___kont3997439975_
                                        (lambda (_L28231_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop26988_
                                             _L28231_
                                             _vars27277_
                                             _K27278_))))
                                       (___kont3997639977_
                                        (lambda (_L28200_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop26988_
                                             _L28200_
                                             _vars27277_
                                             _K27278_))))
                                       (___kont3997839979_
                                        (lambda (_L28148_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop26988_
                                             _L28148_
                                             _vars27277_
                                             _K27278_))))
                                       (___kont3998039981_
                                        (lambda () (_K27278_ _vars27277_))))
                                   (if (gx#stx-pair? ___stx3997139972_)
                                       (let ((_e2805328221_
                                              (gx#syntax-e ___stx3997139972_)))
                                         (let ((_tl2805128228_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2805328221_)))
                                               (_hd2805228225_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2805328221_))))
                                           (if (gx#stx-null? _tl2805128228_)
                                               (___kont3997439975_
                                                _hd2805228225_)
                                               (if (gx#stx-datum?
                                                    _hd2805228225_)
                                                   (let ((_e2805828186_
                                                          (gx#stx-e
                                                           _hd2805228225_)))
                                                     (if (equal? _e2805828186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _tl2805128228_)
                     (let ((_e2806128190_ (gx#syntax-e _tl2805128228_)))
                       (let ((_tl2805928197_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2806128190_)))
                             (_hd2806028194_
                              (let ()
                                (declare (not safe))
                                (##car _e2806128190_))))
                         (if (gx#stx-null? _tl2805928197_)
                             (___kont3997639977_ _hd2806028194_)
                             (___kont3998039981_))))
                     (___kont3998039981_))
                 (if (equal? _e2805828186_ '::)
                     (if (gx#stx-pair? _tl2805128228_)
                         (let ((_e2806928114_ (gx#syntax-e _tl2805128228_)))
                           (let ((_tl2806728121_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2806928114_)))
                                 (_hd2806828118_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2806928114_))))
                             (if (gx#stx-pair? _tl2806728121_)
                                 (let ((_e2807228124_
                                        (gx#syntax-e _tl2806728121_)))
                                   (let ((_tl2807028131_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2807228124_)))
                                         (_hd2807128128_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2807228124_))))
                                     (if (gx#stx-datum? _hd2807128128_)
                                         (let ((_e2807328134_
                                                (gx#stx-e _hd2807128128_)))
                                           (if (equal? _e2807328134_ '=>:)
                                               (if (gx#stx-pair?
                                                    _tl2807028131_)
                                                   (let ((_e2807628138_
                                                          (gx#syntax-e
                                                           _tl2807028131_)))
                                                     (let ((_tl2807428145_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2807628138_)))
                                                           (_hd2807528142_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2807628138_))))
                                                       (if (gx#stx-null?
                                                            _tl2807428145_)
                                                           (___kont3997839979_
                                                            _hd2807528142_)
                                                           (___kont3998039981_))))
                                                   (___kont3998039981_))
                                               (___kont3998039981_)))
                                         (___kont3998039981_))))
                                 (___kont3998039981_))))
                         (___kont3998039981_))
                     (___kont3998039981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3998039981_)))))
                                       (___kont3998039981_))))))
                            (___kont4005640057_
                             (lambda (_L27918_ _L27920_)
                               (let* ((___stx3995539956_ _L27918_)
                                      (_g2793627948_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3995539956_))))
                                 (let ((___kont3995839959_
                                        (lambda (_L27976_ _L27978_)
                                          (let ((__tmp42375
                                                 (lambda (_g2799027992_)
                                                   (let ((__tmp42376
                                                          (cons _L27920_
                                                                _L27976_)))
                                                     (declare (not safe))
                                                     (_loop26988_
                                                      __tmp42376
                                                      _g2799027992_
                                                      _K27278_)))))
                                            (declare (not safe))
                                            (_loop26988_
                                             _L27978_
                                             _vars27277_
                                             __tmp42375))))
                                       (___kont3996039961_
                                        (lambda () (_K27278_ _vars27277_))))
                                   (if (gx#stx-pair? ___stx3995539956_)
                                       (let ((_e2794227966_
                                              (gx#syntax-e ___stx3995539956_)))
                                         (let ((_tl2794027973_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2794227966_)))
                                               (_hd2794127970_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2794227966_))))
                                           (___kont3995839959_
                                            _tl2794027973_
                                            _hd2794127970_)))
                                       (___kont3996039961_))))))
                            (___kont4005840059_
                             (lambda (_L27887_)
                               (let ()
                                 (declare (not safe))
                                 (_loop26988_ _L27887_ _vars27277_ _K27278_))))
                            (___kont4006040061_
                             (lambda (_L27833_ _L27835_)
                               (let ((__tmp42377
                                      (lambda (_g2785027852_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop26988_
                                           _L27833_
                                           _g2785027852_
                                           _K27278_)))))
                                 (declare (not safe))
                                 (_loop26988_
                                  _L27835_
                                  _vars27277_
                                  __tmp42377))))
                            (___kont4006240063_
                             (lambda (_L27769_ _L27771_)
                               (let ((__tmp42378
                                      (lambda (_g2778627788_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop26988_
                                           _L27769_
                                           _g2778627788_
                                           _K27278_)))))
                                 (declare (not safe))
                                 (_loop26988_
                                  _L27771_
                                  _vars27277_
                                  __tmp42378))))
                            (___kont4006440065_
                             (lambda (_L27714_)
                               (let ()
                                 (declare (not safe))
                                 (_loop26988_ _L27714_ _vars27277_ _K27278_))))
                            (___kont4006640067_
                             (lambda (_L27664_ _L27666_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector26990_
                                  _L27664_
                                  _vars27277_
                                  _K27278_))))
                            (___kont4006840069_
                             (lambda (_L27621_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector26990_
                                  _L27621_
                                  _vars27277_
                                  _K27278_))))
                            (___kont4007040071_
                             (lambda (_L27564_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list26992_
                                  _L27564_
                                  _vars27277_
                                  _K27278_))))
                            (___kont4007240073_
                             (lambda (_L27505_ _L27507_)
                               (let ()
                                 (declare (not safe))
                                 (_loop26988_ _L27505_ _vars27277_ _K27278_))))
                            (___kont4007440075_
                             (lambda (_L27443_)
                               (if (find (lambda (_g2745827460_)
                                           (gx#bound-identifier=?
                                            _g2745827460_
                                            _L27443_))
                                         _vars27277_)
                                   (_K27278_ _vars27277_)
                                   (_K27278_ (cons _L27443_ _vars27277_)))))
                            (___kont4007640077_
                             (lambda () (_K27278_ _vars27277_))))
                        (let* ((___match4020840209_
                                (lambda (_e2735027644_
                                         _hd2734927648_
                                         _tl2734827651_
                                         _e2735327654_
                                         _hd2735227658_
                                         _tl2735127661_)
                                  (let ((_L27664_ _hd2735227658_)
                                        (_L27666_ _hd2734927648_))
                                    (if (or (gx#stx-eq? 'values: _L27666_)
                                            (gx#stx-eq? 'vector: _L27666_))
                                        (___kont4006640067_ _L27664_ _L27666_)
                                        (if (gx#stx-datum? _hd2734927648_)
                                            (let ((_e2735827597_
                                                   (gx#stx-e _hd2734927648_)))
                                              (if (equal? _e2735827597_
                                                          'struct:)
                                                  (___kont4007640077_)
                                                  (if (equal? _e2735827597_
                                                              'class:)
                                                      (___kont4007640077_)
                                                      (if (equal? _e2735827597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont4007640077_)
                  (if (equal? _e2735827597_ 'var:)
                      (___kont4007440075_ _hd2735227658_)
                      (___kont4007640077_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4007640077_))))))
                               (___match4010240103_
                                (lambda (_e2730527908_
                                         _hd2730427912_
                                         _tl2730327915_)
                                  (let ((_L27918_ _tl2730327915_)
                                        (_L27920_ _hd2730427912_))
                                    (if (or (gx#stx-eq? 'and: _L27920_)
                                            (gx#stx-eq? 'or: _L27920_))
                                        (___kont4005640057_ _L27918_ _L27920_)
                                        (if (gx#stx-datum? _hd2730427912_)
                                            (let ((_e2731027873_
                                                   (gx#stx-e _hd2730427912_)))
                                              (if (equal? _e2731027873_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2730327915_)
                                                      (let ((_e2731327877_
                                                             (gx#syntax-e
                                                              _tl2730327915_)))
                                                        (let ((_tl2731127884_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2731327877_)))
                      (_hd2731227881_
                       (let () (declare (not safe)) (##car _e2731327877_))))
                  (if (gx#stx-null? _tl2731127884_)
                      (___kont4005840059_ _hd2731227881_)
                      (___kont4007640077_))))
              (___kont4007640077_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _e2731027873_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2730327915_)
                                                          (let ((_e2732227813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2730327915_)))
                    (let ((_tl2732027820_
                           (let () (declare (not safe)) (##cdr _e2732227813_)))
                          (_hd2732127817_
                           (let ()
                             (declare (not safe))
                             (##car _e2732227813_))))
                      (if (gx#stx-pair? _tl2732027820_)
                          (let ((_e2732527823_ (gx#syntax-e _tl2732027820_)))
                            (let ((_tl2732327830_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2732527823_)))
                                  (_hd2732427827_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2732527823_))))
                              (if (gx#stx-null? _tl2732327830_)
                                  (___kont4006040061_
                                   _hd2732427827_
                                   _hd2732127817_)
                                  (___kont4007640077_))))
                          (if (gx#stx-null? _tl2732027820_)
                              (___match4020840209_
                               _e2730527908_
                               _hd2730427912_
                               _tl2730327915_
                               _e2732227813_
                               _hd2732127817_
                               _tl2732027820_)
                              (___kont4007640077_)))))
                  (___kont4007640077_))
              (if (equal? _e2731027873_ 'splice:)
                  (if (gx#stx-pair? _tl2730327915_)
                      (let ((_e2733427749_ (gx#syntax-e _tl2730327915_)))
                        (let ((_tl2733227756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2733427749_)))
                              (_hd2733327753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2733427749_))))
                          (if (gx#stx-pair? _tl2733227756_)
                              (let ((_e2733727759_
                                     (gx#syntax-e _tl2733227756_)))
                                (let ((_tl2733527766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2733727759_)))
                                      (_hd2733627763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2733727759_))))
                                  (if (gx#stx-null? _tl2733527766_)
                                      (___kont4006240063_
                                       _hd2733627763_
                                       _hd2733327753_)
                                      (___kont4007640077_))))
                              (if (gx#stx-null? _tl2733227756_)
                                  (___match4020840209_
                                   _e2730527908_
                                   _hd2730427912_
                                   _tl2730327915_
                                   _e2733427749_
                                   _hd2733327753_
                                   _tl2733227756_)
                                  (___kont4007640077_)))))
                      (___kont4007640077_))
                  (if (equal? _e2731027873_ 'box:)
                      (if (gx#stx-pair? _tl2730327915_)
                          (let ((_e2734527704_ (gx#syntax-e _tl2730327915_)))
                            (let ((_tl2734327711_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2734527704_)))
                                  (_hd2734427708_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2734527704_))))
                              (if (gx#stx-null? _tl2734327711_)
                                  (___kont4006440065_ _hd2734427708_)
                                  (___kont4007640077_))))
                          (___kont4007640077_))
                      (if (gx#stx-pair? _tl2730327915_)
                          (let ((_e2735327654_ (gx#syntax-e _tl2730327915_)))
                            (let ((_tl2735127661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2735327654_)))
                                  (_hd2735227658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2735327654_))))
                              (if (gx#stx-null? _tl2735127661_)
                                  (___match4020840209_
                                   _e2730527908_
                                   _hd2730427912_
                                   _tl2730327915_
                                   _e2735327654_
                                   _hd2735227658_
                                   _tl2735127661_)
                                  (if (equal? _e2731027873_ 'struct:)
                                      (if (gx#stx-pair? _tl2735127661_)
                                          (let ((_e2736427611_
                                                 (gx#syntax-e _tl2735127661_)))
                                            (let ((_tl2736227618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2736427611_)))
                                                  (_hd2736327615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2736427611_))))
                                              (if (gx#stx-null? _tl2736227618_)
                                                  (___kont4006840069_
                                                   _hd2736327615_)
                                                  (___kont4007640077_))))
                                          (___kont4007640077_))
                                      (if (equal? _e2731027873_ 'class:)
                                          (if (gx#stx-pair? _tl2735127661_)
                                              (let ((_e2737527554_
                                                     (gx#syntax-e
                                                      _tl2735127661_)))
                                                (let ((_tl2737327561_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2737527554_)))
                                                      (_hd2737427558_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2737527554_))))
                                                  (if (gx#stx-null?
                                                       _tl2737327561_)
                                                      (___kont4007040071_
                                                       _hd2737427558_)
                                                      (___kont4007640077_))))
                                              (___kont4007640077_))
                                          (if (equal? _e2731027873_ 'apply:)
                                              (if (gx#stx-pair? _tl2735127661_)
                                                  (let ((_e2738727495_
                                                         (gx#syntax-e
                                                          _tl2735127661_)))
                                                    (let ((_tl2738527502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2738727495_)))
                                                          (_hd2738627499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2738727495_))))
                                                      (if (gx#stx-null?
                                                           _tl2738527502_)
                                                          (___kont4007240073_
                                                           _hd2738627499_
                                                           _hd2735227658_)
                                                          (___kont4007640077_))))
                                                  (___kont4007640077_))
                                              (___kont4007640077_)))))))
                          (___kont4007640077_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2730327915_)
                                                (let ((_e2735327654_
                                                       (gx#syntax-e
                                                        _tl2730327915_)))
                                                  (let ((_tl2735127661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2735327654_)))
                                                        (_hd2735227658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2735327654_))))
                                                    (if (gx#stx-null?
                                                         _tl2735127661_)
                                                        (___match4020840209_
                                                         _e2730527908_
                                                         _hd2730427912_
                                                         _tl2730327915_
                                                         _e2735327654_
                                                         _hd2735227658_
                                                         _tl2735127661_)
                                                        (___kont4007640077_))))
                                                (___kont4007640077_))))))))
                          (if (gx#stx-pair? ___stx4005140052_)
                              (let ((_e2729628007_
                                     (gx#syntax-e ___stx4005140052_)))
                                (let ((_tl2729428014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2729628007_)))
                                      (_hd2729528011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2729628007_))))
                                  (if (gx#stx-datum? _hd2729528011_)
                                      (let ((_e2729728017_
                                             (gx#stx-e _hd2729528011_)))
                                        (if (equal? _e2729728017_ '?:)
                                            (if (gx#stx-pair? _tl2729428014_)
                                                (let ((_e2730028021_
                                                       (gx#syntax-e
                                                        _tl2729428014_)))
                                                  (let ((_tl2729828028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2730028021_)))
                                                        (_hd2729928025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2730028021_))))
                                                    (___kont4005440055_
                                                     _tl2729828028_)))
                                                (___match4010240103_
                                                 _e2729628007_
                                                 _hd2729528011_
                                                 _tl2729428014_))
                                            (___match4010240103_
                                             _e2729628007_
                                             _hd2729528011_
                                             _tl2729428014_)))
                                      (___match4010240103_
                                       _e2729628007_
                                       _hd2729528011_
                                       _tl2729428014_))))
                              (___kont4007640077_)))))))
                 (_loop-vector26990_
                  (lambda (_body27151_ _vars27153_ _K27154_)
                    (let* ((___stx4030940310_ _body27151_)
                           (_g2715727180_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4030940310_))))
                      (let ((___kont4031240313_
                             (lambda (_L27257_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list26991_
                                  _L27257_
                                  _vars27153_
                                  _K27154_))))
                            (___kont4031440315_
                             (lambda (_L27211_)
                               (let ()
                                 (declare (not safe))
                                 (_loop26988_
                                  _L27211_
                                  _vars27153_
                                  _K27154_)))))
                        (if (gx#stx-pair? ___stx4030940310_)
                            (let ((_e2716227233_
                                   (gx#syntax-e ___stx4030940310_)))
                              (let ((_tl2716027240_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2716227233_)))
                                    (_hd2716127237_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2716227233_))))
                                (if (gx#stx-datum? _hd2716127237_)
                                    (let ((_e2716327243_
                                           (gx#stx-e _hd2716127237_)))
                                      (if (equal? _e2716327243_ 'simple:)
                                          (if (gx#stx-pair? _tl2716027240_)
                                              (let ((_e2716627247_
                                                     (gx#syntax-e
                                                      _tl2716027240_)))
                                                (let ((_tl2716427254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2716627247_)))
                                                      (_hd2716527251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2716627247_))))
                                                  (if (gx#stx-null?
                                                       _tl2716427254_)
                                                      (___kont4031240313_
                                                       _hd2716527251_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2715727180_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2715727180_)))
                                          (if (equal? _e2716327243_ 'list:)
                                              (if (gx#stx-pair? _tl2716027240_)
                                                  (let ((_e2717427201_
                                                         (gx#syntax-e
                                                          _tl2716027240_)))
                                                    (let ((_tl2717227208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2717427201_)))
                                                          (_hd2717327205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2717427201_))))
                                                      (if (gx#stx-null?
                                                           _tl2717227208_)
                                                          (___kont4031440315_
                                                           _hd2717327205_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2715727180_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2715727180_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2715727180_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2715727180_)))))
                            (let () (declare (not safe)) (_g2715727180_)))))))
                 (_loop-list26991_
                  (lambda (_rest27081_ _vars27083_ _K27084_)
                    (let* ((___stx4035940360_ _rest27081_)
                           (_g2708727099_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4035940360_))))
                      (let ((___kont4036240363_
                             (lambda (_L27127_ _L27129_)
                               (let ((__tmp42379
                                      (lambda (_g2714127143_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list26991_
                                           _L27127_
                                           _g2714127143_
                                           _K27084_)))))
                                 (declare (not safe))
                                 (_loop26988_
                                  _L27129_
                                  _vars27083_
                                  __tmp42379))))
                            (___kont4036440365_
                             (lambda () (_K27084_ _vars27083_))))
                        (if (gx#stx-pair? ___stx4035940360_)
                            (let ((_e2709327117_
                                   (gx#syntax-e ___stx4035940360_)))
                              (let ((_tl2709127124_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2709327117_)))
                                    (_hd2709227121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2709327117_))))
                                (___kont4036240363_
                                 _tl2709127124_
                                 _hd2709227121_)))
                            (___kont4036440365_))))))
                 (_loop-class-list26992_
                  (lambda (_rest26994_ _vars26996_ _K26997_)
                    (let* ((___stx4037540376_ _rest26994_)
                           (_g2700027015_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4037540376_))))
                      (let ((___kont4037840379_
                             (lambda (_L27053_ _L27055_)
                               (let ((__tmp42380
                                      (lambda (_g2707127073_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list26992_
                                           _L27053_
                                           _g2707127073_
                                           _K26997_)))))
                                 (declare (not safe))
                                 (_loop26988_
                                  _L27055_
                                  _vars26996_
                                  __tmp42380))))
                            (___kont4038040381_
                             (lambda () (_K26997_ _vars26996_))))
                        (if (gx#stx-pair? ___stx4037540376_)
                            (let ((_e2700627033_
                                   (gx#syntax-e ___stx4037540376_)))
                              (let ((_tl2700427040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2700627033_)))
                                    (_hd2700527037_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2700627033_))))
                                (if (gx#stx-pair? _tl2700427040_)
                                    (let ((_e2700927043_
                                           (gx#syntax-e _tl2700427040_)))
                                      (let ((_tl2700727050_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2700927043_)))
                                            (_hd2700827047_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2700927043_))))
                                        (___kont4037840379_
                                         _tl2700727050_
                                         _hd2700827047_)))
                                    (___kont4038040381_))))
                            (___kont4038040381_)))))))
          (let ()
            (declare (not safe))
            (_loop26988_ _ptree26985_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23568_ _tgt23570_ _ptree23571_ _K23572_ _E23573_)
        (letrec ((_generate123575_
                  (lambda (_tgt25198_ _ptree25200_ _K25201_ _E25202_)
                    (let* ((_g2520425212_
                            (lambda (_g2520525208_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2520525208_)))
                           (_g2520326981_
                            (lambda (_g2520525216_)
                              ((lambda (_L25219_)
                                 (let ()
                                   (let* ((___stx4061140612_ _ptree25200_)
                                          (_g2524625388_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4061140612_))))
                                     (let ((___kont4061440615_
                                            (lambda (_L26696_ _L26698_)
                                              (let* ((___stx4052940530_
                                                      _L26696_)
                                                     (_g2671526750_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4052940530_))))
                                                (let ((___kont4053240533_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L26698_ (cons _L25219_ '())))
                             (cons _K25201_ (cons _E25202_ '()))))))
              (___kont4053440535_
               (lambda (_L26951_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L26698_ (cons _L25219_ '())))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate123575_
                                      _tgt25198_
                                      _L26951_
                                      _K25201_
                                      _E25202_))
                                   (cons _E25202_ '()))))))
              (___kont4053640537_
               (lambda (_L26889_)
                 (let* ((_g2690326911_
                         (lambda (_g2690426907_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2690426907_)))
                        (_g2690226930_
                         (lambda (_g2690426915_)
                           ((lambda (_L26918_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L26918_
                                                        (cons (cons _L26698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25219_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L26918_
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (_generate123575_
                               _L26918_
                               _L26889_
                               _K25201_
                               _E25202_))
                            (cons _E25202_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2690426915_)))
                        (__tmp42381 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2690226930_ __tmp42381))))
              (___kont4053840539_
               (lambda (_L26805_ _L26807_)
                 (let* ((_g2682726835_
                         (lambda (_g2682826831_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2682826831_)))
                        (_g2682626854_
                         (lambda (_g2682826839_)
                           ((lambda (_L26842_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L26698_
                                                        (cons _L25219_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L26842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L26807_ (cons _L25219_ '()))
                                        '()))
                            '())
                      (cons (let ()
                              (declare (not safe))
                              (_generate123575_
                               _L26842_
                               _L26805_
                               _K25201_
                               _E25202_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25202_ '()))))))
                            _g2682826839_)))
                        (__tmp42382 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2682626854_ __tmp42382)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2671226962_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4052940530_)
                                                               (let ((_e2672026941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4052940530_)))
                         (let ((_tl2671826948_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2672026941_)))
                               (_hd2671926945_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2672026941_))))
                           (if (gx#stx-null? _tl2671826948_)
                               (___kont4053440535_ _hd2671926945_)
                               (if (gx#stx-datum? _hd2671926945_)
                                   (let ((_e2672526875_
                                          (gx#stx-e _hd2671926945_)))
                                     (if (equal? _e2672526875_ '=>:)
                                         (if (gx#stx-pair? _tl2671826948_)
                                             (let ((_e2672826879_
                                                    (gx#syntax-e
                                                     _tl2671826948_)))
                                               (let ((_tl2672626886_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2672826879_)))
                                                     (_hd2672726883_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2672826879_))))
                                                 (if (gx#stx-null?
                                                      _tl2672626886_)
                                                     (___kont4053640537_
                                                      _hd2672726883_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2671526750_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2671526750_)))
                                         (if (equal? _e2672526875_ '::)
                                             (if (gx#stx-pair? _tl2671826948_)
                                                 (let ((_e2673726771_
                                                        (gx#syntax-e
                                                         _tl2671826948_)))
                                                   (let ((_tl2673526778_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2673726771_)))
                                                         (_hd2673626775_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2673726771_))))
                                                     (if (gx#stx-pair?
                                                          _tl2673526778_)
                                                         (let ((_e2674026781_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2673526778_)))
                   (let ((_tl2673826788_
                          (let () (declare (not safe)) (##cdr _e2674026781_)))
                         (_hd2673926785_
                          (let () (declare (not safe)) (##car _e2674026781_))))
                     (if (gx#stx-datum? _hd2673926785_)
                         (let ((_e2674126791_ (gx#stx-e _hd2673926785_)))
                           (if (equal? _e2674126791_ '=>:)
                               (if (gx#stx-pair? _tl2673826788_)
                                   (let ((_e2674426795_
                                          (gx#syntax-e _tl2673826788_)))
                                     (let ((_tl2674226802_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2674426795_)))
                                           (_hd2674326799_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2674426795_))))
                                       (if (gx#stx-null? _tl2674226802_)
                                           (___kont4053840539_
                                            _hd2674326799_
                                            _hd2673626775_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2671526750_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2671526750_)))
                               (let () (declare (not safe)) (_g2671526750_))))
                         (let () (declare (not safe)) (_g2671526750_)))))
                 (let () (declare (not safe)) (_g2671526750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2671526750_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2671526750_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2671526750_))))))
                       (let () (declare (not safe)) (_g2671526750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4052940530_)
                                                        (___kont4053240533_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2671226962_))))))))
                                           (___kont4061640617_
                                            (lambda (_L26593_)
                                              (let* ((___stx4051340514_
                                                      _L26593_)
                                                     (_g2660626618_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4051340514_))))
                                                (let ((___kont4051640517_
                                                       (lambda (_L26646_
                                                                _L26648_)
                                                         (let ((__tmp42383
                                                                (let ((__tmp42384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'and: _L26646_)))
                          (declare (not safe))
                          (_generate123575_
                           _tgt25198_
                           __tmp42384
                           _K25201_
                           _E25202_))))
                   (declare (not safe))
                   (_generate123575_
                    _tgt25198_
                    _L26648_
                    __tmp42383
                    _E25202_))))
              (___kont4051840519_ (lambda () _K25201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4051340514_)
                                                      (let ((_e2661226636_
                                                             (gx#syntax-e
                                                              ___stx4051340514_)))
                                                        (let ((_tl2661026643_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2661226636_)))
                      (_hd2661126640_
                       (let () (declare (not safe)) (##car _e2661226636_))))
                  (___kont4051640517_ _tl2661026643_ _hd2661126640_)))
              (___kont4051840519_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4061840619_
                                            (lambda (_L26500_)
                                              (let* ((___stx4049740498_
                                                      _L26500_)
                                                     (_g2651326525_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4049740498_))))
                                                (let ((___kont4050040501_
                                                       (lambda (_L26553_
                                                                _L26555_)
                                                         (let ((__tmp42385
                                                                (let ((__tmp42386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'or: _L26553_)))
                          (declare (not safe))
                          (_generate123575_
                           _tgt25198_
                           __tmp42386
                           _K25201_
                           _E25202_))))
                   (declare (not safe))
                   (_generate123575_
                    _tgt25198_
                    _L26555_
                    _K25201_
                    __tmp42385))))
              (___kont4050240503_ (lambda () _E25202_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4049740498_)
                                                      (let ((_e2651926543_
                                                             (gx#syntax-e
                                                              ___stx4049740498_)))
                                                        (let ((_tl2651726550_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2651926543_)))
                      (_hd2651826547_
                       (let () (declare (not safe)) (##car _e2651926543_))))
                  (___kont4050040501_ _tl2651726550_ _hd2651826547_)))
              (___kont4050240503_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4062040621_
                                            (lambda (_L26465_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate123575_
                                                 _tgt25198_
                                                 _L26465_
                                                 _E25202_
                                                 _K25201_))))
                                           (___kont4062240623_
                                            (lambda (_L26347_ _L26349_)
                                              (let* ((_g2636626381_
                                                      (lambda (_g2636726377_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2636726377_)))
                                                     (_g2636526430_
                                                      (lambda (_g2636726385_)
                                                        (if (gx#stx-pair?
                                                             _g2636726385_)
                                                            (let ((_e2637226388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2636726385_)))
                      (let ((_hd2637126392_
                             (let ()
                               (declare (not safe))
                               (##car _e2637226388_)))
                            (_tl2637026395_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2637226388_))))
                        (if (gx#stx-pair? _tl2637026395_)
                            (let ((_e2637526398_ (gx#syntax-e _tl2637026395_)))
                              (let ((_hd2637426402_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2637526398_)))
                                    (_tl2637326405_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2637526398_))))
                                (if (gx#stx-null? _tl2637326405_)
                                    ((lambda (_L26408_ _L26410_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25219_ '()))
                                                     (cons (let ((_hd-pat26426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26349_))
                         (_tl-pat26428_ (gx#stx-e _L26347_)))
                     (if (and (equal? _hd-pat26426_ '(any:))
                              (equal? _tl-pat26428_ '(any:)))
                         _K25201_
                         (if (equal? _tl-pat26428_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26410_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25219_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_generate123575_
                                                  _L26410_
                                                  _L26349_
                                                  _K25201_
                                                  _E25202_))
                                               '())))
                             (if (equal? _hd-pat26426_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26408_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25219_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_generate123575_
                                                      _L26408_
                                                      _L26347_
                                                      _K25201_
                                                      _E25202_))
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26410_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25219_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26408_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25219_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (let ((__tmp42387
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_generate123575_
                                                             _L26408_
                                                             _L26347_
                                                             _K25201_
                                                             _E25202_))))
                                                     (declare (not safe))
                                                     (_generate123575_
                                                      _L26410_
                                                      _L26349_
                                                      __tmp42387
                                                      _E25202_))
                                                   '())))))))
                   (cons _E25202_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2637426402_
                                     _hd2637126392_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2636626381_ _g2636726385_)))))
                            (let ()
                              (declare (not safe))
                              (_g2636626381_ _g2636726385_)))))
                    (let ()
                      (declare (not safe))
                      (_g2636626381_ _g2636726385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42388
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2636526430_ __tmp42388))))
                                           (___kont4062440625_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25219_ '()))
                  (cons _K25201_ (cons _E25202_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4062640627_
                                            (lambda (_L26263_ _L26265_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice23577_
                                                 _tgt25198_
                                                 _L26265_
                                                 _L26263_
                                                 _K25201_
                                                 _E25202_))))
                                           (___kont4062840629_
                                            (lambda (_L26177_)
                                              (let* ((_g2619126199_
                                                      (lambda (_g2619226195_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2619226195_)))
                                                     (_g2619026218_
                                                      (lambda (_g2619226203_)
                                                        ((lambda (_L26206_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25219_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26206_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25219_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_generate123575_
                                                            _L26206_
                                                            _L26177_
                                                            _K25201_
                                                            _E25202_))
                                                         '())))
                                       (cons _E25202_ '()))))))
                 _g2619226203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42389
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2619026218_ __tmp42389))))
                                           (___kont4063040631_
                                            (lambda (_L25982_)
                                              (let* ((___stx4044740448_
                                                      _L25982_)
                                                     (_g2599726020_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4044740448_))))
                                                (let ((___kont4045040451_
                                                       (lambda (_L26097_)
                                                         (let* ((_g2611126119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2611226115_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2611226115_)))
                        (_g2611026138_
                         (lambda (_g2611226123_)
                           ((lambda (_L26126_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26126_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (_generate-simple-vector23578_
                                                     _tgt25198_
                                                     _L26097_
                                                     '0
                                                     _K25201_
                                                     _E25202_))
                                                  (cons _E25202_ '()))))))
                            _g2611226123_)))
                        (__tmp42390 (gx#stx-length _L26097_)))
                   (declare (not safe))
                   (_g2611026138_ __tmp42390))))
              (___kont4045240453_
               (lambda (_L26051_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector23579_
                    _tgt25198_
                    _L26051_
                    'values->list
                    _K25201_
                    _E25202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4044740448_)
                                                      (let ((_e2600226073_
                                                             (gx#syntax-e
                                                              ___stx4044740448_)))
                                                        (let ((_tl2600026080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2600226073_)))
                      (_hd2600126077_
                       (let () (declare (not safe)) (##car _e2600226073_))))
                  (if (gx#stx-datum? _hd2600126077_)
                      (let ((_e2600326083_ (gx#stx-e _hd2600126077_)))
                        (if (equal? _e2600326083_ 'simple:)
                            (if (gx#stx-pair? _tl2600026080_)
                                (let ((_e2600626087_
                                       (gx#syntax-e _tl2600026080_)))
                                  (let ((_tl2600426094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2600626087_)))
                                        (_hd2600526091_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2600626087_))))
                                    (if (gx#stx-null? _tl2600426094_)
                                        (___kont4045040451_ _hd2600526091_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2599726020_)))))
                                (let () (declare (not safe)) (_g2599726020_)))
                            (if (equal? _e2600326083_ 'list:)
                                (if (gx#stx-pair? _tl2600026080_)
                                    (let ((_e2601426041_
                                           (gx#syntax-e _tl2600026080_)))
                                      (let ((_tl2601226048_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2601426041_)))
                                            (_hd2601326045_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2601426041_))))
                                        (if (gx#stx-null? _tl2601226048_)
                                            (___kont4045240453_ _hd2601326045_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2599726020_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2599726020_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2599726020_)))))
                      (let () (declare (not safe)) (_g2599726020_)))))
              (let () (declare (not safe)) (_g2599726020_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4063240633_
                                            (lambda (_L25787_)
                                              (let* ((___stx4039740398_
                                                      _L25787_)
                                                     (_g2580225825_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4039740398_))))
                                                (let ((___kont4040040401_
                                                       (lambda (_L25902_)
                                                         (let* ((_g2591625924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2591725920_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2591725920_)))
                        (_g2591525943_
                         (lambda (_g2591725928_)
                           ((lambda (_L25931_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25219_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25219_ '()))
                                  (cons _L25931_ '())))
                      (cons (let ()
                              (declare (not safe))
                              (_generate-simple-vector23578_
                               _tgt25198_
                               _L25902_
                               '0
                               _K25201_
                               _E25202_))
                            (cons _E25202_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25202_ '()))))))
                            _g2591725928_)))
                        (__tmp42391 (gx#stx-length _L25902_)))
                   (declare (not safe))
                   (_g2591525943_ __tmp42391))))
              (___kont4040240403_
               (lambda (_L25856_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25219_ '()))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate-list-vector23579_
                                      _tgt25198_
                                      _L25856_
                                      'vector->list
                                      _K25201_
                                      _E25202_))
                                   (cons _E25202_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4039740398_)
                                                      (let ((_e2580725878_
                                                             (gx#syntax-e
                                                              ___stx4039740398_)))
                                                        (let ((_tl2580525885_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2580725878_)))
                      (_hd2580625882_
                       (let () (declare (not safe)) (##car _e2580725878_))))
                  (if (gx#stx-datum? _hd2580625882_)
                      (let ((_e2580825888_ (gx#stx-e _hd2580625882_)))
                        (if (equal? _e2580825888_ 'simple:)
                            (if (gx#stx-pair? _tl2580525885_)
                                (let ((_e2581125892_
                                       (gx#syntax-e _tl2580525885_)))
                                  (let ((_tl2580925899_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2581125892_)))
                                        (_hd2581025896_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2581125892_))))
                                    (if (gx#stx-null? _tl2580925899_)
                                        (___kont4040040401_ _hd2581025896_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2580225825_)))))
                                (let () (declare (not safe)) (_g2580225825_)))
                            (if (equal? _e2580825888_ 'list:)
                                (if (gx#stx-pair? _tl2580525885_)
                                    (let ((_e2581925846_
                                           (gx#syntax-e _tl2580525885_)))
                                      (let ((_tl2581725853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2581925846_)))
                                            (_hd2581825850_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2581925846_))))
                                        (if (gx#stx-null? _tl2581725853_)
                                            (___kont4040240403_ _hd2581825850_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2580225825_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2580225825_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2580225825_)))))
                      (let () (declare (not safe)) (_g2580225825_)))))
              (let () (declare (not safe)) (_g2580225825_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4063440635_
                                            (lambda (_L25738_ _L25740_)
                                              (let ((__tmp42392
                                                     (gx#stx-e _L25740_)))
                                                (declare (not safe))
                                                (_generate-struct23580_
                                                 __tmp42392
                                                 _tgt25198_
                                                 _L25738_
                                                 _K25201_
                                                 _E25202_))))
                                           (___kont4063640637_
                                            (lambda (_L25679_ _L25681_)
                                              (let ((__tmp42393
                                                     (gx#stx-e _L25681_)))
                                                (declare (not safe))
                                                (_generate-class23581_
                                                 __tmp42393
                                                 _tgt25198_
                                                 _L25679_
                                                 _K25201_
                                                 _E25202_))))
                                           (___kont4063840639_
                                            (lambda (_L25582_)
                                              (let* ((_g2559625604_
                                                      (lambda (_g2559725600_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2559725600_)))
                                                     (_g2559525623_
                                                      (lambda (_g2559725608_)
                                                        ((lambda (_L25611_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25611_
                                       (cons _L25219_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25582_ '()))
                                                   '())))
                                 (cons _K25201_ (cons _E25202_ '()))))))
                 _g2559725608_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42394
                                                      (let ((_e25627_
                                                             (gx#stx-e
                                                              _L25582_)))
                                                        (if (or (symbol? _e25627_)
                                                                (keyword?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e25627_)
                        (immediate? _e25627_))
                    '##eq?
                    (if (number? _e25627_) 'eqv? 'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2559525623_ __tmp42394))))
                                           (___kont4064040641_
                                            (lambda (_L25502_ _L25504_)
                                              (let* ((_g2552025528_
                                                      (lambda (_g2552125524_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2552125524_)))
                                                     (_g2551925547_
                                                      (lambda (_g2552125532_)
                                                        ((lambda (_L25535_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25535_
                                             (cons (cons _L25504_
                                                         (cons _L25219_ '()))
                                                   '()))
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (_generate123575_
                                          _L25535_
                                          _L25502_
                                          _K25201_
                                          _E25202_))
                                       '())))))
                 _g2552125532_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42395
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2551925547_ __tmp42395))))
                                           (___kont4064240643_
                                            (lambda (_L25444_)
                                              (cons 'let
                                                    (cons (cons (cons _L25444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25219_ '()))
                        '())
                  (cons _K25201_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4064440645_
                                            (lambda () _K25201_)))
                                       (if (gx#stx-pair? ___stx4061140612_)
                                           (let ((_e2525226672_
                                                  (gx#syntax-e
                                                   ___stx4061140612_)))
                                             (let ((_tl2525026679_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2525226672_)))
                                                   (_hd2525126676_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2525226672_))))
                                               (if (gx#stx-datum?
                                                    _hd2525126676_)
                                                   (let ((_e2525326682_
                                                          (gx#stx-e
                                                           _hd2525126676_)))
                                                     (if (equal? _e2525326682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2525026679_)
                     (let ((_e2525626686_ (gx#syntax-e _tl2525026679_)))
                       (let ((_tl2525426693_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2525626686_)))
                             (_hd2525526690_
                              (let ()
                                (declare (not safe))
                                (##car _e2525626686_))))
                         (___kont4061440615_ _tl2525426693_ _hd2525526690_)))
                     (let () (declare (not safe)) (_g2524625388_)))
                 (if (equal? _e2525326682_ 'and:)
                     (___kont4061640617_ _tl2525026679_)
                     (if (equal? _e2525326682_ 'or:)
                         (___kont4061840619_ _tl2525026679_)
                         (if (equal? _e2525326682_ 'not:)
                             (if (gx#stx-pair? _tl2525026679_)
                                 (let ((_e2527426455_
                                        (gx#syntax-e _tl2525026679_)))
                                   (let ((_tl2527226462_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2527426455_)))
                                         (_hd2527326459_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2527426455_))))
                                     (if (gx#stx-null? _tl2527226462_)
                                         (___kont4062040621_ _hd2527326459_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2524625388_)))))
                                 (let () (declare (not safe)) (_g2524625388_)))
                             (if (equal? _e2525326682_ 'cons:)
                                 (if (gx#stx-pair? _tl2525026679_)
                                     (let ((_e2528326327_
                                            (gx#syntax-e _tl2525026679_)))
                                       (let ((_tl2528126334_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2528326327_)))
                                             (_hd2528226331_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2528326327_))))
                                         (if (gx#stx-pair? _tl2528126334_)
                                             (let ((_e2528626337_
                                                    (gx#syntax-e
                                                     _tl2528126334_)))
                                               (let ((_tl2528426344_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2528626337_)))
                                                     (_hd2528526341_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2528626337_))))
                                                 (if (gx#stx-null?
                                                      _tl2528426344_)
                                                     (___kont4062240623_
                                                      _hd2528526341_
                                                      _hd2528226331_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2524625388_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2524625388_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2524625388_)))
                                 (if (equal? _e2525326682_ 'null:)
                                     (if (gx#stx-null? _tl2525026679_)
                                         (___kont4062440625_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2524625388_)))
                                     (if (equal? _e2525326682_ 'splice:)
                                         (if (gx#stx-pair? _tl2525026679_)
                                             (let ((_e2529926243_
                                                    (gx#syntax-e
                                                     _tl2525026679_)))
                                               (let ((_tl2529726250_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2529926243_)))
                                                     (_hd2529826247_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2529926243_))))
                                                 (if (gx#stx-pair?
                                                      _tl2529726250_)
                                                     (let ((_e2530226253_
                                                            (gx#syntax-e
                                                             _tl2529726250_)))
                                                       (let ((_tl2530026260_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2530226253_)))
                     (_hd2530126257_
                      (let () (declare (not safe)) (##car _e2530226253_))))
                 (if (gx#stx-null? _tl2530026260_)
                     (___kont4062640627_ _hd2530126257_ _hd2529826247_)
                     (let () (declare (not safe)) (_g2524625388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2524625388_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2524625388_)))
                                         (if (equal? _e2525326682_ 'box:)
                                             (if (gx#stx-pair? _tl2525026679_)
                                                 (let ((_e2531026167_
                                                        (gx#syntax-e
                                                         _tl2525026679_)))
                                                   (let ((_tl2530826174_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2531026167_)))
                                                         (_hd2530926171_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2531026167_))))
                                                     (if (gx#stx-null?
                                                          _tl2530826174_)
                                                         (___kont4062840629_
                                                          _hd2530926171_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2524625388_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2524625388_)))
                                             (if (equal? _e2525326682_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2525026679_)
                                                     (let ((_e2531825972_
                                                            (gx#syntax-e
                                                             _tl2525026679_)))
                                                       (let ((_tl2531625979_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2531825972_)))
                     (_hd2531725976_
                      (let () (declare (not safe)) (##car _e2531825972_))))
                 (if (gx#stx-null? _tl2531625979_)
                     (___kont4063040631_ _hd2531725976_)
                     (let () (declare (not safe)) (_g2524625388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2524625388_)))
                                                 (if (equal? _e2525326682_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2525026679_)
                                                         (let ((_e2532625777_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2525026679_)))
                   (let ((_tl2532425784_
                          (let () (declare (not safe)) (##cdr _e2532625777_)))
                         (_hd2532525781_
                          (let () (declare (not safe)) (##car _e2532625777_))))
                     (if (gx#stx-null? _tl2532425784_)
                         (___kont4063240633_ _hd2532525781_)
                         (let () (declare (not safe)) (_g2524625388_)))))
                 (let () (declare (not safe)) (_g2524625388_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2525326682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2525026679_)
                     (let ((_e2533525718_ (gx#syntax-e _tl2525026679_)))
                       (let ((_tl2533325725_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2533525718_)))
                             (_hd2533425722_
                              (let ()
                                (declare (not safe))
                                (##car _e2533525718_))))
                         (if (gx#stx-pair? _tl2533325725_)
                             (let ((_e2533825728_
                                    (gx#syntax-e _tl2533325725_)))
                               (let ((_tl2533625735_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2533825728_)))
                                     (_hd2533725732_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2533825728_))))
                                 (if (gx#stx-null? _tl2533625735_)
                                     (___kont4063440635_
                                      _hd2533725732_
                                      _hd2533425722_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2524625388_)))))
                             (let () (declare (not safe)) (_g2524625388_)))))
                     (let () (declare (not safe)) (_g2524625388_)))
                 (if (equal? _e2525326682_ 'class:)
                     (if (gx#stx-pair? _tl2525026679_)
                         (let ((_e2534725659_ (gx#syntax-e _tl2525026679_)))
                           (let ((_tl2534525666_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2534725659_)))
                                 (_hd2534625663_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2534725659_))))
                             (if (gx#stx-pair? _tl2534525666_)
                                 (let ((_e2535025669_
                                        (gx#syntax-e _tl2534525666_)))
                                   (let ((_tl2534825676_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2535025669_)))
                                         (_hd2534925673_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2535025669_))))
                                     (if (gx#stx-null? _tl2534825676_)
                                         (___kont4063640637_
                                          _hd2534925673_
                                          _hd2534625663_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2524625388_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2524625388_)))))
                         (let () (declare (not safe)) (_g2524625388_)))
                     (if (equal? _e2525326682_ 'datum:)
                         (if (gx#stx-pair? _tl2525026679_)
                             (let ((_e2535825572_
                                    (gx#syntax-e _tl2525026679_)))
                               (let ((_tl2535625579_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2535825572_)))
                                     (_hd2535725576_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2535825572_))))
                                 (if (gx#stx-null? _tl2535625579_)
                                     (___kont4063840639_ _hd2535725576_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2524625388_)))))
                             (let () (declare (not safe)) (_g2524625388_)))
                         (if (equal? _e2525326682_ 'apply:)
                             (if (gx#stx-pair? _tl2525026679_)
                                 (let ((_e2536725482_
                                        (gx#syntax-e _tl2525026679_)))
                                   (let ((_tl2536525489_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2536725482_)))
                                         (_hd2536625486_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2536725482_))))
                                     (if (gx#stx-pair? _tl2536525489_)
                                         (let ((_e2537025492_
                                                (gx#syntax-e _tl2536525489_)))
                                           (let ((_tl2536825499_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2537025492_)))
                                                 (_hd2536925496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2537025492_))))
                                             (if (gx#stx-null? _tl2536825499_)
                                                 (___kont4064040641_
                                                  _hd2536925496_
                                                  _hd2536625486_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2524625388_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2524625388_)))))
                                 (let () (declare (not safe)) (_g2524625388_)))
                             (if (equal? _e2525326682_ 'var:)
                                 (if (gx#stx-pair? _tl2525026679_)
                                     (let ((_e2537825434_
                                            (gx#syntax-e _tl2525026679_)))
                                       (let ((_tl2537625441_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2537825434_)))
                                             (_hd2537725438_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2537825434_))))
                                         (if (gx#stx-null? _tl2537625441_)
                                             (___kont4064240643_
                                              _hd2537725438_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2524625388_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2524625388_)))
                                 (if (equal? _e2525326682_ 'any:)
                                     (if (gx#stx-null? _tl2525026679_)
                                         (___kont4064440645_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2524625388_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2524625388_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2524625388_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2524625388_)))))))
                               _g2520525216_))))
                      (declare (not safe))
                      (_g2520326981_ _tgt25198_))))
                 (_generate-splice23577_
                  (lambda (_tgt24570_ _hd24572_ _rest24573_ _K24574_ _E24575_)
                    (let* ((_g2457724594_
                            (lambda (_g2457824590_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2457824590_)))
                           (_g2457625194_
                            (lambda (_g2457824598_)
                              (if (gx#stx-pair/null? _g2457824598_)
                                  (let ((_g42396_
                                         (gx#syntax-split-splice
                                          _g2457824598_
                                          '0)))
                                    (begin
                                      (let ((_g42397_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42396_)
                                                   (##vector-length _g42396_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42397_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42397_)))
                                      (let ((_target2458024601_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42396_ 0)))
                                            (_tl2458224604_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42396_ 1))))
                                        (if (gx#stx-null? _tl2458224604_)
                                            (letrec ((_loop2458324607_
                                                      (lambda (_hd2458124611_
                                                               _var2458724614_)
                                                        (if (gx#stx-pair?
                                                             _hd2458124611_)
                                                            (let ((_e2458424617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2458124611_)))
                      (let ((_lp-hd2458524621_
                             (let ()
                               (declare (not safe))
                               (##car _e2458424617_)))
                            (_lp-tl2458624624_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2458424617_))))
                        (let ((__tmp42415
                               (cons _lp-hd2458524621_ _var2458724614_)))
                          (declare (not safe))
                          (_loop2458324607_ _lp-tl2458624624_ __tmp42415))))
                    (let ((_var2458824627_ (reverse _var2458724614_)))
                      ((lambda (_L24631_)
                         (let ()
                           (let* ((_g2464724664_
                                   (lambda (_g2464824660_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2464824660_)))
                                  (_g2464625182_
                                   (lambda (_g2464824668_)
                                     (if (gx#stx-pair/null? _g2464824668_)
                                         (let ((_g42398_
                                                (gx#syntax-split-splice
                                                 _g2464824668_
                                                 '0)))
                                           (begin
                                             (let ((_g42399_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42398_)
                                                          (##vector-length
                                                           _g42398_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42399_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42399_)))
                                             (let ((_target2465024671_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42398_
                                                       0)))
                                                   (_tl2465224674_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42398_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2465224674_)
                                                   (letrec ((_loop2465324677_
                                                             (lambda (_hd2465124681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2465724684_)
                       (if (gx#stx-pair? _hd2465124681_)
                           (let ((_e2465424687_ (gx#syntax-e _hd2465124681_)))
                             (let ((_lp-hd2465524691_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2465424687_)))
                                   (_lp-tl2465624694_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2465424687_))))
                               (let ((__tmp42413
                                      (cons _lp-hd2465524691_
                                            _var-r2465724684_)))
                                 (declare (not safe))
                                 (_loop2465324677_
                                  _lp-tl2465624694_
                                  __tmp42413))))
                           (let ((_var-r2465824697_
                                  (reverse _var-r2465724684_)))
                             ((lambda (_L24701_)
                                (let ()
                                  (let* ((_g2471824735_
                                          (lambda (_g2471924731_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2471924731_)))
                                         (_g2471725170_
                                          (lambda (_g2471924739_)
                                            (if (gx#stx-pair/null?
                                                 _g2471924739_)
                                                (let ((_g42400_
                                                       (gx#syntax-split-splice
                                                        _g2471924739_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42400_)
                         (##vector-length _g42400_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42401_ 2)))
                  (error "Context expects 2 values" _g42401_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2472124742_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42400_
                                                              0)))
                                                          (_tl2472324745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42400_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2472324745_)
                                                          (letrec ((_loop2472424748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2472224752_ _init2472824755_)
                              (if (gx#stx-pair? _hd2472224752_)
                                  (let ((_e2472524758_
                                         (gx#syntax-e _hd2472224752_)))
                                    (let ((_lp-hd2472624762_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2472524758_)))
                                          (_lp-tl2472724765_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2472524758_))))
                                      (let ((__tmp42411
                                             (cons _lp-hd2472624762_
                                                   _init2472824755_)))
                                        (declare (not safe))
                                        (_loop2472424748_
                                         _lp-tl2472724765_
                                         __tmp42411))))
                                  (let ((_init2472924768_
                                         (reverse _init2472824755_)))
                                    ((lambda (_L24772_)
                                       (let ()
                                         (let* ((_g2478924797_
                                                 (lambda (_g2479024793_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2479024793_)))
                                                (_g2478825166_
                                                 (lambda (_g2479024801_)
                                                   ((lambda (_L24804_)
                                                      (let ()
                                                        (let* ((_g2481724825_
                                                                (lambda (_g2481824821_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2481824821_)))
                       (_g2481625162_
                        (lambda (_g2481824829_)
                          ((lambda (_L24832_)
                             (let ()
                               (let* ((_g2484524853_
                                       (lambda (_g2484624849_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2484624849_)))
                                      (_g2484425158_
                                       (lambda (_g2484624857_)
                                         ((lambda (_L24860_)
                                            (let ()
                                              (let* ((_g2487324881_
                                                      (lambda (_g2487424877_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2487424877_)))
                                                     (_g2487225154_
                                                      (lambda (_g2487424885_)
                                                        ((lambda (_L24888_)
                                                           (let ()
                                                             (let* ((_g2490124909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2490224905_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2490224905_)))
                            (_g2490025150_
                             (lambda (_g2490224913_)
                               ((lambda (_L24916_)
                                  (let ()
                                    (let* ((_g2492924937_
                                            (lambda (_g2493024933_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2493024933_)))
                                           (_g2492825146_
                                            (lambda (_g2493024941_)
                                              ((lambda (_L24944_)
                                                 (let ()
                                                   (let* ((_g2495724965_
                                                           (lambda (_g2495824961_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2495824961_)))
                                                          (_g2495625142_
                                                           (lambda (_g2495824969_)
                                                             ((lambda (_L24972_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2498524993_
                                  (lambda (_g2498624989_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2498624989_)))
                                 (_g2498425127_
                                  (lambda (_g2498624997_)
                                    ((lambda (_L25000_)
                                       (let ()
                                         (let* ((_g2501325021_
                                                 (lambda (_g2501425017_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2501425017_)))
                                                (_g2501225115_
                                                 (lambda (_g2501425025_)
                                                   ((lambda (_L25028_)
                                                      (let ()
                                                        (let* ((_g2504125049_
                                                                (lambda (_g2504225045_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2504225045_)))
                       (_g2504025111_
                        (lambda (_g2504225053_)
                          ((lambda (_L25056_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L24832_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L24944_
                                         (foldr (lambda (_g2507825081_
                                                         _g2507925084_)
                                                  (cons _g2507825081_
                                                        _g2507925084_))
                                                '()
                                                _L24631_))
                                   (cons _L24972_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L24888_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L24916_
                                               (cons _L24944_
                                                     (foldr (lambda (_g2507625087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2507725090_)
                      (cons _g2507625087_ _g2507725090_))
                    '()
                    _L24701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L25056_ '())))
                             '()))
                 (cons (cons _L24860_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24944_
                                                     (foldr (lambda (_g2507425093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2507525096_)
                      (cons _g2507425093_ _g2507525096_))
                    '()
                    _L24701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L24944_ '()))
                         (cons (cons _L24888_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L24944_ '()))
                                           (cons _L24944_
                                                 (foldr (lambda (_g2507225099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2507325102_)
                  (cons _g2507225099_ _g2507325102_))
                '()
                _L24701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L25028_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L24860_
                                                         (cons _L24804_
                                                               (foldr (lambda (_g2507025105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2507125108_)
                                (cons _g2507025105_ _g2507125108_))
                              '()
                              _L24772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2504225053_)))
                       (__tmp42402
                        (let ()
                          (declare (not safe))
                          (_generate123575_
                           _L24916_
                           _hd24572_
                           _L25000_
                           _L25028_))))
                  (declare (not safe))
                  (_g2504025111_ __tmp42402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2501425025_)))
                                                (__tmp42403
                                                 (cons _L24832_
                                                       (cons _L24944_
                                                             (foldr (lambda (_g2511825121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2511925124_)
                              (cons (cons (gx#datum->syntax '#f 'reverse)
                                          (cons _g2511825121_ '()))
                                    _g2511925124_))
                            '()
                            _L24701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g2501225115_ __tmp42403))))
                                     _g2498624997_)))
                                 (__tmp42404
                                  (cons _L24860_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##cdr)
                                                    (cons _L24944_ '()))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L24701_
                                                 _L24631_)
                                                (foldr (lambda (_g2513025134_
                                                                _g2513125137_
                                                                _g2513225139_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons _g2513125137_ (cons _g2513025134_ '())))
                       _g2513225139_))
               '()
               _L24701_
               _L24631_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (declare (not safe))
                            (_g2498425127_ __tmp42404))))
                      _g2495824969_)))
                  (__tmp42405
                   (let ()
                     (declare (not safe))
                     (_generate123575_
                      _L24944_
                      _rest24573_
                      _K24574_
                      _E24575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2495625142_
                                                      __tmp42405))))
                                               _g2493024941_)))
                                           (__tmp42406 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2492825146_ __tmp42406))))
                                _g2490224913_)))
                            (__tmp42407 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2490025150_ __tmp42407))))
                 _g2487424885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42408
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2487225154_ __tmp42408))))
                                          _g2484624857_)))
                                      (__tmp42409 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2484425158_ __tmp42409))))
                           _g2481824829_)))
                       (__tmp42410 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2481625162_ __tmp42410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2479024801_))))
                                           (declare (not safe))
                                           (_g2478825166_ _tgt24570_))))
                                     _init2472924768_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2472424748_ _target2472124742_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2471824735_ _g2471924739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2471824735_
                                                   _g2471924739_)))))
                                         (__tmp42412
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g2517325176_
                                                            _g2517425179_)
                                                     (cons _g2517325176_
                                                           _g2517425179_))
                                                   '()
                                                   _L24631_))
                                           (cons (gx#datum->syntax '#f '@list)
                                                 '()))))
                                    (declare (not safe))
                                    (_g2471725170_ __tmp42412))))
                              _var-r2465824697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2465324677_
                                                        _target2465024671_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2464724664_
                                                      _g2464824668_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2464724664_ _g2464824668_)))))
                                  (__tmp42414
                                   (gx#gentemps
                                    (foldr (lambda (_g2518525188_
                                                    _g2518625191_)
                                             (cons _g2518525188_
                                                   _g2518625191_))
                                           '()
                                           _L24631_))))
                             (declare (not safe))
                             (_g2464625182_ __tmp42414))))
                       _var2458824627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2458324607_
                                                 _target2458024601_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2457724594_
                                               _g2457824598_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2457724594_ _g2457824598_)))))
                           (__tmp42416
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd24572_))))
                      (declare (not safe))
                      (_g2457625194_ __tmp42416))))
                 (_generate-simple-vector23578_
                  (lambda (_tgt24412_
                           _body24414_
                           _start24415_
                           _K24416_
                           _E24417_)
                    (let _recur24419_ ((_rest24422_ _body24414_)
                                       (_off24424_ _start24415_))
                      (let* ((___stx4096940970_ _rest24422_)
                             (_g2442724439_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4096940970_))))
                        (let ((___kont4097240973_
                               (lambda (_L24467_ _L24469_)
                                 (let* ((_g2448424503_
                                         (lambda (_g2448524499_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2448524499_)))
                                        (_g2448324562_
                                         (lambda (_g2448524507_)
                                           (if (gx#stx-pair? _g2448524507_)
                                               (let ((_e2449124510_
                                                      (gx#syntax-e
                                                       _g2448524507_)))
                                                 (let ((_hd2449024514_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2449124510_)))
                                                       (_tl2448924517_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2449124510_))))
                                                   (if (gx#stx-pair?
                                                        _tl2448924517_)
                                                       (let ((_e2449424520_
                                                              (gx#syntax-e
                                                               _tl2448924517_)))
                                                         (let ((_hd2449324524_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2449424520_)))
                       (_tl2449224527_
                        (let () (declare (not safe)) (##cdr _e2449424520_))))
                   (if (gx#stx-pair? _tl2449224527_)
                       (let ((_e2449724530_ (gx#syntax-e _tl2449224527_)))
                         (let ((_hd2449624534_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2449724530_)))
                               (_tl2449524537_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2449724530_))))
                           (if (gx#stx-null? _tl2449524537_)
                               ((lambda (_L24540_ _L24542_ _L24543_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24543_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24542_ (cons _L24540_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (let ((__tmp42417
                                                             (let ((__tmp42418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (fx1+ _off24424_)))
                       (declare (not safe))
                       (_recur24419_ _L24467_ __tmp42418))))
                (declare (not safe))
                (_generate123575_ _L24543_ _L24469_ __tmp42417 _E24417_))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _hd2449624534_
                                _hd2449324524_
                                _hd2449024514_)
                               (let ()
                                 (declare (not safe))
                                 (_g2448424503_ _g2448524507_)))))
                       (let ()
                         (declare (not safe))
                         (_g2448424503_ _g2448524507_)))))
               (let () (declare (not safe)) (_g2448424503_ _g2448524507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2448424503_
                                                  _g2448524507_)))))
                                        (__tmp42419
                                         (list (gx#genident 'e)
                                               _tgt24412_
                                               _off24424_)))
                                   (declare (not safe))
                                   (_g2448324562_ __tmp42419))))
                              (___kont4097440975_ (lambda () _K24416_)))
                          (if (gx#stx-pair? ___stx4096940970_)
                              (let ((_e2443324457_
                                     (gx#syntax-e ___stx4096940970_)))
                                (let ((_tl2443124464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2443324457_)))
                                      (_hd2443224461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2443324457_))))
                                  (___kont4097240973_
                                   _tl2443124464_
                                   _hd2443224461_)))
                              (___kont4097440975_)))))))
                 (_generate-list-vector23579_
                  (lambda (_tgt24304_
                           _body24306_
                           _->list24307_
                           _K24308_
                           _E24309_)
                    (let* ((_g2431124319_
                            (lambda (_g2431224315_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2431224315_)))
                           (_g2431024408_
                            (lambda (_g2431224323_)
                              ((lambda (_L24326_)
                                 (let ()
                                   (let* ((_g2433824346_
                                           (lambda (_g2433924342_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2433924342_)))
                                          (_g2433724404_
                                           (lambda (_g2433924350_)
                                             ((lambda (_L24353_)
                                                (let ()
                                                  (let* ((_g2436624374_
                                                          (lambda (_g2436724370_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2436724370_)))
                                                         (_g2436524396_
                                                          (lambda (_g2436724378_)
                                                            ((lambda (_L24381_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24326_
                                                   (cons _L24381_ '()))
                                             '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (_generate123575_
                                                _L24326_
                                                _body24306_
                                                _K24308_
                                                _E24309_))
                                             '()))))))
                     _g2436724378_)))
                 (__tmp42420
                  (let ((_$e24400_ _->list24307_))
                    (if (eq? 'values->list _$e24400_)
                        (cons (gx#datum->syntax '#f 'values->list)
                              (cons _L24353_ '()))
                        (if (eq? 'vector->list _$e24400_)
                            (cons (gx#datum->syntax '#f '##vector->list)
                                  (cons _L24353_ '()))
                            (if (eq? 'struct->list _$e24400_)
                                (cons (gx#datum->syntax '#f '##cdr)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector->list)
                                                  (cons _L24353_ '()))
                                            '()))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx23568_
                                 _->list24307_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2436524396_
                                                     __tmp42420))))
                                              _g2433924350_))))
                                     (declare (not safe))
                                     (_g2433724404_ _tgt24304_))))
                               _g2431224323_)))
                           (__tmp42421 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2431024408_ __tmp42421))))
                 (_generate-struct23580_
                  (lambda (_info23962_
                           _tgt23964_
                           _body23965_
                           _K23966_
                           _E23967_)
                    (let* ((_rtd23969_
                            (if (let ()
                                  (declare (not safe))
                                  (class-instance?
                                   |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
                                   _info23962_))
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _info23962_
                                   'type-exhibitor))
                                '#f))
                           (_fields23979_
                            (let _lp23972_ ((_rtd23975_ _rtd23969_)
                                            (_k23977_ '0))
                              (if _rtd23975_
                                  (let ((__tmp42423
                                         (let ((__tmp42424
                                                (##structure-ref
                                                 _rtd23975_
                                                 '2
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                 '#f)))
                                           (declare (not safe))
                                           (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                            __tmp42424)))
                                        (__tmp42422
                                         (fx+ (length (##structure-ref
                                                       _rtd23975_
                                                       '6
                                                       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                       '#f))
                                              _k23977_)))
                                    (declare (not safe))
                                    (_lp23972_ __tmp42423 __tmp42422))
                                  _k23977_)))
                           (_final?23982_
                            (if _rtd23969_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd23969_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2398523993_
                            (lambda (_g2398623989_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2398623989_)))
                           (_g2398424300_
                            (lambda (_g2398623997_)
                              ((lambda (_L24000_)
                                 (let ()
                                   (let* ((_g2401524023_
                                           (lambda (_g2401624019_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2401624019_)))
                                          (_g2401424202_
                                           (lambda (_g2401624027_)
                                             ((lambda (_L24030_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4098540986_
                                                            _body23965_)
                                                           (_g2404624069_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4098540986_))))
                                                      (let ((___kont4098840989_
                                                             (lambda (_L24148_)
                                                               (let ((_K24162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_generate-simple-vector23578_
                                 _tgt23964_
                                 _L24148_
                                 '1
                                 _K23966_
                                 _E23967_)))
                             (_len24164_ (gx#stx-length _L24148_)))
                         (if (and _rtd23969_ (fx<= _len24164_ _fields23979_))
                             (cons 'if
                                   (cons _L24030_
                                         (cons _K24162_ (cons _E23967_ '()))))
                             (let* ((_g2416624174_
                                     (lambda (_g2416724170_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2416724170_)))
                                    (_g2416524194_
                                     (lambda (_g2416724178_)
                                       ((lambda (_L24181_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L24030_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24181_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L24000_ '()))
                                                    '())))
                                  (cons _K24162_ (cons _E23967_ '()))))
                      (cons _E23967_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2416724178_))))
                               (declare (not safe))
                               (_g2416524194_ _len24164_))))))
                    (___kont4099040991_
                     (lambda (_L24100_)
                       (cons 'if
                             (cons _L24030_
                                   (cons (let ()
                                           (declare (not safe))
                                           (_generate-list-vector23579_
                                            _tgt23964_
                                            _L24100_
                                            'struct->list
                                            _K23966_
                                            _E23967_))
                                         (cons _E23967_ '())))))))
                (if (gx#stx-pair? ___stx4098540986_)
                    (let ((_e2405124124_ (gx#syntax-e ___stx4098540986_)))
                      (let ((_tl2404924131_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2405124124_)))
                            (_hd2405024128_
                             (let ()
                               (declare (not safe))
                               (##car _e2405124124_))))
                        (if (gx#stx-datum? _hd2405024128_)
                            (let ((_e2405224134_ (gx#stx-e _hd2405024128_)))
                              (if (equal? _e2405224134_ 'simple:)
                                  (if (gx#stx-pair? _tl2404924131_)
                                      (let ((_e2405524138_
                                             (gx#syntax-e _tl2404924131_)))
                                        (let ((_tl2405324145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2405524138_)))
                                              (_hd2405424142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2405524138_))))
                                          (if (gx#stx-null? _tl2405324145_)
                                              (___kont4098840989_
                                               _hd2405424142_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2404624069_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2404624069_)))
                                  (if (equal? _e2405224134_ 'list:)
                                      (if (gx#stx-pair? _tl2404924131_)
                                          (let ((_e2406324090_
                                                 (gx#syntax-e _tl2404924131_)))
                                            (let ((_tl2406124097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2406324090_)))
                                                  (_hd2406224094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2406324090_))))
                                              (if (gx#stx-null? _tl2406124097_)
                                                  (___kont4099040991_
                                                   _hd2406224094_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2404624069_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2404624069_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2404624069_)))))
                            (let () (declare (not safe)) (_g2404624069_)))))
                    (let () (declare (not safe)) (_g2404624069_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2401624027_)))
                                          (__tmp42425
                                           (if (let ()
                                                 (declare (not safe))
                                                 (class-instance?
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                                  _info23962_))
                                               (let* ((_g2420624214_
                                                       (lambda (_g2420724210_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2420724210_)))
                                                      (_g2420524233_
                                                       (lambda (_g2420724218_)
                                                         ((lambda (_L24221_)
                                                            (let ()
                                                              (cons _L24221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L24000_ '()))))
                  _g2420724218_)))
              (__tmp42427
               (cadddr (let ()
                         (declare (not safe))
                         (unchecked-slot-ref
                          _info23962_
                          'expander-identifiers)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2420524233_ __tmp42427))
                                               (let* ((_g2423724252_
                                                       (lambda (_g2423824248_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2423824248_)))
                                                      (_g2423624296_
                                                       (lambda (_g2423824256_)
                                                         (if (gx#stx-pair?
                                                              _g2423824256_)
                                                             (let ((_e2424324259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2423824256_)))
                       (let ((_hd2424224263_
                              (let ()
                                (declare (not safe))
                                (##car _e2424324259_)))
                             (_tl2424124266_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2424324259_))))
                         (if (gx#stx-pair? _tl2424124266_)
                             (let ((_e2424624269_
                                    (gx#syntax-e _tl2424124266_)))
                               (let ((_hd2424524273_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2424624269_)))
                                     (_tl2424424276_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2424624269_))))
                                 (if (gx#stx-null? _tl2424424276_)
                                     ((lambda (_L24279_ _L24281_)
                                        (let ()
                                          (cons _L24279_
                                                (cons _L24281_
                                                      (cons _L24000_ '())))))
                                      _hd2424524273_
                                      _hd2424224263_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2423724252_ _g2423824256_)))))
                             (let ()
                               (declare (not safe))
                               (_g2423724252_ _g2423824256_)))))
                     (let ()
                       (declare (not safe))
                       (_g2423724252_ _g2423824256_)))))
              (__tmp42426
               (list (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _info23962_ 'runtime-identifier))
                     (if _final?23982_
                         (gx#datum->syntax '#f 'direct-instance?)
                         (gx#datum->syntax '#f 'struct-instance?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2423624296_ __tmp42426)))))
                                     (declare (not safe))
                                     (_g2401424202_ __tmp42425))))
                               _g2398623997_))))
                      (declare (not safe))
                      (_g2398424300_ _tgt23964_))))
                 (_generate-class23581_
                  (lambda (_info23583_
                           _tgt23585_
                           _body23586_
                           _K23587_
                           _E23588_)
                    (letrec* ((_rtd23590_
                               (if (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
                                      _info23583_))
                                   (let ()
                                     (declare (not safe))
                                     (unchecked-slot-ref
                                      _info23583_
                                      'type-exhibitor))
                                   '#f))
                              (_known-slot?23592_
                               (if _rtd23590_
                                   (lambda (_key23956_)
                                     (let ((_slot23959_
                                            (keyword->symbol
                                             (gx#stx-e _key23956_))))
                                       (declare (not safe))
                                       (_rtd-known-slot?23594_
                                        _rtd23590_
                                        _slot23959_)))
                                   false))
                              (_final?23593_
                               (if _rtd23590_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23590_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23594_
                               (lambda (_rtd23943_ _slot23945_)
                                 (if _rtd23943_
                                     (let ((_$e23947_
                                            (memq _slot23945_
                                                  (##structure-ref
                                                   _rtd23943_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e23947_
                                           _$e23947_
                                           (ormap (lambda (_g2395023952_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_rtd-known-slot?23594_
                                                       _g2395023952_
                                                       _slot23945_)))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd23943_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23595_
                               (lambda (_klass23729_ _rest23731_)
                                 (let* ((___stx4103541036_ _rest23731_)
                                        (_g2373423750_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4103541036_))))
                                   (let ((___kont4103841039_
                                          (lambda (_L23788_ _L23790_ _L23791_)
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
                                                           (let* ((_g2383423842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2383523838_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2383523838_)))
                          (_g2383323931_
                           (lambda (_g2383523846_)
                             ((lambda (_L23849_)
                                (let ()
                                  (let* ((_g2386223870_
                                          (lambda (_g2386323866_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2386323866_)))
                                         (_g2386123927_
                                          (lambda (_g2386323874_)
                                            ((lambda (_L23877_)
                                               (let ()
                                                 (let* ((_g2389023898_
                                                         (lambda (_g2389123894_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2389123894_)))
                                                        (_g2388923923_
                                                         (lambda (_g2389123902_)
                                                           ((lambda (_L23905_)
                                                              (let ()
                                                                (let ((_K23918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L23905_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L23822_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L23877_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (let ((__tmp42428
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23595_
                                                           _klass23729_
                                                           _L23788_))))
                                                   (declare (not safe))
                                                   (_generate123575_
                                                    _L23905_
                                                    _L23790_
                                                    __tmp42428
                                                    _E23588_))
                                                 '())))))
                          (if (_known-slot?23592_ _L23791_)
                              (cons 'let
                                    (cons (cons (cons _L23877_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23849_ (cons _L23791_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K23918_ '())))
                              (cons 'let
                                    (cons (cons (cons _L23877_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23849_ (cons _L23791_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L23877_
                                                            (cons _K23918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23588_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2389123902_)))
                (__tmp42429 (gx#genident 'e)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2388923923_
                                                    __tmp42429))))
                                             _g2386323874_)))
                                         (__tmp42430 (gx#genident 'slot)))
                                    (declare (not safe))
                                    (_g2386123927_ __tmp42430))))
                              _g2383523846_))))
                     (declare (not safe))
                     (_g2383323931_ _klass23729_))))
               _g2380823819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g2380623935_ _tgt23585_))))
                                         (___kont4104041041_
                                          (lambda () _K23587_)))
                                     (if (gx#stx-pair? ___stx4103541036_)
                                         (let ((_e2374123768_
                                                (gx#syntax-e
                                                 ___stx4103541036_)))
                                           (let ((_tl2373923775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2374123768_)))
                                                 (_hd2374023772_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2374123768_))))
                                             (if (gx#stx-pair? _tl2373923775_)
                                                 (let ((_e2374423778_
                                                        (gx#syntax-e
                                                         _tl2373923775_)))
                                                   (let ((_tl2374223785_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2374423778_)))
                                                         (_hd2374323782_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2374423778_))))
                                                     (___kont4103841039_
                                                      _tl2374223785_
                                                      _hd2374323782_
                                                      _hd2374023772_)))
                                                 (___kont4104041041_))))
                                         (___kont4104041041_)))))))
                      (let* ((_g2359723605_
                              (lambda (_g2359823601_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2359823601_)))
                             (_g2359623725_
                              (lambda (_g2359823609_)
                                ((lambda (_L23612_)
                                   (let ()
                                     (let* ((_g2362723635_
                                             (lambda (_g2362823631_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2362823631_)))
                                            (_g2362623721_
                                             (lambda (_g2362823639_)
                                               ((lambda (_L23642_)
                                                  (let ()
                                                    (let* ((_g2365523663_
                                                            (lambda (_g2365623659_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2365623659_)))
                                                           (_g2365423717_
                                                            (lambda (_g2365623667_)
                                                              ((lambda (_L23670_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2368323691_
                                   (lambda (_g2368423687_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2368423687_)))
                                  (_g2368223713_
                                   (lambda (_g2368423695_)
                                     ((lambda (_L23698_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L23698_
                                                              (cons _L23670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23642_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23612_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23642_ '()))
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_recur23595_ _L23612_ _body23586_))
                                        '())))
                      (cons _E23588_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2368423695_)))
                                  (__tmp42431
                                   (if _final?23593_
                                       (gx#datum->syntax '#f 'direct-instance?)
                                       (gx#datum->syntax
                                        '#f
                                        'class-instance?))))
                             (declare (not safe))
                             (_g2368223713_ __tmp42431))))
                       _g2365623667_)))
                   (__tmp42432
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _info23583_ 'runtime-identifier))))
              (declare (not safe))
              (_g2365423717_ __tmp42432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2362823639_))))
                                       (declare (not safe))
                                       (_g2362623721_ _tgt23585_))))
                                 _g2359823609_)))
                             (__tmp42433 (gx#genident 'class)))
                        (declare (not safe))
                        (_g2359623725_ __tmp42433))))))
          (let ()
            (declare (not safe))
            (_generate123575_ _tgt23570_ _ptree23571_ _K23572_ _E23573_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22464_ _tgt-lst22466_ _clauses22467_)
        (letrec ((_parse-body22469_
                  (lambda (_hd-len23390_)
                    (let _lp23393_ ((_rest23396_ _clauses22467_)
                                    (_r23398_ '()))
                      (let* ((___stx4108541086_ _rest23396_)
                             (_g2340123413_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4108541086_))))
                        (let ((___kont4108841089_
                               (lambda (_L23441_ _L23443_)
                                 (let* ((___stx4105741058_ _L23443_)
                                        (_g2346023476_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4105741058_))))
                                   (let ((___kont4106041061_
                                          (lambda (_L23545_)
                                            (if (gx#stx-null? _L23441_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23545_)
                                 (let ((_$e23556_ (gx#stx-source _L23443_)))
                                   (if _$e23556_
                                       _$e23556_
                                       (gx#stx-source _stx22464_))))
                                '())))
              _r23398_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22464_
                                                 _L23443_))))
                                         (___kont4106241063_
                                          (lambda (_L23504_ _L23506_)
                                            (let ((__tmp42434
                                                   (cons (cons (gx#genident
                                                                'try-match)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2351823520_)
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                   _g2351823520_
                                   _stx22464_)))
                              _L23506_)
                             (cons (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'begin)
                                          _L23504_)
                                    (let ((_$e23524_ (gx#stx-source _L23443_)))
                                      (if _$e23524_
                                          _$e23524_
                                          (gx#stx-source _stx22464_))))
                                   '())))
                 _r23398_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_lp23393_
                                               _L23441_
                                               __tmp42434))))
                                         (___kont4106441065_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22464_
                                             _L23443_))))
                                     (let* ((___match4108241083_
                                             (lambda (_e2347023494_
                                                      _hd2346923498_
                                                      _tl2346823501_)
                                               (let ((_L23504_ _tl2346823501_)
                                                     (_L23506_ _hd2346923498_))
                                                 (if (and (gx#stx-list?
                                                           _L23506_)
                                                          (fx= (gx#stx-length
                                                                _L23506_)
                                                               _hd-len23390_)
                                                          (gx#stx-list?
                                                           _L23504_)
                                                          (not (gx#stx-null?
                                                                _L23504_)))
                                                     (___kont4106241063_
                                                      _L23504_
                                                      _L23506_)
                                                     (___kont4106441065_)))))
                                            (___match4107641077_
                                             (lambda (_e2346523535_
                                                      _hd2346423539_
                                                      _tl2346323542_)
                                               (let ((_L23545_ _tl2346323542_))
                                                 (if (and (gx#stx-list?
                                                           _L23545_)
                                                          (not (gx#stx-null?
                                                                _L23545_)))
                                                     (___kont4106041061_
                                                      _L23545_)
                                                     (___match4108241083_
                                                      _e2346523535_
                                                      _hd2346423539_
                                                      _tl2346323542_))))))
                                       (if (gx#stx-pair? ___stx4105741058_)
                                           (let ((_e2346523535_
                                                  (gx#syntax-e
                                                   ___stx4105741058_)))
                                             (let ((_tl2346323542_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2346523535_)))
                                                   (_hd2346423539_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2346523535_))))
                                               (if (gx#identifier?
                                                    _hd2346423539_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g42435_|
                                                        _hd2346423539_)
                                                       (___match4107641077_
                                                        _e2346523535_
                                                        _hd2346423539_
                                                        _tl2346323542_)
                                                       (___match4108241083_
                                                        _e2346523535_
                                                        _hd2346423539_
                                                        _tl2346323542_))
                                                   (___match4108241083_
                                                    _e2346523535_
                                                    _hd2346423539_
                                                    _tl2346323542_))))
                                           (___kont4106441065_)))))))
                              (___kont4109041091_ (lambda () _r23398_)))
                          (if (gx#stx-pair? ___stx4108541086_)
                              (let ((_e2340723431_
                                     (gx#syntax-e ___stx4108541086_)))
                                (let ((_tl2340523438_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2340723431_)))
                                      (_hd2340623435_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2340723431_))))
                                  (___kont4108841089_
                                   _tl2340523438_
                                   _hd2340623435_)))
                              (___kont4109041091_)))))))
                 (_generate-body22471_
                  (lambda (_body23175_)
                    (let* ((_g2317823186_
                            (lambda (_g2317923182_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2317923182_)))
                           (_g2317723386_
                            (lambda (_g2317923190_)
                              ((lambda (_L23193_)
                                 (let ()
                                   (let* ((_g2320523222_
                                           (lambda (_g2320623218_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2320623218_)))
                                          (_g2320423382_
                                           (lambda (_g2320623226_)
                                             (if (gx#stx-pair/null?
                                                  _g2320623226_)
                                                 (let ((_g42436_
                                                        (gx#syntax-split-splice
                                                         _g2320623226_
                                                         '0)))
                                                   (begin
                                                     (let ((_g42437_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g42436_)
                          (##vector-length _g42436_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g42437_ 2)))
                   (error "Context expects 2 values" _g42437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2320823229_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42436_
                                                               0)))
                                                           (_tl2321023232_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42436_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2321023232_)
                                                           (letrec ((_loop2321123235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2320923239_ _target2321523242_)
                               (if (gx#stx-pair? _hd2320923239_)
                                   (let ((_e2321223245_
                                          (gx#syntax-e _hd2320923239_)))
                                     (let ((_lp-hd2321323249_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2321223245_)))
                                           (_lp-tl2321423252_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2321223245_))))
                                       (let ((__tmp42442
                                              (cons _lp-hd2321323249_
                                                    _target2321523242_)))
                                         (declare (not safe))
                                         (_loop2321123235_
                                          _lp-tl2321423252_
                                          __tmp42442))))
                                   (let ((_target2321623255_
                                          (reverse _target2321523242_)))
                                     ((lambda (_L23259_)
                                        (let ()
                                          (let* ((_g2327623284_
                                                  (lambda (_g2327723280_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2327723280_)))
                                                 (_g2327523370_
                                                  (lambda (_g2327723288_)
                                                    ((lambda (_L23291_)
                                                       (let ()
                                                         (let* ((_g2330423312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2330523308_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2330523308_)))
                        (_g2330323366_
                         (lambda (_g2330523316_)
                           ((lambda (_L23319_)
                              (let ()
                                (let* ((_g2333223340_
                                        (lambda (_g2333323336_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2333323336_)))
                                       (_g2333123362_
                                        (lambda (_g2333323344_)
                                          ((lambda (_L23347_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2333323344_)))
                                       (__tmp42438
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L23193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23291_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23319_ '())))
                                         (gx#stx-source _stx22464_))))
                                  (declare (not safe))
                                  (_g2333123362_ __tmp42438))))
                            _g2330523316_)))
                        (__tmp42439
                         (let ((__tmp42440 (cons _L23193_ '())))
                           (declare (not safe))
                           (_generate-clauses22472_ _body23175_ __tmp42440))))
                   (declare (not safe))
                   (_g2330323366_ __tmp42439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2327723288_)))
                                                 (__tmp42441
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
                                         (foldr (lambda (_g2337323376_
                                                         _g2337423379_)
                                                  (cons _g2337323376_
                                                        _g2337423379_))
                                                '()
                                                _L23259_)))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx22464_))))
                                            (declare (not safe))
                                            (_g2327523370_ __tmp42441))))
                                      _target2321623255_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2321123235_ _target2320823229_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2320523222_ _g2320623226_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2320523222_
                                                    _g2320623226_))))))
                                     (declare (not safe))
                                     (_g2320423382_ _tgt-lst22466_))))
                               _g2317923190_)))
                           (__tmp42443 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2317723386_ __tmp42443))))
                 (_generate-clauses22472_
                  (lambda (_rest22827_ _E22829_)
                    (let* ((___stx4110141102_ _rest22827_)
                           (_g2283322849_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4110141102_))))
                      (let ((___kont4110441105_
                             (lambda (_L23083_)
                               (let* ((_g2309423112_
                                       (lambda (_g2309523108_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2309523108_)))
                                      (_g2309323167_
                                       (lambda (_g2309523116_)
                                         (if (gx#stx-pair? _g2309523116_)
                                             (let ((_e2310023119_
                                                    (gx#syntax-e
                                                     _g2309523116_)))
                                               (let ((_hd2309923123_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2310023119_)))
                                                     (_tl2309823126_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2310023119_))))
                                                 (if (gx#stx-pair?
                                                      _tl2309823126_)
                                                     (let ((_e2310323129_
                                                            (gx#syntax-e
                                                             _tl2309823126_)))
                                                       (let ((_hd2310223133_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2310323129_)))
                     (_tl2310123136_
                      (let () (declare (not safe)) (##cdr _e2310323129_))))
                 (if (gx#stx-pair? _tl2310123136_)
                     (let ((_e2310623139_ (gx#syntax-e _tl2310123136_)))
                       (let ((_hd2310523143_
                              (let ()
                                (declare (not safe))
                                (##car _e2310623139_)))
                             (_tl2310423146_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2310623139_))))
                         (if (gx#stx-null? _tl2310423146_)
                             ((lambda (_L23149_ _L23151_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23151_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate122473_
                                                         _L23151_
                                                         _L23149_
                                                         _E22829_))
                                                      _L23149_)
                                                  '()))))
                              _hd2310523143_
                              _hd2310223133_)
                             (let ()
                               (declare (not safe))
                               (_g2309423112_ _g2309523116_)))))
                     (let ()
                       (declare (not safe))
                       (_g2309423112_ _g2309523116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2309423112_
                                                        _g2309523116_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2309423112_
                                                _g2309523116_))))))
                                 (declare (not safe))
                                 (_g2309323167_ _L23083_))))
                            (___kont4110641107_
                             (lambda (_L22877_ _L22879_)
                               (let* ((_g2289222911_
                                       (lambda (_g2289322907_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2289322907_)))
                                      (_g2289123062_
                                       (lambda (_g2289322915_)
                                         (if (gx#stx-pair? _g2289322915_)
                                             (let ((_e2289922918_
                                                    (gx#syntax-e
                                                     _g2289322915_)))
                                               (let ((_hd2289822922_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2289922918_)))
                                                     (_tl2289722925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2289922918_))))
                                                 (if (gx#stx-pair?
                                                      _tl2289722925_)
                                                     (let ((_e2290222928_
                                                            (gx#syntax-e
                                                             _tl2289722925_)))
                                                       (let ((_hd2290122932_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2290222928_)))
                     (_tl2290022935_
                      (let () (declare (not safe)) (##cdr _e2290222928_))))
                 (if (gx#stx-pair? _tl2290022935_)
                     (let ((_e2290522938_ (gx#syntax-e _tl2290022935_)))
                       (let ((_hd2290422942_
                              (let ()
                                (declare (not safe))
                                (##car _e2290522938_)))
                             (_tl2290322945_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2290522938_))))
                         (if (gx#stx-null? _tl2290322945_)
                             ((lambda (_L22948_ _L22950_ _L22951_)
                                (if (gx#stx-e _L22950_)
                                    (let* ((_g2296822983_
                                            (lambda (_g2296922979_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2296922979_)))
                                           (_g2296723028_
                                            (lambda (_g2296922987_)
                                              (if (gx#stx-pair? _g2296922987_)
                                                  (let ((_e2297422990_
                                                         (gx#syntax-e
                                                          _g2296922987_)))
                                                    (let ((_hd2297322994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2297422990_)))
                                                          (_tl2297222997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2297422990_))))
                                                      (if (gx#stx-pair?
                                                           _tl2297222997_)
                                                          (let ((_e2297723000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2297222997_)))
                    (let ((_hd2297623004_
                           (let () (declare (not safe)) (##car _e2297723000_)))
                          (_tl2297523007_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2297723000_))))
                      (if (gx#stx-null? _tl2297523007_)
                          ((lambda (_L23010_ _L23012_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L22951_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L23012_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L23010_ '())))))
                           _hd2297623004_
                           _hd2297322994_)
                          (let ()
                            (declare (not safe))
                            (_g2296822983_ _g2296922987_)))))
                  (let ()
                    (declare (not safe))
                    (_g2296822983_ _g2296922987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2296822983_
                                                     _g2296922987_)))))
                                           (__tmp42446
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate122473_
                                                     _L22950_
                                                     _L22948_
                                                     _E22829_))
                                                  (let ((__tmp42447
                                                         (cons _L22951_ '())))
                                                    (declare (not safe))
                                                    (_generate-clauses22472_
                                                     _L22877_
                                                     __tmp42447)))))
                                      (declare (not safe))
                                      (_g2296723028_ __tmp42446))
                                    (let* ((_g2303223040_
                                            (lambda (_g2303323036_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2303323036_)))
                                           (_g2303123058_
                                            (lambda (_g2303323044_)
                                              ((lambda (_L23047_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L22951_
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
                         (cons '() (cons _L22948_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L23047_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2303323044_)))
                                           (__tmp42444
                                            (let ((__tmp42445
                                                   (cons _L22951_ '())))
                                              (declare (not safe))
                                              (_generate-clauses22472_
                                               _L22877_
                                               __tmp42445))))
                                      (declare (not safe))
                                      (_g2303123058_ __tmp42444))))
                              _hd2290422942_
                              _hd2290122932_
                              _hd2289822922_)
                             (let ()
                               (declare (not safe))
                               (_g2289222911_ _g2289322915_)))))
                     (let ()
                       (declare (not safe))
                       (_g2289222911_ _g2289322915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2289222911_
                                                        _g2289322915_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2289222911_
                                                _g2289322915_))))))
                                 (declare (not safe))
                                 (_g2289123062_ _L22879_))))
                            (___kont4110841109_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E22829_ '()))))))
                        (if (gx#stx-pair? ___stx4110141102_)
                            (let ((_e2283823073_
                                   (gx#syntax-e ___stx4110141102_)))
                              (let ((_tl2283623080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2283823073_)))
                                    (_hd2283723077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2283823073_))))
                                (if (gx#stx-null? _tl2283623080_)
                                    (___kont4110441105_ _hd2283723077_)
                                    (___kont4110641107_
                                     _tl2283623080_
                                     _hd2283723077_))))
                            (___kont4110841109_))))))
                 (_generate122473_
                  (lambda (_clause22475_ _body22477_ _E22478_)
                    (let* ((_g2248022504_
                            (lambda (_g2248122500_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2248122500_)))
                           (_g2247922823_
                            (lambda (_g2248122508_)
                              (if (gx#stx-pair? _g2248122508_)
                                  (let ((_e2248622511_
                                         (gx#syntax-e _g2248122508_)))
                                    (let ((_hd2248522515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2248622511_)))
                                          (_tl2248422518_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2248622511_))))
                                      (if (gx#stx-pair? _tl2248422518_)
                                          (let ((_e2248922521_
                                                 (gx#syntax-e _tl2248422518_)))
                                            (let ((_hd2248822525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2248922521_)))
                                                  (_tl2248722528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2248922521_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2248822525_)
                                                  (let ((_g42448_
                                                         (gx#syntax-split-splice
                                                          _hd2248822525_
                                                          '0)))
                                                    (begin
                                                      (let ((_g42449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g42448_)
                           (##vector-length _g42448_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g42449_ 2)))
                    (error "Context expects 2 values" _g42449_)))
              (let ((_target2249022531_
                     (let () (declare (not safe)) (##vector-ref _g42448_ 0)))
                    (_tl2249222534_
                     (let () (declare (not safe)) (##vector-ref _g42448_ 1))))
                (if (gx#stx-null? _tl2249222534_)
                    (letrec ((_loop2249322537_
                              (lambda (_hd2249122541_ _var2249722544_)
                                (if (gx#stx-pair? _hd2249122541_)
                                    (let ((_e2249422547_
                                           (gx#syntax-e _hd2249122541_)))
                                      (let ((_lp-hd2249522551_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2249422547_)))
                                            (_lp-tl2249622554_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2249422547_))))
                                        (let ((__tmp42453
                                               (cons _lp-hd2249522551_
                                                     _var2249722544_)))
                                          (declare (not safe))
                                          (_loop2249322537_
                                           _lp-tl2249622554_
                                           __tmp42453))))
                                    (let ((_var2249822557_
                                           (reverse _var2249722544_)))
                                      (if (gx#stx-null? _tl2248722528_)
                                          ((lambda (_L22561_ _L22563_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2258422587_
                                                                _g2258522590_)
                                                         (cons _g2258422587_
                                                               _g2258522590_))
                                                       '()
                                                       _L22561_)
                                                _stx22464_)
                                               (let* ((_g2259322601_
                                                       (lambda (_g2259422597_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2259422597_)))
                                                      (_g2259222695_
                                                       (lambda (_g2259422605_)
                                                         ((lambda (_L22608_)
                                                            (let ()
                                                              (let* ((_g2262122629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2262222625_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2262222625_)))
                             (_g2262022691_
                              (lambda (_g2262222633_)
                                ((lambda (_L22636_)
                                   (let ()
                                     (let* ((_g2264922657_
                                             (lambda (_g2265022653_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2265022653_)))
                                            (_g2264822679_
                                             (lambda (_g2265022661_)
                                               ((lambda (_L22664_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L22563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L22664_ '()))
                           (cons _L22608_ '())))
               (gx#stx-source _stx22464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2265022661_)))
                                            (__tmp42450
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons (foldr (lambda (_g2268222685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2268322688_)
                           (cons _g2268222685_ _g2268322688_))
                         '()
                         _L22561_)
                  (cons _L22636_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22464_))))
                                       (declare (not safe))
                                       (_g2264822679_ __tmp42450))))
                                 _g2262222633_))))
                        (declare (not safe))
                        (_g2262022691_ _body22477_))))
                  _g2259422605_)))
              (__tmp42451
               (let _recur22699_ ((_rest22702_ _clause22475_)
                                  (_rest-targets22704_ _tgt-lst22466_))
                 (let* ((___stx4112741128_ _rest22702_)
                        (_g2270722719_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            ___stx4112741128_))))
                   (let ((___kont4113041131_
                          (lambda (_L22755_ _L22757_)
                            (let* ((_g2277222784_
                                    (lambda (_g2277322780_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2277322780_)))
                                   (_g2277122815_
                                    (lambda (_g2277322788_)
                                      (if (gx#stx-pair? _g2277322788_)
                                          (let ((_e2277822791_
                                                 (gx#syntax-e _g2277322788_)))
                                            (let ((_hd2277722795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2277822791_)))
                                                  (_tl2277622798_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2277822791_))))
                                              ((lambda (_L22801_ _L22803_)
                                                 (let ((__tmp42452
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur22699_
                                                           _L22755_
                                                           _L22801_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx22464_
                                                    _L22803_
                                                    _L22757_
                                                    __tmp42452
                                                    _E22478_)))
                                               _tl2277622798_
                                               _hd2277722795_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2277222784_ _g2277322788_))))))
                              (declare (not safe))
                              (_g2277122815_ _rest-targets22704_))))
                         (___kont4113241133_
                          (lambda ()
                            (cons _L22563_
                                  (foldr (lambda (_g2272922732_ _g2273022735_)
                                           (cons _g2272922732_ _g2273022735_))
                                         '()
                                         _L22561_)))))
                     (if (gx#stx-pair? ___stx4112741128_)
                         (let ((_e2271322745_ (gx#syntax-e ___stx4112741128_)))
                           (let ((_tl2271122752_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2271322745_)))
                                 (_hd2271222749_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2271322745_))))
                             (___kont4113041131_
                              _tl2271122752_
                              _hd2271222749_)))
                         (___kont4113241133_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2259222695_ __tmp42451))))
                                           _var2249822557_
                                           _hd2248522515_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2248022504_
                                             _g2248122508_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2249322537_ _target2249022531_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2248022504_ _g2248122508_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2248022504_
                                                     _g2248122508_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2248022504_ _g2248122508_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2248022504_ _g2248122508_)))))
                           (__tmp42454
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause22475_)))))
                      (declare (not safe))
                      (_g2247922823_ __tmp42454)))))
          (let ((__tmp42455
                 (let ((__tmp42456 (gx#stx-length _tgt-lst22466_)))
                   (declare (not safe))
                   (_parse-body22469_ __tmp42456))))
            (declare (not safe))
            (_generate-body22471_ __tmp42455)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22366_ _tgt22368_ _clauses22369_)
        (letrec ((_reclause22371_
                  (lambda (_clause22374_)
                    (let* ((___stx4114341144_ _clause22374_)
                           (_g2237922394_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4114341144_))))
                      (let ((___kont4114641147_ (lambda () _clause22374_))
                            (___kont4114841149_
                             (lambda (_L22422_ _L22424_)
                               (gx#stx-wrap-source
                                (cons (cons _L22424_ '()) _L22422_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4115041151_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22366_
                                _clause22374_))))
                        (if (gx#stx-pair? ___stx4114341144_)
                            (let ((_e2238322446_
                                   (gx#syntax-e ___stx4114341144_)))
                              (let ((_tl2238122453_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2238322446_)))
                                    (_hd2238222450_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2238322446_))))
                                (if (gx#identifier? _hd2238222450_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42457_|
                                         _hd2238222450_)
                                        (___kont4114641147_)
                                        (___kont4114841149_
                                         _tl2238122453_
                                         _hd2238222450_))
                                    (___kont4114841149_
                                     _tl2238122453_
                                     _hd2238222450_))))
                            (___kont4115041151_)))))))
          (let ((__tmp42459 (cons _tgt22368_ '()))
                (__tmp42458 (gx#stx-map _reclause22371_ _clauses22369_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx22366_
             __tmp42459
             __tmp42458)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx29975_)
        (let* ((___stx4117141172_ _stx29975_)
               (_g2998030009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4117141172_))))
          (let ((___kont4117441175_
                 (lambda (_L30249_)
                   (let* ((_g3026230270_
                           (lambda (_g3026330266_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3026330266_)))
                          (_g3026130323_
                           (lambda (_g3026330274_)
                             ((lambda (_L30277_)
                                (let ()
                                  (let* ((_g3028930297_
                                          (lambda (_g3029030293_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3029030293_)))
                                         (_g3028830319_
                                          (lambda (_g3029030301_)
                                            ((lambda (_L30304_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30304_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3029030301_))))
                                    (_g3028830319_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30277_ _L30249_))
                                      (gx#stx-source _stx29975_))))))
                              _g3026330274_))))
                     (_g3026130323_ (gx#genident 'e)))))
                (___kont4117641177_
                 (lambda (_L30144_)
                   (let* ((_g3015730165_
                           (lambda (_g3015830161_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3015830161_)))
                          (_g3015630218_
                           (lambda (_g3015830169_)
                             ((lambda (_L30172_)
                                (let ()
                                  (let* ((_g3018430192_
                                          (lambda (_g3018530188_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3018530188_)))
                                         (_g3018330214_
                                          (lambda (_g3018530196_)
                                            ((lambda (_L30199_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30172_
                                                               (cons _L30199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3018530196_))))
                                    (_g3018330214_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30172_ _L30144_))
                                      (gx#stx-source _stx29975_))))))
                              _g3015830169_))))
                     (_g3015630218_ (gx#genident 'args)))))
                (___kont4117841179_
                 (lambda (_L30036_ _L30038_)
                   (let* ((_g3005230060_
                           (lambda (_g3005330056_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3005330056_)))
                          (_g3005130113_
                           (lambda (_g3005330064_)
                             ((lambda (_L30067_)
                                (let ()
                                  (let* ((_g3007930087_
                                          (lambda (_g3008030083_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3008030083_)))
                                         (_g3007830109_
                                          (lambda (_g3008030091_)
                                            ((lambda (_L30094_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L30038_ '()))
                             '())
                       (cons _L30094_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3008030091_))))
                                    (_g3007830109_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx29975_
                                        _L30067_
                                        _L30036_))))))
                              _g3005330064_))))
                     (_g3005130113_ (gx#genident _L30038_))))))
            (let* ((___match4122441225_
                    (lambda (_e3000030016_
                             _hd2999930020_
                             _tl2999830023_
                             _e3000330026_
                             _hd3000230030_
                             _tl3000130033_)
                      (let ((_L30036_ _tl3000130033_)
                            (_L30038_ _hd3000230030_))
                        (if (gx#stx-list? _L30036_)
                            (___kont4117841179_ _L30036_ _L30038_)
                            (let () (declare (not safe)) (_g2998030009_))))))
                   (___match4121241213_
                    (lambda (_e2999230124_
                             _hd2999130128_
                             _tl2999030131_
                             _e2999530134_
                             _hd2999430138_
                             _tl2999330141_)
                      (let ((_L30144_ _tl2999330141_))
                        (if (gx#stx-list? _L30144_)
                            (___kont4117641177_ _L30144_)
                            (___match4122441225_
                             _e2999230124_
                             _hd2999130128_
                             _tl2999030131_
                             _e2999530134_
                             _hd2999430138_
                             _tl2999330141_)))))
                   (___match4119641197_
                    (lambda (_e2998530229_
                             _hd2998430233_
                             _tl2998330236_
                             _e2998830239_
                             _hd2998730243_
                             _tl2998630246_)
                      (let ((_L30249_ _tl2998630246_))
                        (if (gx#stx-list? _L30249_)
                            (___kont4117441175_ _L30249_)
                            (___match4122441225_
                             _e2998530229_
                             _hd2998430233_
                             _tl2998330236_
                             _e2998830239_
                             _hd2998730243_
                             _tl2998630246_))))))
              (if (gx#stx-pair? ___stx4117141172_)
                  (let ((_e2998530229_ (gx#syntax-e ___stx4117141172_)))
                    (let ((_tl2998330236_
                           (let () (declare (not safe)) (##cdr _e2998530229_)))
                          (_hd2998430233_
                           (let ()
                             (declare (not safe))
                             (##car _e2998530229_))))
                      (if (gx#stx-pair? _tl2998330236_)
                          (let ((_e2998830239_ (gx#syntax-e _tl2998330236_)))
                            (let ((_tl2998630246_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2998830239_)))
                                  (_hd2998730243_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2998830239_))))
                              (if (gx#identifier? _hd2998730243_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42461_|
                                       _hd2998730243_)
                                      (___match4119641197_
                                       _e2998530229_
                                       _hd2998430233_
                                       _tl2998330236_
                                       _e2998830239_
                                       _hd2998730243_
                                       _tl2998630246_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42460_|
                                           _hd2998730243_)
                                          (___match4121241213_
                                           _e2998530229_
                                           _hd2998430233_
                                           _tl2998330236_
                                           _e2998830239_
                                           _hd2998730243_
                                           _tl2998630246_)
                                          (___match4122441225_
                                           _e2998530229_
                                           _hd2998430233_
                                           _tl2998330236_
                                           _e2998830239_
                                           _hd2998730243_
                                           _tl2998630246_)))
                                  (___match4122441225_
                                   _e2998530229_
                                   _hd2998430233_
                                   _tl2998330236_
                                   _e2998830239_
                                   _hd2998730243_
                                   _tl2998630246_))))
                          (let () (declare (not safe)) (_g2998030009_)))))
                  (let () (declare (not safe)) (_g2998030009_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30331_)
        (let* ((_g3033430358_
                (lambda (_g3033530354_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3033530354_)))
               (_g3033330570_
                (lambda (_g3033530362_)
                  (if (gx#stx-pair? _g3033530362_)
                      (let ((_e3034030365_ (gx#syntax-e _g3033530362_)))
                        (let ((_hd3033930369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3034030365_)))
                              (_tl3033830372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3034030365_))))
                          (if (gx#stx-pair? _tl3033830372_)
                              (let ((_e3034330375_
                                     (gx#syntax-e _tl3033830372_)))
                                (let ((_hd3034230379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3034330375_)))
                                      (_tl3034130382_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3034330375_))))
                                  (if (gx#stx-pair/null? _hd3034230379_)
                                      (let ((_g42462_
                                             (gx#syntax-split-splice
                                              _hd3034230379_
                                              '0)))
                                        (begin
                                          (let ((_g42463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42462_)
                                                       (##vector-length
                                                        _g42462_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42463_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42463_)))
                                          (let ((_target3034430385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42462_ 0)))
                                                (_tl3034630388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42462_ 1))))
                                            (if (gx#stx-null? _tl3034630388_)
                                                (letrec ((_loop3034730391_
                                                          (lambda (_hd3034530395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3035130398_)
                    (if (gx#stx-pair? _hd3034530395_)
                        (let ((_e3034830401_ (gx#syntax-e _hd3034530395_)))
                          (let ((_lp-hd3034930405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3034830401_)))
                                (_lp-tl3035030408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3034830401_))))
                            (_loop3034730391_
                             _lp-tl3035030408_
                             (cons _lp-hd3034930405_ _e3035130398_))))
                        (let ((_e3035230411_ (reverse _e3035130398_)))
                          ((lambda (_L30415_ _L30417_)
                             (if (gx#stx-list? _L30415_)
                                 (let* ((_g3043530452_
                                         (lambda (_g3043630448_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3043630448_)))
                                        (_g3043430558_
                                         (lambda (_g3043630456_)
                                           (if (gx#stx-pair/null?
                                                _g3043630456_)
                                               (let ((_g42464_
                                                      (gx#syntax-split-splice
                                                       _g3043630456_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42465_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42464_)
                        (##vector-length _g42464_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42465_ 2)))
                 (error "Context expects 2 values" _g42465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3043830459_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42464_
                                                             0)))
                                                         (_tl3044030462_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42464_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3044030462_)
                                                         (letrec ((_loop3044130465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3043930469_ _$e3044530472_)
                             (if (gx#stx-pair? _hd3043930469_)
                                 (let ((_e3044230475_
                                        (gx#syntax-e _hd3043930469_)))
                                   (let ((_lp-hd3044330479_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3044230475_)))
                                         (_lp-tl3044430482_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3044230475_))))
                                     (_loop3044130465_
                                      _lp-tl3044430482_
                                      (cons _lp-hd3044330479_
                                            _$e3044530472_))))
                                 (let ((_$e3044630485_
                                        (reverse _$e3044530472_)))
                                   ((lambda (_L30489_)
                                      (let ()
                                        (let* ((_g3050530513_
                                                (lambda (_g3050630509_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g3050630509_)))
                                               (_g3050430546_
                                                (lambda (_g3050630517_)
                                                  ((lambda (_L30520_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30417_
                                _L30489_)
                               (foldr (lambda (_g3053430538_
                                               _g3053530541_
                                               _g3053630543_)
                                        (cons (cons _g3053530541_
                                                    (cons _g3053430538_ '()))
                                              _g3053630543_))
                                      '()
                                      _L30417_
                                      _L30489_))
                             (cons _L30520_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3050630517_))))
                                          (_g3050430546_
                                           (let ((__tmp42466
                                                  (foldr (lambda (_g3054930552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3055030555_)
                   (cons _g3054930552_ _g3055030555_))
                 '()
                 _L30489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30331_
                                              __tmp42466
                                              _L30415_))))))
                                    _$e3044630485_))))))
                   (_loop3044130465_ _target3043830459_ '()))
                 (_g3043530452_ _g3043630456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3043530452_
                                                _g3043630456_)))))
                                   (_g3043430558_
                                    (gx#gentemps
                                     (foldr (lambda (_g3056130564_
                                                     _g3056230567_)
                                              (cons _g3056130564_
                                                    _g3056230567_))
                                            '()
                                            _L30417_))))
                                 (_g3033430358_ _g3033530362_)))
                           _tl3034130382_
                           _e3035230411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3034730391_
                                                   _target3034430385_
                                                   '()))
                                                (_g3033430358_
                                                 _g3033530362_)))))
                                      (_g3033430358_ _g3033530362_))))
                              (_g3033430358_ _g3033530362_))))
                      (_g3033430358_ _g3033530362_)))))
          (_g3033330570_ _stx30331_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30576_)
        (let* ((___stx4122741228_ _$stx30576_)
               (_g3058230665_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4122741228_))))
          (let ((___kont4123041231_
                 (lambda (_L30995_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3101131014_ _g3101231017_)
                                        (cons _g3101131014_ _g3101231017_))
                                      '()
                                      _L30995_)))))
                (___kont4123441235_
                 (lambda (_L30903_ _L30905_ _L30906_ _L30907_)
                   (cons _L30907_
                         (cons (cons (cons _L30906_ (cons _L30905_ '())) '())
                               (foldr (lambda (_g3092930932_ _g3093030935_)
                                        (cons _g3092930932_ _g3093030935_))
                                      '()
                                      _L30903_)))))
                (___kont4123841239_
                 (lambda (_L30776_ _L30778_ _L30779_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3080530808_ _g3080630811_)
                                        (cons _g3080530808_ _g3080630811_))
                                      '()
                                      _L30778_)
                               (cons (cons (foldr (lambda (_g3080330814_
                                                           _g3080430817_)
                                                    (cons _g3080330814_
                                                          _g3080430817_))
                                                  '()
                                                  _L30779_)
                                           (foldr (lambda (_g3080130820_
                                                           _g3080230823_)
                                                    (cons _g3080130820_
                                                          _g3080230823_))
                                                  '()
                                                  _L30776_))
                                     '()))))))
            (let* ((___match4132041321_
                    (lambda (_e3063030672_
                             _hd3062930676_
                             _tl3062830679_
                             _e3063330682_
                             _hd3063230686_
                             _tl3063130689_
                             ___splice4124041241_
                             _target3063430692_
                             _tl3063630695_)
                      (letrec ((_loop3063730698_
                                (lambda (_hd3063530702_
                                         _expr3064130705_
                                         _hd3064230707_)
                                  (if (gx#stx-pair? _hd3063530702_)
                                      (let ((_e3063830710_
                                             (gx#syntax-e _hd3063530702_)))
                                        (let ((_lp-tl3064030717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3063830710_)))
                                              (_lp-hd3063930714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3063830710_))))
                                          (if (gx#stx-pair? _lp-hd3063930714_)
                                              (let ((_e3064730720_
                                                     (gx#syntax-e
                                                      _lp-hd3063930714_)))
                                                (let ((_tl3064530727_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3064730720_)))
                                                      (_hd3064630724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3064730720_))))
                                                  (if (gx#stx-pair?
                                                       _tl3064530727_)
                                                      (let ((_e3065030730_
                                                             (gx#syntax-e
                                                              _tl3064530727_)))
                                                        (let ((_tl3064830737_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3065030730_)))
                      (_hd3064930734_
                       (let () (declare (not safe)) (##car _e3065030730_))))
                  (if (gx#stx-null? _tl3064830737_)
                      (_loop3063730698_
                       _lp-tl3064030717_
                       (cons _hd3064930734_ _expr3064130705_)
                       (cons _hd3064630724_ _hd3064230707_))
                      (let () (declare (not safe)) (_g3058230665_)))))
              (let () (declare (not safe)) (_g3058230665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3058230665_)))))
                                      (let ((_hd3064430743_
                                             (reverse _hd3064230707_))
                                            (_expr3064330740_
                                             (reverse _expr3064130705_)))
                                        (if (gx#stx-pair/null? _tl3063130689_)
                                            (let ((___splice4124241243_
                                                   (gx#syntax-split-splice
                                                    _tl3063130689_
                                                    '0)))
                                              (let ((_tl3065330749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4124241243_
                                                        '1)))
                                                    (_target3065130746_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4124241243_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3065330749_)
                                                    (letrec ((_loop3065430752_
                                                              (lambda (_hd3065230756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3065830759_)
                        (if (gx#stx-pair? _hd3065230756_)
                            (let ((_e3065530762_ (gx#syntax-e _hd3065230756_)))
                              (let ((_lp-tl3065730769_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3065530762_)))
                                    (_lp-hd3065630766_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3065530762_))))
                                (_loop3065430752_
                                 _lp-tl3065730769_
                                 (cons _lp-hd3065630766_ _body3065830759_))))
                            (let ((_body3065930772_
                                   (reverse _body3065830759_)))
                              (___kont4123841239_
                               _body3065930772_
                               _expr3064330740_
                               _hd3064430743_))))))
              (_loop3065430752_ _target3065130746_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3058230665_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3058230665_))))))))
                        (_loop3063730698_ _target3063430692_ '() '()))))
                   (___match4131241313_
                    (lambda (_e3063030672_
                             _hd3062930676_
                             _tl3062830679_
                             _e3063330682_
                             _hd3063230686_
                             _tl3063130689_)
                      (if (gx#stx-pair/null? _hd3063230686_)
                          (let ((___splice4124041241_
                                 (gx#syntax-split-splice _hd3063230686_ '0)))
                            (let ((_tl3063630695_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4124041241_ '1)))
                                  (_target3063430692_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4124041241_ '0))))
                              (if (gx#stx-null? _tl3063630695_)
                                  (___match4132041321_
                                   _e3063030672_
                                   _hd3062930676_
                                   _tl3062830679_
                                   _e3063330682_
                                   _hd3063230686_
                                   _tl3063130689_
                                   ___splice4124041241_
                                   _target3063430692_
                                   _tl3063630695_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3058230665_)))))
                          (let () (declare (not safe)) (_g3058230665_)))))
                   (___match4130041301_
                    (lambda (_e3060630833_
                             _hd3060530837_
                             _tl3060430840_
                             _e3060930843_
                             _hd3060830847_
                             _tl3060730850_
                             _e3061230853_
                             _hd3061130857_
                             _tl3061030860_
                             _e3061530863_
                             _hd3061430867_
                             _tl3061330870_
                             ___splice4123641237_
                             _target3061630873_
                             _tl3061830876_)
                      (letrec ((_loop3061930879_
                                (lambda (_hd3061730883_ _body3062330886_)
                                  (if (gx#stx-pair? _hd3061730883_)
                                      (let ((_e3062030889_
                                             (gx#syntax-e _hd3061730883_)))
                                        (let ((_lp-tl3062230896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3062030889_)))
                                              (_lp-hd3062130893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3062030889_))))
                                          (_loop3061930879_
                                           _lp-tl3062230896_
                                           (cons _lp-hd3062130893_
                                                 _body3062330886_))))
                                      (let ((_body3062430899_
                                             (reverse _body3062330886_)))
                                        (let ((_L30903_ _body3062430899_)
                                              (_L30905_ _hd3061430867_)
                                              (_L30906_ _hd3061130857_)
                                              (_L30907_ _hd3060530837_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L30906_))
                                              (___kont4123441235_
                                               _L30903_
                                               _L30905_
                                               _L30906_
                                               _L30907_)
                                              (___match4131241313_
                                               _e3060630833_
                                               _hd3060530837_
                                               _tl3060430840_
                                               _e3060930843_
                                               _hd3060830847_
                                               _tl3060730850_))))))))
                        (_loop3061930879_ _target3061630873_ '()))))
                   (___match4126641267_
                    (lambda (_e3058730945_
                             _hd3058630949_
                             _tl3058530952_
                             _e3059030955_
                             _hd3058930959_
                             _tl3058830962_
                             ___splice4123241233_
                             _target3059130965_
                             _tl3059330968_)
                      (letrec ((_loop3059430971_
                                (lambda (_hd3059230975_ _body3059830978_)
                                  (if (gx#stx-pair? _hd3059230975_)
                                      (let ((_e3059530981_
                                             (gx#syntax-e _hd3059230975_)))
                                        (let ((_lp-tl3059730988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3059530981_)))
                                              (_lp-hd3059630985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3059530981_))))
                                          (_loop3059430971_
                                           _lp-tl3059730988_
                                           (cons _lp-hd3059630985_
                                                 _body3059830978_))))
                                      (let ((_body3059930991_
                                             (reverse _body3059830978_)))
                                        (___kont4123041231_
                                         _body3059930991_))))))
                        (_loop3059430971_ _target3059130965_ '())))))
              (if (gx#stx-pair? ___stx4122741228_)
                  (let ((_e3058730945_ (gx#syntax-e ___stx4122741228_)))
                    (let ((_tl3058530952_
                           (let () (declare (not safe)) (##cdr _e3058730945_)))
                          (_hd3058630949_
                           (let ()
                             (declare (not safe))
                             (##car _e3058730945_))))
                      (if (gx#stx-pair? _tl3058530952_)
                          (let ((_e3059030955_ (gx#syntax-e _tl3058530952_)))
                            (let ((_tl3058830962_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3059030955_)))
                                  (_hd3058930959_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3059030955_))))
                              (if (gx#stx-null? _hd3058930959_)
                                  (if (gx#stx-pair/null? _tl3058830962_)
                                      (let ((___splice4123241233_
                                             (gx#syntax-split-splice
                                              _tl3058830962_
                                              '0)))
                                        (let ((_tl3059330968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4123241233_
                                                  '1)))
                                              (_target3059130965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4123241233_
                                                  '0))))
                                          (if (gx#stx-null? _tl3059330968_)
                                              (___match4126641267_
                                               _e3058730945_
                                               _hd3058630949_
                                               _tl3058530952_
                                               _e3059030955_
                                               _hd3058930959_
                                               _tl3058830962_
                                               ___splice4123241233_
                                               _target3059130965_
                                               _tl3059330968_)
                                              (if (gx#stx-pair/null?
                                                   _hd3058930959_)
                                                  (let ((___splice4124041241_
                                                         (gx#syntax-split-splice
                                                          _hd3058930959_
                                                          '0)))
                                                    (let ((_tl3063630695_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4124041241_
                                                              '1)))
                                                          (_target3063430692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4124041241_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3063630695_)
                                                          (___match4132041321_
                                                           _e3058730945_
                                                           _hd3058630949_
                                                           _tl3058530952_
                                                           _e3059030955_
                                                           _hd3058930959_
                                                           _tl3058830962_
                                                           ___splice4124041241_
                                                           _target3063430692_
                                                           _tl3063630695_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3058230665_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3058230665_))))))
                                      (if (gx#stx-pair/null? _hd3058930959_)
                                          (let ((___splice4124041241_
                                                 (gx#syntax-split-splice
                                                  _hd3058930959_
                                                  '0)))
                                            (let ((_tl3063630695_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4124041241_
                                                      '1)))
                                                  (_target3063430692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4124041241_
                                                      '0))))
                                              (if (gx#stx-null? _tl3063630695_)
                                                  (___match4132041321_
                                                   _e3058730945_
                                                   _hd3058630949_
                                                   _tl3058530952_
                                                   _e3059030955_
                                                   _hd3058930959_
                                                   _tl3058830962_
                                                   ___splice4124041241_
                                                   _target3063430692_
                                                   _tl3063630695_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3058230665_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3058230665_))))
                                  (if (gx#stx-pair? _hd3058930959_)
                                      (let ((_e3061230853_
                                             (gx#syntax-e _hd3058930959_)))
                                        (let ((_tl3061030860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3061230853_)))
                                              (_hd3061130857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3061230853_))))
                                          (if (gx#stx-pair? _tl3061030860_)
                                              (let ((_e3061530863_
                                                     (gx#syntax-e
                                                      _tl3061030860_)))
                                                (let ((_tl3061330870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3061530863_)))
                                                      (_hd3061430867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3061530863_))))
                                                  (if (gx#stx-null?
                                                       _tl3061330870_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3058830962_)
                                                          (let ((___splice4123641237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3058830962_ '0)))
                    (let ((_tl3061830876_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4123641237_ '1)))
                          (_target3061630873_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4123641237_ '0))))
                      (if (gx#stx-null? _tl3061830876_)
                          (___match4130041301_
                           _e3058730945_
                           _hd3058630949_
                           _tl3058530952_
                           _e3059030955_
                           _hd3058930959_
                           _tl3058830962_
                           _e3061230853_
                           _hd3061130857_
                           _tl3061030860_
                           _e3061530863_
                           _hd3061430867_
                           _tl3061330870_
                           ___splice4123641237_
                           _target3061630873_
                           _tl3061830876_)
                          (if (gx#stx-pair/null? _hd3058930959_)
                              (let ((___splice4124041241_
                                     (gx#syntax-split-splice
                                      _hd3058930959_
                                      '0)))
                                (let ((_tl3063630695_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4124041241_
                                          '1)))
                                      (_target3063430692_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4124041241_
                                          '0))))
                                  (if (gx#stx-null? _tl3063630695_)
                                      (___match4132041321_
                                       _e3058730945_
                                       _hd3058630949_
                                       _tl3058530952_
                                       _e3059030955_
                                       _hd3058930959_
                                       _tl3058830962_
                                       ___splice4124041241_
                                       _target3063430692_
                                       _tl3063630695_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3058230665_)))))
                              (let () (declare (not safe)) (_g3058230665_))))))
                  (if (gx#stx-pair/null? _hd3058930959_)
                      (let ((___splice4124041241_
                             (gx#syntax-split-splice _hd3058930959_ '0)))
                        (let ((_tl3063630695_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4124041241_ '1)))
                              (_target3063430692_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4124041241_ '0))))
                          (if (gx#stx-null? _tl3063630695_)
                              (___match4132041321_
                               _e3058730945_
                               _hd3058630949_
                               _tl3058530952_
                               _e3059030955_
                               _hd3058930959_
                               _tl3058830962_
                               ___splice4124041241_
                               _target3063430692_
                               _tl3063630695_)
                              (let () (declare (not safe)) (_g3058230665_)))))
                      (let () (declare (not safe)) (_g3058230665_))))
              (if (gx#stx-pair/null? _hd3058930959_)
                  (let ((___splice4124041241_
                         (gx#syntax-split-splice _hd3058930959_ '0)))
                    (let ((_tl3063630695_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4124041241_ '1)))
                          (_target3063430692_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4124041241_ '0))))
                      (if (gx#stx-null? _tl3063630695_)
                          (___match4132041321_
                           _e3058730945_
                           _hd3058630949_
                           _tl3058530952_
                           _e3059030955_
                           _hd3058930959_
                           _tl3058830962_
                           ___splice4124041241_
                           _target3063430692_
                           _tl3063630695_)
                          (let () (declare (not safe)) (_g3058230665_)))))
                  (let () (declare (not safe)) (_g3058230665_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3058930959_)
                                                  (let ((___splice4124041241_
                                                         (gx#syntax-split-splice
                                                          _hd3058930959_
                                                          '0)))
                                                    (let ((_tl3063630695_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4124041241_
                                                              '1)))
                                                          (_target3063430692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4124041241_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3063630695_)
                                                          (___match4132041321_
                                                           _e3058730945_
                                                           _hd3058630949_
                                                           _tl3058530952_
                                                           _e3059030955_
                                                           _hd3058930959_
                                                           _tl3058830962_
                                                           ___splice4124041241_
                                                           _target3063430692_
                                                           _tl3063630695_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3058230665_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3058230665_))))))
                                      (if (gx#stx-pair/null? _hd3058930959_)
                                          (let ((___splice4124041241_
                                                 (gx#syntax-split-splice
                                                  _hd3058930959_
                                                  '0)))
                                            (let ((_tl3063630695_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4124041241_
                                                      '1)))
                                                  (_target3063430692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4124041241_
                                                      '0))))
                                              (if (gx#stx-null? _tl3063630695_)
                                                  (___match4132041321_
                                                   _e3058730945_
                                                   _hd3058630949_
                                                   _tl3058530952_
                                                   _e3059030955_
                                                   _hd3058930959_
                                                   _tl3058830962_
                                                   ___splice4124041241_
                                                   _target3063430692_
                                                   _tl3063630695_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3058230665_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3058230665_)))))))
                          (let () (declare (not safe)) (_g3058230665_)))))
                  (let () (declare (not safe)) (_g3058230665_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31028_)
        (let* ((___stx4132341324_ _$stx31028_)
               (_g3103331085_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4132341324_))))
          (let ((___kont4132641327_
                 (lambda (_L31255_ _L31257_ _L31258_ _L31259_ _L31260_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31259_ (cons _L31258_ '())) '())
                               (cons (cons _L31260_
                                           (cons _L31257_
                                                 (foldr (lambda (_g3128531288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3128631291_)
                  (cons _g3128531288_ _g3128631291_))
                '()
                _L31255_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4133041331_
                 (lambda (_L31142_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3115931162_ _g3116031165_)
                                        (cons _g3115931162_ _g3116031165_))
                                      '()
                                      _L31142_))))))
            (let* ((___match4139641397_
                    (lambda (_e3106731092_
                             _hd3106631096_
                             _tl3106531099_
                             _e3107031102_
                             _hd3106931106_
                             _tl3106831109_
                             ___splice4133241333_
                             _target3107131112_
                             _tl3107331115_)
                      (letrec ((_loop3107431118_
                                (lambda (_hd3107231122_ _body3107831125_)
                                  (if (gx#stx-pair? _hd3107231122_)
                                      (let ((_e3107531128_
                                             (gx#syntax-e _hd3107231122_)))
                                        (let ((_lp-tl3107731135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3107531128_)))
                                              (_lp-hd3107631132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3107531128_))))
                                          (_loop3107431118_
                                           _lp-tl3107731135_
                                           (cons _lp-hd3107631132_
                                                 _body3107831125_))))
                                      (let ((_body3107931138_
                                             (reverse _body3107831125_)))
                                        (___kont4133041331_
                                         _body3107931138_))))))
                        (_loop3107431118_ _target3107131112_ '()))))
                   (___match4137441375_
                    (lambda (_e3104231175_
                             _hd3104131179_
                             _tl3104031182_
                             _e3104531185_
                             _hd3104431189_
                             _tl3104331192_
                             _e3104831195_
                             _hd3104731199_
                             _tl3104631202_
                             _e3105131205_
                             _hd3105031209_
                             _tl3104931212_
                             _e3105431215_
                             _hd3105331219_
                             _tl3105231222_
                             ___splice4132841329_
                             _target3105531225_
                             _tl3105731228_)
                      (letrec ((_loop3105831231_
                                (lambda (_hd3105631235_ _body3106231238_)
                                  (if (gx#stx-pair? _hd3105631235_)
                                      (let ((_e3105931241_
                                             (gx#syntax-e _hd3105631235_)))
                                        (let ((_lp-tl3106131248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3105931241_)))
                                              (_lp-hd3106031245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3105931241_))))
                                          (_loop3105831231_
                                           _lp-tl3106131248_
                                           (cons _lp-hd3106031245_
                                                 _body3106231238_))))
                                      (let ((_body3106331251_
                                             (reverse _body3106231238_)))
                                        (___kont4132641327_
                                         _body3106331251_
                                         _tl3104631202_
                                         _hd3105331219_
                                         _hd3105031209_
                                         _hd3104131179_))))))
                        (_loop3105831231_ _target3105531225_ '())))))
              (if (gx#stx-pair? ___stx4132341324_)
                  (let ((_e3104231175_ (gx#syntax-e ___stx4132341324_)))
                    (let ((_tl3104031182_
                           (let () (declare (not safe)) (##cdr _e3104231175_)))
                          (_hd3104131179_
                           (let ()
                             (declare (not safe))
                             (##car _e3104231175_))))
                      (if (gx#stx-pair? _tl3104031182_)
                          (let ((_e3104531185_ (gx#syntax-e _tl3104031182_)))
                            (let ((_tl3104331192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3104531185_)))
                                  (_hd3104431189_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3104531185_))))
                              (if (gx#stx-pair? _hd3104431189_)
                                  (let ((_e3104831195_
                                         (gx#syntax-e _hd3104431189_)))
                                    (let ((_tl3104631202_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3104831195_)))
                                          (_hd3104731199_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3104831195_))))
                                      (if (gx#stx-pair? _hd3104731199_)
                                          (let ((_e3105131205_
                                                 (gx#syntax-e _hd3104731199_)))
                                            (let ((_tl3104931212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3105131205_)))
                                                  (_hd3105031209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3105131205_))))
                                              (if (gx#stx-pair? _tl3104931212_)
                                                  (let ((_e3105431215_
                                                         (gx#syntax-e
                                                          _tl3104931212_)))
                                                    (let ((_tl3105231222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3105431215_)))
                                                          (_hd3105331219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3105431215_))))
                                                      (if (gx#stx-null?
                                                           _tl3105231222_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3104331192_)
                                                              (let ((___splice4132841329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3104331192_ '0)))
                        (let ((_tl3105731228_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4132841329_ '1)))
                              (_target3105531225_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4132841329_ '0))))
                          (if (gx#stx-null? _tl3105731228_)
                              (___match4137441375_
                               _e3104231175_
                               _hd3104131179_
                               _tl3104031182_
                               _e3104531185_
                               _hd3104431189_
                               _tl3104331192_
                               _e3104831195_
                               _hd3104731199_
                               _tl3104631202_
                               _e3105131205_
                               _hd3105031209_
                               _tl3104931212_
                               _e3105431215_
                               _hd3105331219_
                               _tl3105231222_
                               ___splice4132841329_
                               _target3105531225_
                               _tl3105731228_)
                              (let () (declare (not safe)) (_g3103331085_)))))
                      (let () (declare (not safe)) (_g3103331085_)))
                  (let () (declare (not safe)) (_g3103331085_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3103331085_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3103331085_)))))
                                  (if (gx#stx-null? _hd3104431189_)
                                      (if (gx#stx-pair/null? _tl3104331192_)
                                          (let ((___splice4133241333_
                                                 (gx#syntax-split-splice
                                                  _tl3104331192_
                                                  '0)))
                                            (let ((_tl3107331115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4133241333_
                                                      '1)))
                                                  (_target3107131112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4133241333_
                                                      '0))))
                                              (if (gx#stx-null? _tl3107331115_)
                                                  (___match4139641397_
                                                   _e3104231175_
                                                   _hd3104131179_
                                                   _tl3104031182_
                                                   _e3104531185_
                                                   _hd3104431189_
                                                   _tl3104331192_
                                                   ___splice4133241333_
                                                   _target3107131112_
                                                   _tl3107331115_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3103331085_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3103331085_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3103331085_))))))
                          (let () (declare (not safe)) (_g3103331085_)))))
                  (let () (declare (not safe)) (_g3103331085_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31300_)
        (let* ((___stx4139941400_ _$stx31300_)
               (_g3131131457_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4139941400_))))
          (let ((___kont4140241403_
                 (lambda (_L32061_ _L32063_ _L32064_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3208532088_ _g3208632091_)
                                  (cons (cons _L32064_
                                              (cons _g3208532088_
                                                    (cons _L32061_ '())))
                                        _g3208632091_))
                                '()
                                _L32063_))))
                (___kont4140641407_
                 (lambda (_L31951_ _L31953_ _L31954_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3197531978_ _g3197631981_)
                                  (cons (cons _L31954_
                                              (cons _g3197531978_
                                                    (cons _L31951_ '())))
                                        _g3197631981_))
                                '()
                                _L31953_))))
                (___kont4141041411_
                 (lambda (_L31851_ _L31853_ _L31854_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L31854_
                                     (cons _L31853_ (cons _L31851_ '())))
                               '()))))
                (___kont4141241413_
                 (lambda (_L31777_ _L31779_)
                   (cons _L31779_ (cons _L31777_ '()))))
                (___kont4141441415_
                 (lambda (_L31725_ _L31727_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L31727_
                                           (cons _L31725_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4141641417_
                 (lambda (_L31677_ _L31679_ _L31680_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L31680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L31679_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31677_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4141841419_
                 (lambda (_L31608_ _L31610_ _L31611_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31611_
                                                       (cons _L31610_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31608_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4142041421_
                 (lambda (_L31528_ _L31530_ _L31531_ _L31532_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31532_
                                                       (cons _L31531_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31528_
                                                             (cons (cons _L31530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4157241573_
                    (lambda (_e3140331637_
                             _hd3140231641_
                             _tl3140131644_
                             _e3140631647_
                             _hd3140531651_
                             _tl3140431654_
                             _e3140931657_
                             _hd3140831661_
                             _tl3140731664_)
                      (if (gx#identifier? _hd3140831661_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42468_|
                               _hd3140831661_)
                              (if (gx#stx-pair? _tl3140731664_)
                                  (let ((_e3141231667_
                                         (gx#syntax-e _tl3140731664_)))
                                    (let ((_tl3141031674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3141231667_)))
                                          (_hd3141131671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3141231667_))))
                                      (if (gx#stx-null? _tl3141031674_)
                                          (___kont4141641417_
                                           _hd3141131671_
                                           _hd3140531651_
                                           _hd3140231641_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))
                              (let () (declare (not safe)) (_g3131131457_)))
                          (if (gx#stx-datum? _hd3140831661_)
                              (let ((_e3142531594_ (gx#stx-e _hd3140831661_)))
                                (if (equal? _e3142531594_ '::)
                                    (if (gx#stx-pair? _tl3140731664_)
                                        (let ((_e3142831598_
                                               (gx#syntax-e _tl3140731664_)))
                                          (let ((_tl3142631605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3142831598_)))
                                                (_hd3142731602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3142831598_))))
                                            (if (gx#stx-null? _tl3142631605_)
                                                (___kont4141841419_
                                                 _hd3142731602_
                                                 _hd3140531651_
                                                 _hd3140231641_)
                                                (if (gx#stx-pair?
                                                     _tl3142631605_)
                                                    (let ((_e3144831508_
                                                           (gx#syntax-e
                                                            _tl3142631605_)))
                                                      (let ((_tl3144631515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3144831508_)))
                    (_hd3144731512_
                     (let () (declare (not safe)) (##car _e3144831508_))))
                (if (gx#identifier? _hd3144731512_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g42467_|
                         _hd3144731512_)
                        (if (gx#stx-pair? _tl3144631515_)
                            (let ((_e3145131518_ (gx#syntax-e _tl3144631515_)))
                              (let ((_tl3144931525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3145131518_)))
                                    (_hd3145031522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3145131518_))))
                                (if (gx#stx-null? _tl3144931525_)
                                    (___kont4142041421_
                                     _hd3145031522_
                                     _hd3142731602_
                                     _hd3140531651_
                                     _hd3140231641_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))))
                            (let () (declare (not safe)) (_g3131131457_)))
                        (let () (declare (not safe)) (_g3131131457_)))
                    (let () (declare (not safe)) (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_))))
                              (let () (declare (not safe)) (_g3131131457_))))))
                   (___match4155241553_
                    (lambda (_e3139431705_
                             _hd3139331709_
                             _tl3139231712_
                             _e3139731715_
                             _hd3139631719_
                             _tl3139531722_)
                      (if (gx#stx-null? _tl3139531722_)
                          (___kont4141441415_ _hd3139631719_ _hd3139331709_)
                          (if (gx#stx-pair? _tl3139531722_)
                              (let ((_e3140931657_
                                     (gx#syntax-e _tl3139531722_)))
                                (let ((_tl3140731664_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3140931657_)))
                                      (_hd3140831661_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3140931657_))))
                                  (if (gx#identifier? _hd3140831661_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42468_|
                                           _hd3140831661_)
                                          (if (gx#stx-pair? _tl3140731664_)
                                              (let ((_e3141231667_
                                                     (gx#syntax-e
                                                      _tl3140731664_)))
                                                (let ((_tl3141031674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3141231667_)))
                                                      (_hd3141131671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3141231667_))))
                                                  (if (gx#stx-null?
                                                       _tl3141031674_)
                                                      (___kont4141641417_
                                                       _hd3141131671_
                                                       _hd3139631719_
                                                       _hd3139331709_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3131131457_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))
                                      (if (gx#stx-datum? _hd3140831661_)
                                          (let ((_e3142531594_
                                                 (gx#stx-e _hd3140831661_)))
                                            (if (equal? _e3142531594_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3140731664_)
                                                    (let ((_e3142831598_
                                                           (gx#syntax-e
                                                            _tl3140731664_)))
                                                      (let ((_tl3142631605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3142831598_)))
                    (_hd3142731602_
                     (let () (declare (not safe)) (##car _e3142831598_))))
                (if (gx#stx-null? _tl3142631605_)
                    (___kont4141841419_
                     _hd3142731602_
                     _hd3139631719_
                     _hd3139331709_)
                    (if (gx#stx-pair? _tl3142631605_)
                        (let ((_e3144831508_ (gx#syntax-e _tl3142631605_)))
                          (let ((_tl3144631515_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3144831508_)))
                                (_hd3144731512_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3144831508_))))
                            (if (gx#identifier? _hd3144731512_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42467_|
                                     _hd3144731512_)
                                    (if (gx#stx-pair? _tl3144631515_)
                                        (let ((_e3145131518_
                                               (gx#syntax-e _tl3144631515_)))
                                          (let ((_tl3144931525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3145131518_)))
                                                (_hd3145031522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3145131518_))))
                                            (if (gx#stx-null? _tl3144931525_)
                                                (___kont4142041421_
                                                 _hd3145031522_
                                                 _hd3142731602_
                                                 _hd3139631719_
                                                 _hd3139331709_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3131131457_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3131131457_)))))
                        (let () (declare (not safe)) (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3131131457_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_))))))
                              (let () (declare (not safe)) (_g3131131457_))))))
                   (___match4148241483_
                    (lambda (_e3134231881_
                             _hd3134131885_
                             _tl3134031888_
                             _e3134531891_
                             _hd3134431895_
                             _tl3134331898_
                             _e3134831901_
                             _hd3134731905_
                             _tl3134631908_
                             ___splice4140841409_
                             _target3134931911_
                             _tl3135131914_)
                      (letrec ((_loop3135231917_
                                (lambda (_hd3135031921_ _pred3135631924_)
                                  (if (gx#stx-pair? _hd3135031921_)
                                      (let ((_e3135331927_
                                             (gx#syntax-e _hd3135031921_)))
                                        (let ((_lp-tl3135531934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3135331927_)))
                                              (_lp-hd3135431931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3135331927_))))
                                          (_loop3135231917_
                                           _lp-tl3135531934_
                                           (cons _lp-hd3135431931_
                                                 _pred3135631924_))))
                                      (let ((_pred3135731937_
                                             (reverse _pred3135631924_)))
                                        (if (gx#stx-pair? _tl3134331898_)
                                            (let ((_e3136031941_
                                                   (gx#syntax-e
                                                    _tl3134331898_)))
                                              (let ((_tl3135831948_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3136031941_)))
                                                    (_hd3135931945_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3136031941_))))
                                                (if (gx#stx-null?
                                                     _tl3135831948_)
                                                    (___kont4140641407_
                                                     _hd3135931945_
                                                     _pred3135731937_
                                                     _hd3134131885_)
                                                    (___match4157241573_
                                                     _e3134231881_
                                                     _hd3134131885_
                                                     _tl3134031888_
                                                     _e3134531891_
                                                     _hd3134431895_
                                                     _tl3134331898_
                                                     _e3136031941_
                                                     _hd3135931945_
                                                     _tl3135831948_))))
                                            (___match4155241553_
                                             _e3134231881_
                                             _hd3134131885_
                                             _tl3134031888_
                                             _e3134531891_
                                             _hd3134431895_
                                             _tl3134331898_)))))))
                        (_loop3135231917_ _target3134931911_ '()))))
                   (___match4145241453_
                    (lambda (_e3131831991_
                             _hd3131731995_
                             _tl3131631998_
                             _e3132132001_
                             _hd3132032005_
                             _tl3131932008_
                             _e3132432011_
                             _hd3132332015_
                             _tl3132232018_
                             ___splice4140441405_
                             _target3132532021_
                             _tl3132732024_)
                      (letrec ((_loop3132832027_
                                (lambda (_hd3132632031_ _pred3133232034_)
                                  (if (gx#stx-pair? _hd3132632031_)
                                      (let ((_e3132932037_
                                             (gx#syntax-e _hd3132632031_)))
                                        (let ((_lp-tl3133132044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3132932037_)))
                                              (_lp-hd3133032041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3132932037_))))
                                          (_loop3132832027_
                                           _lp-tl3133132044_
                                           (cons _lp-hd3133032041_
                                                 _pred3133232034_))))
                                      (let ((_pred3133332047_
                                             (reverse _pred3133232034_)))
                                        (if (gx#stx-pair? _tl3131932008_)
                                            (let ((_e3133632051_
                                                   (gx#syntax-e
                                                    _tl3131932008_)))
                                              (let ((_tl3133432058_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3133632051_)))
                                                    (_hd3133532055_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3133632051_))))
                                                (if (gx#stx-null?
                                                     _tl3133432058_)
                                                    (___kont4140241403_
                                                     _hd3133532055_
                                                     _pred3133332047_
                                                     _hd3131731995_)
                                                    (___match4157241573_
                                                     _e3131831991_
                                                     _hd3131731995_
                                                     _tl3131631998_
                                                     _e3132132001_
                                                     _hd3132032005_
                                                     _tl3131932008_
                                                     _e3133632051_
                                                     _hd3133532055_
                                                     _tl3133432058_))))
                                            (___match4155241553_
                                             _e3131831991_
                                             _hd3131731995_
                                             _tl3131631998_
                                             _e3132132001_
                                             _hd3132032005_
                                             _tl3131932008_)))))))
                        (_loop3132832027_ _target3132532021_ '())))))
              (if (gx#stx-pair? ___stx4139941400_)
                  (let ((_e3131831991_ (gx#syntax-e ___stx4139941400_)))
                    (let ((_tl3131631998_
                           (let () (declare (not safe)) (##cdr _e3131831991_)))
                          (_hd3131731995_
                           (let ()
                             (declare (not safe))
                             (##car _e3131831991_))))
                      (if (gx#stx-pair? _tl3131631998_)
                          (let ((_e3132132001_ (gx#syntax-e _tl3131631998_)))
                            (let ((_tl3131932008_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3132132001_)))
                                  (_hd3132032005_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3132132001_))))
                              (if (gx#stx-pair? _hd3132032005_)
                                  (let ((_e3132432011_
                                         (gx#syntax-e _hd3132032005_)))
                                    (let ((_tl3132232018_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3132432011_)))
                                          (_hd3132332015_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3132432011_))))
                                      (if (gx#identifier? _hd3132332015_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42471_|
                                               _hd3132332015_)
                                              (if (gx#stx-pair/null?
                                                   _tl3132232018_)
                                                  (let ((___splice4140441405_
                                                         (gx#syntax-split-splice
                                                          _tl3132232018_
                                                          '0)))
                                                    (let ((_tl3132732024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4140441405_
                                                              '1)))
                                                          (_target3132532021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4140441405_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3132732024_)
                                                          (___match4145241453_
                                                           _e3131831991_
                                                           _hd3131731995_
                                                           _tl3131631998_
                                                           _e3132132001_
                                                           _hd3132032005_
                                                           _tl3131932008_
                                                           _e3132432011_
                                                           _hd3132332015_
                                                           _tl3132232018_
                                                           ___splice4140441405_
                                                           _target3132532021_
                                                           _tl3132732024_)
                                                          (if (gx#stx-pair?
                                                               _tl3131932008_)
                                                              (let ((_e3138931767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3131932008_)))
                        (let ((_tl3138731774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3138931767_)))
                              (_hd3138831771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3138931767_))))
                          (if (gx#stx-null? _tl3138731774_)
                              (___kont4141241413_
                               _hd3138831771_
                               _hd3132032005_)
                              (if (gx#identifier? _hd3138831771_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42468_|
                                       _hd3138831771_)
                                      (if (gx#stx-pair? _tl3138731774_)
                                          (let ((_e3141231667_
                                                 (gx#syntax-e _tl3138731774_)))
                                            (let ((_tl3141031674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3141231667_)))
                                                  (_hd3141131671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3141231667_))))
                                              (if (gx#stx-null? _tl3141031674_)
                                                  (___kont4141641417_
                                                   _hd3141131671_
                                                   _hd3132032005_
                                                   _hd3131731995_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3131131457_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3131131457_)))
                                  (if (gx#stx-datum? _hd3138831771_)
                                      (let ((_e3142531594_
                                             (gx#stx-e _hd3138831771_)))
                                        (if (equal? _e3142531594_ '::)
                                            (if (gx#stx-pair? _tl3138731774_)
                                                (let ((_e3142831598_
                                                       (gx#syntax-e
                                                        _tl3138731774_)))
                                                  (let ((_tl3142631605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3142831598_)))
                                                        (_hd3142731602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3142831598_))))
                                                    (if (gx#stx-null?
                                                         _tl3142631605_)
                                                        (___kont4141841419_
                                                         _hd3142731602_
                                                         _hd3132032005_
                                                         _hd3131731995_)
                                                        (if (gx#stx-pair?
                                                             _tl3142631605_)
                                                            (let ((_e3144831508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3142631605_)))
                      (let ((_tl3144631515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3144831508_)))
                            (_hd3144731512_
                             (let ()
                               (declare (not safe))
                               (##car _e3144831508_))))
                        (if (gx#identifier? _hd3144731512_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42467_|
                                 _hd3144731512_)
                                (if (gx#stx-pair? _tl3144631515_)
                                    (let ((_e3145131518_
                                           (gx#syntax-e _tl3144631515_)))
                                      (let ((_tl3144931525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3145131518_)))
                                            (_hd3145031522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3145131518_))))
                                        (if (gx#stx-null? _tl3144931525_)
                                            (___kont4142041421_
                                             _hd3145031522_
                                             _hd3142731602_
                                             _hd3132032005_
                                             _hd3131731995_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))
                                (let () (declare (not safe)) (_g3131131457_)))
                            (let () (declare (not safe)) (_g3131131457_)))))
                    (let () (declare (not safe)) (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3131131457_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3131131457_)))))))
                      (if (gx#stx-null? _tl3131932008_)
                          (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                          (let () (declare (not safe)) (_g3131131457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3131932008_)
                                                      (let ((_e3138931767_
                                                             (gx#syntax-e
                                                              _tl3131932008_)))
                                                        (let ((_tl3138731774_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3138931767_)))
                      (_hd3138831771_
                       (let () (declare (not safe)) (##car _e3138931767_))))
                  (if (gx#stx-null? _tl3138731774_)
                      (___kont4141241413_ _hd3138831771_ _hd3132032005_)
                      (if (gx#identifier? _hd3138831771_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42468_|
                               _hd3138831771_)
                              (if (gx#stx-pair? _tl3138731774_)
                                  (let ((_e3141231667_
                                         (gx#syntax-e _tl3138731774_)))
                                    (let ((_tl3141031674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3141231667_)))
                                          (_hd3141131671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3141231667_))))
                                      (if (gx#stx-null? _tl3141031674_)
                                          (___kont4141641417_
                                           _hd3141131671_
                                           _hd3132032005_
                                           _hd3131731995_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))
                              (let () (declare (not safe)) (_g3131131457_)))
                          (if (gx#stx-datum? _hd3138831771_)
                              (let ((_e3142531594_ (gx#stx-e _hd3138831771_)))
                                (if (equal? _e3142531594_ '::)
                                    (if (gx#stx-pair? _tl3138731774_)
                                        (let ((_e3142831598_
                                               (gx#syntax-e _tl3138731774_)))
                                          (let ((_tl3142631605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3142831598_)))
                                                (_hd3142731602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3142831598_))))
                                            (if (gx#stx-null? _tl3142631605_)
                                                (___kont4141841419_
                                                 _hd3142731602_
                                                 _hd3132032005_
                                                 _hd3131731995_)
                                                (if (gx#stx-pair?
                                                     _tl3142631605_)
                                                    (let ((_e3144831508_
                                                           (gx#syntax-e
                                                            _tl3142631605_)))
                                                      (let ((_tl3144631515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3144831508_)))
                    (_hd3144731512_
                     (let () (declare (not safe)) (##car _e3144831508_))))
                (if (gx#identifier? _hd3144731512_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g42467_|
                         _hd3144731512_)
                        (if (gx#stx-pair? _tl3144631515_)
                            (let ((_e3145131518_ (gx#syntax-e _tl3144631515_)))
                              (let ((_tl3144931525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3145131518_)))
                                    (_hd3145031522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3145131518_))))
                                (if (gx#stx-null? _tl3144931525_)
                                    (___kont4142041421_
                                     _hd3145031522_
                                     _hd3142731602_
                                     _hd3132032005_
                                     _hd3131731995_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))))
                            (let () (declare (not safe)) (_g3131131457_)))
                        (let () (declare (not safe)) (_g3131131457_)))
                    (let () (declare (not safe)) (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_))))
                              (let ()
                                (declare (not safe))
                                (_g3131131457_)))))))
              (if (gx#stx-null? _tl3131932008_)
                  (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                  (let () (declare (not safe)) (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42470_|
                                                   _hd3132332015_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3132232018_)
                                                      (let ((___splice4140841409_
                                                             (gx#syntax-split-splice
                                                              _tl3132232018_
                                                              '0)))
                                                        (let ((_tl3135131914_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4140841409_ '1)))
                      (_target3134931911_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4140841409_ '0))))
                  (if (gx#stx-null? _tl3135131914_)
                      (___match4148241483_
                       _e3131831991_
                       _hd3131731995_
                       _tl3131631998_
                       _e3132132001_
                       _hd3132032005_
                       _tl3131932008_
                       _e3132432011_
                       _hd3132332015_
                       _tl3132232018_
                       ___splice4140841409_
                       _target3134931911_
                       _tl3135131914_)
                      (if (gx#stx-pair? _tl3131932008_)
                          (let ((_e3138931767_ (gx#syntax-e _tl3131932008_)))
                            (let ((_tl3138731774_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3138931767_)))
                                  (_hd3138831771_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3138931767_))))
                              (if (gx#stx-null? _tl3138731774_)
                                  (___kont4141241413_
                                   _hd3138831771_
                                   _hd3132032005_)
                                  (if (gx#identifier? _hd3138831771_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42468_|
                                           _hd3138831771_)
                                          (if (gx#stx-pair? _tl3138731774_)
                                              (let ((_e3141231667_
                                                     (gx#syntax-e
                                                      _tl3138731774_)))
                                                (let ((_tl3141031674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3141231667_)))
                                                      (_hd3141131671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3141231667_))))
                                                  (if (gx#stx-null?
                                                       _tl3141031674_)
                                                      (___kont4141641417_
                                                       _hd3141131671_
                                                       _hd3132032005_
                                                       _hd3131731995_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3131131457_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))
                                      (if (gx#stx-datum? _hd3138831771_)
                                          (let ((_e3142531594_
                                                 (gx#stx-e _hd3138831771_)))
                                            (if (equal? _e3142531594_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3138731774_)
                                                    (let ((_e3142831598_
                                                           (gx#syntax-e
                                                            _tl3138731774_)))
                                                      (let ((_tl3142631605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3142831598_)))
                    (_hd3142731602_
                     (let () (declare (not safe)) (##car _e3142831598_))))
                (if (gx#stx-null? _tl3142631605_)
                    (___kont4141841419_
                     _hd3142731602_
                     _hd3132032005_
                     _hd3131731995_)
                    (if (gx#stx-pair? _tl3142631605_)
                        (let ((_e3144831508_ (gx#syntax-e _tl3142631605_)))
                          (let ((_tl3144631515_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3144831508_)))
                                (_hd3144731512_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3144831508_))))
                            (if (gx#identifier? _hd3144731512_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42467_|
                                     _hd3144731512_)
                                    (if (gx#stx-pair? _tl3144631515_)
                                        (let ((_e3145131518_
                                               (gx#syntax-e _tl3144631515_)))
                                          (let ((_tl3144931525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3145131518_)))
                                                (_hd3145031522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3145131518_))))
                                            (if (gx#stx-null? _tl3144931525_)
                                                (___kont4142041421_
                                                 _hd3145031522_
                                                 _hd3142731602_
                                                 _hd3132032005_
                                                 _hd3131731995_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3131131457_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3131131457_)))))
                        (let () (declare (not safe)) (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3131131457_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))))))
                          (if (gx#stx-null? _tl3131932008_)
                              (___kont4141441415_
                               _hd3132032005_
                               _hd3131731995_)
                              (let ()
                                (declare (not safe))
                                (_g3131131457_)))))))
              (if (gx#stx-pair? _tl3131932008_)
                  (let ((_e3138931767_ (gx#syntax-e _tl3131932008_)))
                    (let ((_tl3138731774_
                           (let () (declare (not safe)) (##cdr _e3138931767_)))
                          (_hd3138831771_
                           (let ()
                             (declare (not safe))
                             (##car _e3138931767_))))
                      (if (gx#stx-null? _tl3138731774_)
                          (___kont4141241413_ _hd3138831771_ _hd3132032005_)
                          (if (gx#identifier? _hd3138831771_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42468_|
                                   _hd3138831771_)
                                  (if (gx#stx-pair? _tl3138731774_)
                                      (let ((_e3141231667_
                                             (gx#syntax-e _tl3138731774_)))
                                        (let ((_tl3141031674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3141231667_)))
                                              (_hd3141131671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3141231667_))))
                                          (if (gx#stx-null? _tl3141031674_)
                                              (___kont4141641417_
                                               _hd3141131671_
                                               _hd3132032005_
                                               _hd3131731995_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3131131457_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))
                              (if (gx#stx-datum? _hd3138831771_)
                                  (let ((_e3142531594_
                                         (gx#stx-e _hd3138831771_)))
                                    (if (equal? _e3142531594_ '::)
                                        (if (gx#stx-pair? _tl3138731774_)
                                            (let ((_e3142831598_
                                                   (gx#syntax-e
                                                    _tl3138731774_)))
                                              (let ((_tl3142631605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3142831598_)))
                                                    (_hd3142731602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3142831598_))))
                                                (if (gx#stx-null?
                                                     _tl3142631605_)
                                                    (___kont4141841419_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (if (gx#stx-pair?
                                                         _tl3142631605_)
                                                        (let ((_e3144831508_
                                                               (gx#syntax-e
                                                                _tl3142631605_)))
                                                          (let ((_tl3144631515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3144831508_)))
                        (_hd3144731512_
                         (let () (declare (not safe)) (##car _e3144831508_))))
                    (if (gx#identifier? _hd3144731512_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42467_|
                             _hd3144731512_)
                            (if (gx#stx-pair? _tl3144631515_)
                                (let ((_e3145131518_
                                       (gx#syntax-e _tl3144631515_)))
                                  (let ((_tl3144931525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3145131518_)))
                                        (_hd3145031522_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3145131518_))))
                                    (if (gx#stx-null? _tl3144931525_)
                                        (___kont4142041421_
                                         _hd3145031522_
                                         _hd3142731602_
                                         _hd3132032005_
                                         _hd3131731995_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))))
                                (let () (declare (not safe)) (_g3131131457_)))
                            (let () (declare (not safe)) (_g3131131457_)))
                        (let () (declare (not safe)) (_g3131131457_)))))
                (let () (declare (not safe)) (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))))))
                  (if (gx#stx-null? _tl3131932008_)
                      (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                      (let () (declare (not safe)) (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42469_|
                                                       _hd3132332015_)
                                                      (if (gx#stx-pair?
                                                           _tl3132232018_)
                                                          (let ((_e3137531831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3132232018_)))
                    (let ((_tl3137331838_
                           (let () (declare (not safe)) (##cdr _e3137531831_)))
                          (_hd3137431835_
                           (let ()
                             (declare (not safe))
                             (##car _e3137531831_))))
                      (if (gx#stx-null? _tl3137331838_)
                          (if (gx#stx-pair? _tl3131932008_)
                              (let ((_e3137831841_
                                     (gx#syntax-e _tl3131932008_)))
                                (let ((_tl3137631848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3137831841_)))
                                      (_hd3137731845_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3137831841_))))
                                  (if (gx#stx-null? _tl3137631848_)
                                      (___kont4141041411_
                                       _hd3137731845_
                                       _hd3137431835_
                                       _hd3131731995_)
                                      (if (gx#identifier? _hd3137731845_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42468_|
                                               _hd3137731845_)
                                              (if (gx#stx-pair? _tl3137631848_)
                                                  (let ((_e3141231667_
                                                         (gx#syntax-e
                                                          _tl3137631848_)))
                                                    (let ((_tl3141031674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3141231667_)))
                                                          (_hd3141131671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3141231667_))))
                                                      (if (gx#stx-null?
                                                           _tl3141031674_)
                                                          (___kont4141641417_
                                                           _hd3141131671_
                                                           _hd3132032005_
                                                           _hd3131731995_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3131131457_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3131131457_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))
                                          (if (gx#stx-datum? _hd3137731845_)
                                              (let ((_e3142531594_
                                                     (gx#stx-e
                                                      _hd3137731845_)))
                                                (if (equal? _e3142531594_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3137631848_)
                                                        (let ((_e3142831598_
                                                               (gx#syntax-e
                                                                _tl3137631848_)))
                                                          (let ((_tl3142631605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3142831598_)))
                        (_hd3142731602_
                         (let () (declare (not safe)) (##car _e3142831598_))))
                    (if (gx#stx-null? _tl3142631605_)
                        (___kont4141841419_
                         _hd3142731602_
                         _hd3132032005_
                         _hd3131731995_)
                        (if (gx#stx-pair? _tl3142631605_)
                            (let ((_e3144831508_ (gx#syntax-e _tl3142631605_)))
                              (let ((_tl3144631515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3144831508_)))
                                    (_hd3144731512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3144831508_))))
                                (if (gx#identifier? _hd3144731512_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42467_|
                                         _hd3144731512_)
                                        (if (gx#stx-pair? _tl3144631515_)
                                            (let ((_e3145131518_
                                                   (gx#syntax-e
                                                    _tl3144631515_)))
                                              (let ((_tl3144931525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3145131518_)))
                                                    (_hd3145031522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3145131518_))))
                                                (if (gx#stx-null?
                                                     _tl3144931525_)
                                                    (___kont4142041421_
                                                     _hd3145031522_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))))
                            (let () (declare (not safe)) (_g3131131457_))))))
                (let () (declare (not safe)) (_g3131131457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))))))
                              (if (gx#stx-null? _tl3131932008_)
                                  (___kont4141441415_
                                   _hd3132032005_
                                   _hd3131731995_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_))))
                          (if (gx#stx-pair? _tl3131932008_)
                              (let ((_e3138931767_
                                     (gx#syntax-e _tl3131932008_)))
                                (let ((_tl3138731774_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3138931767_)))
                                      (_hd3138831771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3138931767_))))
                                  (if (gx#stx-null? _tl3138731774_)
                                      (___kont4141241413_
                                       _hd3138831771_
                                       _hd3132032005_)
                                      (if (gx#identifier? _hd3138831771_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42468_|
                                               _hd3138831771_)
                                              (if (gx#stx-pair? _tl3138731774_)
                                                  (let ((_e3141231667_
                                                         (gx#syntax-e
                                                          _tl3138731774_)))
                                                    (let ((_tl3141031674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3141231667_)))
                                                          (_hd3141131671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3141231667_))))
                                                      (if (gx#stx-null?
                                                           _tl3141031674_)
                                                          (___kont4141641417_
                                                           _hd3141131671_
                                                           _hd3132032005_
                                                           _hd3131731995_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3131131457_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3131131457_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))
                                          (if (gx#stx-datum? _hd3138831771_)
                                              (let ((_e3142531594_
                                                     (gx#stx-e
                                                      _hd3138831771_)))
                                                (if (equal? _e3142531594_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3138731774_)
                                                        (let ((_e3142831598_
                                                               (gx#syntax-e
                                                                _tl3138731774_)))
                                                          (let ((_tl3142631605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3142831598_)))
                        (_hd3142731602_
                         (let () (declare (not safe)) (##car _e3142831598_))))
                    (if (gx#stx-null? _tl3142631605_)
                        (___kont4141841419_
                         _hd3142731602_
                         _hd3132032005_
                         _hd3131731995_)
                        (if (gx#stx-pair? _tl3142631605_)
                            (let ((_e3144831508_ (gx#syntax-e _tl3142631605_)))
                              (let ((_tl3144631515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3144831508_)))
                                    (_hd3144731512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3144831508_))))
                                (if (gx#identifier? _hd3144731512_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42467_|
                                         _hd3144731512_)
                                        (if (gx#stx-pair? _tl3144631515_)
                                            (let ((_e3145131518_
                                                   (gx#syntax-e
                                                    _tl3144631515_)))
                                              (let ((_tl3144931525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3145131518_)))
                                                    (_hd3145031522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3145131518_))))
                                                (if (gx#stx-null?
                                                     _tl3144931525_)
                                                    (___kont4142041421_
                                                     _hd3145031522_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))))
                            (let () (declare (not safe)) (_g3131131457_))))))
                (let () (declare (not safe)) (_g3131131457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))))))
                              (if (gx#stx-null? _tl3131932008_)
                                  (___kont4141441415_
                                   _hd3132032005_
                                   _hd3131731995_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))))))
                  (if (gx#stx-pair? _tl3131932008_)
                      (let ((_e3138931767_ (gx#syntax-e _tl3131932008_)))
                        (let ((_tl3138731774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3138931767_)))
                              (_hd3138831771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3138931767_))))
                          (if (gx#stx-null? _tl3138731774_)
                              (___kont4141241413_
                               _hd3138831771_
                               _hd3132032005_)
                              (if (gx#identifier? _hd3138831771_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42468_|
                                       _hd3138831771_)
                                      (if (gx#stx-pair? _tl3138731774_)
                                          (let ((_e3141231667_
                                                 (gx#syntax-e _tl3138731774_)))
                                            (let ((_tl3141031674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3141231667_)))
                                                  (_hd3141131671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3141231667_))))
                                              (if (gx#stx-null? _tl3141031674_)
                                                  (___kont4141641417_
                                                   _hd3141131671_
                                                   _hd3132032005_
                                                   _hd3131731995_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3131131457_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3131131457_)))
                                  (if (gx#stx-datum? _hd3138831771_)
                                      (let ((_e3142531594_
                                             (gx#stx-e _hd3138831771_)))
                                        (if (equal? _e3142531594_ '::)
                                            (if (gx#stx-pair? _tl3138731774_)
                                                (let ((_e3142831598_
                                                       (gx#syntax-e
                                                        _tl3138731774_)))
                                                  (let ((_tl3142631605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3142831598_)))
                                                        (_hd3142731602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3142831598_))))
                                                    (if (gx#stx-null?
                                                         _tl3142631605_)
                                                        (___kont4141841419_
                                                         _hd3142731602_
                                                         _hd3132032005_
                                                         _hd3131731995_)
                                                        (if (gx#stx-pair?
                                                             _tl3142631605_)
                                                            (let ((_e3144831508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3142631605_)))
                      (let ((_tl3144631515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3144831508_)))
                            (_hd3144731512_
                             (let ()
                               (declare (not safe))
                               (##car _e3144831508_))))
                        (if (gx#identifier? _hd3144731512_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42467_|
                                 _hd3144731512_)
                                (if (gx#stx-pair? _tl3144631515_)
                                    (let ((_e3145131518_
                                           (gx#syntax-e _tl3144631515_)))
                                      (let ((_tl3144931525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3145131518_)))
                                            (_hd3145031522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3145131518_))))
                                        (if (gx#stx-null? _tl3144931525_)
                                            (___kont4142041421_
                                             _hd3145031522_
                                             _hd3142731602_
                                             _hd3132032005_
                                             _hd3131731995_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_)))
                                (let () (declare (not safe)) (_g3131131457_)))
                            (let () (declare (not safe)) (_g3131131457_)))))
                    (let () (declare (not safe)) (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3131131457_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3131131457_)))))))
                      (if (gx#stx-null? _tl3131932008_)
                          (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                          (let () (declare (not safe)) (_g3131131457_)))))
              (if (gx#stx-pair? _tl3131932008_)
                  (let ((_e3138931767_ (gx#syntax-e _tl3131932008_)))
                    (let ((_tl3138731774_
                           (let () (declare (not safe)) (##cdr _e3138931767_)))
                          (_hd3138831771_
                           (let ()
                             (declare (not safe))
                             (##car _e3138931767_))))
                      (if (gx#stx-null? _tl3138731774_)
                          (___kont4141241413_ _hd3138831771_ _hd3132032005_)
                          (if (gx#identifier? _hd3138831771_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42468_|
                                   _hd3138831771_)
                                  (if (gx#stx-pair? _tl3138731774_)
                                      (let ((_e3141231667_
                                             (gx#syntax-e _tl3138731774_)))
                                        (let ((_tl3141031674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3141231667_)))
                                              (_hd3141131671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3141231667_))))
                                          (if (gx#stx-null? _tl3141031674_)
                                              (___kont4141641417_
                                               _hd3141131671_
                                               _hd3132032005_
                                               _hd3131731995_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3131131457_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3131131457_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))
                              (if (gx#stx-datum? _hd3138831771_)
                                  (let ((_e3142531594_
                                         (gx#stx-e _hd3138831771_)))
                                    (if (equal? _e3142531594_ '::)
                                        (if (gx#stx-pair? _tl3138731774_)
                                            (let ((_e3142831598_
                                                   (gx#syntax-e
                                                    _tl3138731774_)))
                                              (let ((_tl3142631605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3142831598_)))
                                                    (_hd3142731602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3142831598_))))
                                                (if (gx#stx-null?
                                                     _tl3142631605_)
                                                    (___kont4141841419_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (if (gx#stx-pair?
                                                         _tl3142631605_)
                                                        (let ((_e3144831508_
                                                               (gx#syntax-e
                                                                _tl3142631605_)))
                                                          (let ((_tl3144631515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3144831508_)))
                        (_hd3144731512_
                         (let () (declare (not safe)) (##car _e3144831508_))))
                    (if (gx#identifier? _hd3144731512_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42467_|
                             _hd3144731512_)
                            (if (gx#stx-pair? _tl3144631515_)
                                (let ((_e3145131518_
                                       (gx#syntax-e _tl3144631515_)))
                                  (let ((_tl3144931525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3145131518_)))
                                        (_hd3145031522_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3145131518_))))
                                    (if (gx#stx-null? _tl3144931525_)
                                        (___kont4142041421_
                                         _hd3145031522_
                                         _hd3142731602_
                                         _hd3132032005_
                                         _hd3131731995_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_)))))
                                (let () (declare (not safe)) (_g3131131457_)))
                            (let () (declare (not safe)) (_g3131131457_)))
                        (let () (declare (not safe)) (_g3131131457_)))))
                (let () (declare (not safe)) (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3131131457_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))))))
                  (if (gx#stx-null? _tl3131932008_)
                      (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                      (let () (declare (not safe)) (_g3131131457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3131932008_)
                                              (let ((_e3138931767_
                                                     (gx#syntax-e
                                                      _tl3131932008_)))
                                                (let ((_tl3138731774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3138931767_)))
                                                      (_hd3138831771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3138931767_))))
                                                  (if (gx#stx-null?
                                                       _tl3138731774_)
                                                      (___kont4141241413_
                                                       _hd3138831771_
                                                       _hd3132032005_)
                                                      (if (gx#identifier?
                                                           _hd3138831771_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g42468_|
                                                               _hd3138831771_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3138731774_)
                          (let ((_e3141231667_ (gx#syntax-e _tl3138731774_)))
                            (let ((_tl3141031674_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3141231667_)))
                                  (_hd3141131671_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3141231667_))))
                              (if (gx#stx-null? _tl3141031674_)
                                  (___kont4141641417_
                                   _hd3141131671_
                                   _hd3132032005_
                                   _hd3131731995_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3131131457_)))))
                          (let () (declare (not safe)) (_g3131131457_)))
                      (let () (declare (not safe)) (_g3131131457_)))
                  (if (gx#stx-datum? _hd3138831771_)
                      (let ((_e3142531594_ (gx#stx-e _hd3138831771_)))
                        (if (equal? _e3142531594_ '::)
                            (if (gx#stx-pair? _tl3138731774_)
                                (let ((_e3142831598_
                                       (gx#syntax-e _tl3138731774_)))
                                  (let ((_tl3142631605_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3142831598_)))
                                        (_hd3142731602_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3142831598_))))
                                    (if (gx#stx-null? _tl3142631605_)
                                        (___kont4141841419_
                                         _hd3142731602_
                                         _hd3132032005_
                                         _hd3131731995_)
                                        (if (gx#stx-pair? _tl3142631605_)
                                            (let ((_e3144831508_
                                                   (gx#syntax-e
                                                    _tl3142631605_)))
                                              (let ((_tl3144631515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3144831508_)))
                                                    (_hd3144731512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3144831508_))))
                                                (if (gx#identifier?
                                                     _hd3144731512_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g42467_|
                                                         _hd3144731512_)
                                                        (if (gx#stx-pair?
                                                             _tl3144631515_)
                                                            (let ((_e3145131518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3144631515_)))
                      (let ((_tl3144931525_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3145131518_)))
                            (_hd3145031522_
                             (let ()
                               (declare (not safe))
                               (##car _e3145131518_))))
                        (if (gx#stx-null? _tl3144931525_)
                            (___kont4142041421_
                             _hd3145031522_
                             _hd3142731602_
                             _hd3132032005_
                             _hd3131731995_)
                            (let () (declare (not safe)) (_g3131131457_)))))
                    (let () (declare (not safe)) (_g3131131457_)))
                (let () (declare (not safe)) (_g3131131457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_))))))
                                (let () (declare (not safe)) (_g3131131457_)))
                            (let () (declare (not safe)) (_g3131131457_))))
                      (let () (declare (not safe)) (_g3131131457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3131932008_)
                                                  (___kont4141441415_
                                                   _hd3132032005_
                                                   _hd3131731995_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3131131457_)))))))
                                  (if (gx#stx-pair? _tl3131932008_)
                                      (let ((_e3138931767_
                                             (gx#syntax-e _tl3131932008_)))
                                        (let ((_tl3138731774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3138931767_)))
                                              (_hd3138831771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3138931767_))))
                                          (if (gx#stx-null? _tl3138731774_)
                                              (___kont4141241413_
                                               _hd3138831771_
                                               _hd3132032005_)
                                              (if (gx#identifier?
                                                   _hd3138831771_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42468_|
                                                       _hd3138831771_)
                                                      (if (gx#stx-pair?
                                                           _tl3138731774_)
                                                          (let ((_e3141231667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3138731774_)))
                    (let ((_tl3141031674_
                           (let () (declare (not safe)) (##cdr _e3141231667_)))
                          (_hd3141131671_
                           (let ()
                             (declare (not safe))
                             (##car _e3141231667_))))
                      (if (gx#stx-null? _tl3141031674_)
                          (___kont4141641417_
                           _hd3141131671_
                           _hd3132032005_
                           _hd3131731995_)
                          (let () (declare (not safe)) (_g3131131457_)))))
                  (let () (declare (not safe)) (_g3131131457_)))
              (let () (declare (not safe)) (_g3131131457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3138831771_)
                                                      (let ((_e3142531594_
                                                             (gx#stx-e
                                                              _hd3138831771_)))
                                                        (if (equal? _e3142531594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3138731774_)
                        (let ((_e3142831598_ (gx#syntax-e _tl3138731774_)))
                          (let ((_tl3142631605_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3142831598_)))
                                (_hd3142731602_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3142831598_))))
                            (if (gx#stx-null? _tl3142631605_)
                                (___kont4141841419_
                                 _hd3142731602_
                                 _hd3132032005_
                                 _hd3131731995_)
                                (if (gx#stx-pair? _tl3142631605_)
                                    (let ((_e3144831508_
                                           (gx#syntax-e _tl3142631605_)))
                                      (let ((_tl3144631515_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3144831508_)))
                                            (_hd3144731512_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3144831508_))))
                                        (if (gx#identifier? _hd3144731512_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42467_|
                                                 _hd3144731512_)
                                                (if (gx#stx-pair?
                                                     _tl3144631515_)
                                                    (let ((_e3145131518_
                                                           (gx#syntax-e
                                                            _tl3144631515_)))
                                                      (let ((_tl3144931525_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3145131518_)))
                    (_hd3145031522_
                     (let () (declare (not safe)) (##car _e3145131518_))))
                (if (gx#stx-null? _tl3144931525_)
                    (___kont4142041421_
                     _hd3145031522_
                     _hd3142731602_
                     _hd3132032005_
                     _hd3131731995_)
                    (let () (declare (not safe)) (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3131131457_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3131131457_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3131131457_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3131131457_))))))
                        (let () (declare (not safe)) (_g3131131457_)))
                    (let () (declare (not safe)) (_g3131131457_))))
              (let () (declare (not safe)) (_g3131131457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3131932008_)
                                          (___kont4141441415_
                                           _hd3132032005_
                                           _hd3131731995_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3131131457_)))))))
                          (let () (declare (not safe)) (_g3131131457_)))))
                  (let () (declare (not safe)) (_g3131131457_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32100_)
        (let* ((___stx4166741668_ _$stx32100_)
               (_g3210532139_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4166741668_))))
          (let ((___kont4167041671_
                 (lambda (_L32243_ _L32245_ _L32246_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32246_
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
                                       (cons _L32245_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32243_ '()))
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
                (___kont4167241673_
                 (lambda (_L32176_ _L32178_ _L32179_)
                   (cons _L32179_
                         (cons _L32178_
                               (cons _L32176_
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
            (let ((___match4170041701_
                   (lambda (_e3211232203_
                            _hd3211132207_
                            _tl3211032210_
                            _e3211532213_
                            _hd3211432217_
                            _tl3211332220_
                            _e3211832223_
                            _hd3211732227_
                            _tl3211632230_
                            _e3212132233_
                            _hd3212032237_
                            _tl3211932240_)
                     (let ((_L32243_ _hd3212032237_)
                           (_L32245_ _hd3211732227_)
                           (_L32246_ _hd3211432217_))
                       (if (gx#identifier? _L32246_)
                           (___kont4167041671_ _L32243_ _L32245_ _L32246_)
                           (let () (declare (not safe)) (_g3210532139_)))))))
              (if (gx#stx-pair? ___stx4166741668_)
                  (let ((_e3211232203_ (gx#syntax-e ___stx4166741668_)))
                    (let ((_tl3211032210_
                           (let () (declare (not safe)) (##cdr _e3211232203_)))
                          (_hd3211132207_
                           (let ()
                             (declare (not safe))
                             (##car _e3211232203_))))
                      (if (gx#stx-pair? _tl3211032210_)
                          (let ((_e3211532213_ (gx#syntax-e _tl3211032210_)))
                            (let ((_tl3211332220_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3211532213_)))
                                  (_hd3211432217_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3211532213_))))
                              (if (gx#stx-pair? _tl3211332220_)
                                  (let ((_e3211832223_
                                         (gx#syntax-e _tl3211332220_)))
                                    (let ((_tl3211632230_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3211832223_)))
                                          (_hd3211732227_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3211832223_))))
                                      (if (gx#stx-pair? _tl3211632230_)
                                          (let ((_e3212132233_
                                                 (gx#syntax-e _tl3211632230_)))
                                            (let ((_tl3211932240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3212132233_)))
                                                  (_hd3212032237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3212132233_))))
                                              (if (gx#stx-null? _tl3211932240_)
                                                  (___match4170041701_
                                                   _e3211232203_
                                                   _hd3211132207_
                                                   _tl3211032210_
                                                   _e3211532213_
                                                   _hd3211432217_
                                                   _tl3211332220_
                                                   _e3211832223_
                                                   _hd3211732227_
                                                   _tl3211632230_
                                                   _e3212132233_
                                                   _hd3212032237_
                                                   _tl3211932240_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3210532139_)))))
                                          (if (gx#stx-null? _tl3211632230_)
                                              (___kont4167241673_
                                               _hd3211732227_
                                               _hd3211432217_
                                               _hd3211132207_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3210532139_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3210532139_)))))
                          (let () (declare (not safe)) (_g3210532139_)))))
                  (let () (declare (not safe)) (_g3210532139_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32268_)
        (let* ((_g3227232287_
                (lambda (_g3227332283_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3227332283_)))
               (_g3227132330_
                (lambda (_g3227332291_)
                  (if (gx#stx-pair? _g3227332291_)
                      (let ((_e3227832294_ (gx#syntax-e _g3227332291_)))
                        (let ((_hd3227732298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3227832294_)))
                              (_tl3227632301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3227832294_))))
                          (if (gx#stx-pair? _tl3227632301_)
                              (let ((_e3228132304_
                                     (gx#syntax-e _tl3227632301_)))
                                (let ((_hd3228032308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3228132304_)))
                                      (_tl3227932311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3228132304_))))
                                  ((lambda (_L32314_ _L32316_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32316_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32314_)
                                                       '()))))
                                   _tl3227932311_
                                   _hd3228032308_)))
                              (_g3227232287_ _g3227332291_))))
                      (_g3227232287_ _g3227332291_)))))
          (_g3227132330_ _$stx32268_))))))
