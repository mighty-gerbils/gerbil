(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g42283_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42284_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42285_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42286_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42287_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42288_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42289_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42290_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42291_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42292_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42293_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42294_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42295_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42296_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42297_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42306_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42311_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42312_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42313_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42318_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42319_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42320_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42321_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42322_|
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
      (lambda _$args29963_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args29963_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx29960_)
        (if (gx#identifier? _stx29960_)
            (class-instance?
             |gerbil/core$<match>[1]#match-macro::t|
             (gx#syntax-local-value _stx29960_ false))
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
                                                      (cons (_parse128270_
                                                             _L29916_)
                                                            '())))))
                                       (___kont3946239463_
                                        (lambda (_L29886_)
                                          (cons '?:
                                                (cons _L29725_
                                                      (cons '=>:
                                                            (cons (_parse128270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L29886_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3946439465_
                                        (lambda (_L29837_ _L29839_)
                                          (cons '?:
                                                (cons _L29725_
                                                      (cons '::
                                                            (cons _L29839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>: (cons (_parse128270_ _L29837_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3946639467_
                                        (lambda ()
                                          (_parse-error28277_ _hd28623_))))
                                   (let ((_g2973829927_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3945539456_)
                                                (let ((_e2974529906_
                                                       (gx#syntax-e
                                                        ___stx3945539456_)))
                                                  (let ((_tl2974729913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2974529906_)))
                                                        (_hd2974629910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2974529906_))))
                                                    (if (gx#stx-null?
                                                         _tl2974729913_)
                                                        (___kont3946039461_
                                                         _hd2974629910_)
                                                        (if (gx#identifier?
                                                             _hd2974629910_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42283_|
                         _hd2974629910_)
                        (if (gx#stx-pair? _tl2974729913_)
                            (let ((_e2975229876_ (gx#syntax-e _tl2974729913_)))
                              (let ((_tl2975429883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2975229876_)))
                                    (_hd2975329880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2975229876_))))
                                (if (gx#stx-null? _tl2975429883_)
                                    (___kont3946239463_ _hd2975329880_)
                                    (___kont3946639467_))))
                            (___kont3946639467_))
                        (___kont3946639467_))
                    (if (gx#stx-datum? _hd2974629910_)
                        (let ((_e2976029803_ (gx#stx-e _hd2974629910_)))
                          (if (equal? _e2976029803_ '::)
                              (if (gx#stx-pair? _tl2974729913_)
                                  (let ((_e2976129807_
                                         (gx#syntax-e _tl2974729913_)))
                                    (let ((_tl2976329814_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2976129807_)))
                                          (_hd2976229811_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2976129807_))))
                                      (if (gx#stx-pair? _tl2976329814_)
                                          (let ((_e2976429817_
                                                 (gx#syntax-e _tl2976329814_)))
                                            (let ((_tl2976629824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2976429817_)))
                                                  (_hd2976529821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2976429817_))))
                                              (if (gx#identifier?
                                                   _hd2976529821_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42284_|
                                                       _hd2976529821_)
                                                      (if (gx#stx-pair?
                                                           _tl2976629824_)
                                                          (let ((_e2976729827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2976629824_)))
                    (let ((_tl2976929834_
                           (let () (declare (not safe)) (##cdr _e2976729827_)))
                          (_hd2976829831_
                           (let ()
                             (declare (not safe))
                             (##car _e2976729827_))))
                      (if (gx#stx-null? _tl2976929834_)
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
                                         (_g2973829927_)))))))
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
                                          (_parse128270_ _L29679_)))
                                       (___kont3944239443_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128270_
                                                 _L29628_)))))
                                   (if (gx#stx-pair? ___stx3943739438_)
                                       (let ((_e2964329669_
                                              (gx#syntax-e ___stx3943739438_)))
                                         (let ((_tl2964529676_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2964329669_)))
                                               (_hd2964429673_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2964329669_))))
                                           (if (gx#stx-null? _tl2964529676_)
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
                                          (_parse128270_ _L29594_)))
                                       (___kont3942439425_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128270_
                                                 _L29543_)))))
                                   (if (gx#stx-pair? ___stx3941939420_)
                                       (let ((_e2955829584_
                                              (gx#syntax-e ___stx3941939420_)))
                                         (let ((_tl2956029591_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2955829584_)))
                                               (_hd2955929588_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2955829584_))))
                                           (if (gx#stx-null? _tl2956029591_)
                                               (___kont3942239423_
                                                _hd2955929588_)
                                               (___kont3942439425_))))
                                       (___kont3942439425_))))))
                            (___kont3954439545_
                             (lambda (_L29513_)
                               (cons 'not:
                                     (cons (_parse128270_ _L29513_) '()))))
                            (___kont3954639547_
                             (lambda (_L29469_ _L29471_)
                               (cons 'cons:
                                     (cons (_parse128270_ _L29471_)
                                           (cons (_parse128270_ _L29469_)
                                                 '())))))
                            (___kont3954839549_
                             (lambda (_L29413_ _L29415_ _L29416_)
                               (if (gx#stx-null? _L29413_)
                                   (cons 'cons:
                                         (cons (_parse128270_ _L29416_)
                                               (cons (_parse128270_ _L29415_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse128270_ _L29416_)
                                               (cons (_parse128270_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L29415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3955039551_
                             (lambda (_L29365_) (_parse-list28272_ _L29365_)))
                            (___kont3955239553_
                             (lambda (_L29335_)
                               (cons 'box:
                                     (cons (_parse128270_ _L29335_) '()))))
                            (___kont3955439555_
                             (lambda (_L29298_)
                               (cons 'box:
                                     (cons (_parse128270_ _L29298_) '()))))
                            (___kont3955639557_
                             (lambda (_L29274_) (_parse128270_ _L29274_)))
                            (___kont3955839559_
                             (lambda (_L29236_)
                               (cons 'values:
                                     (cons (_parse-vector28273_ _L29236_)
                                           '()))))
                            (___kont3956039561_
                             (lambda (_L29208_)
                               (cons 'vector:
                                     (cons (_parse-vector28273_ _L29208_)
                                           '()))))
                            (___kont3956239563_
                             (lambda (_L29169_)
                               (cons 'vector:
                                     (cons (_parse-vector28273_
                                            (foldr (lambda (_g2918229185_
                                                            _g2918329188_)
                                                     (cons _g2918229185_
                                                           _g2918329188_))
                                                   '()
                                                   _L29169_))
                                           '()))))
                            (___kont3956639567_
                             (lambda (_L29115_ _L29117_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29117_)
                                           (cons (_parse-vector28273_ _L29115_)
                                                 '())))))
                            (___kont3956839569_
                             (lambda (_L29085_ _L29087_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29087_)
                                           (cons (_parse-class-body28275_
                                                  _L29085_)
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
                             (lambda (_L28965_) (_parse-qq28276_ _L28965_)))
                            (___kont3957639577_
                             (lambda (_L28921_ _L28923_)
                               (cons 'apply:
                                     (cons _L28923_
                                           (cons (_parse128270_ _L28921_)
                                                 '())))))
                            (___kont3957839579_
                             (lambda (_L28869_)
                               (_parse128270_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _L28869_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _hd28623_)
                                  (let ((_$e28880_ (gx#stx-source _hd28623_)))
                                    (if _$e28880_
                                        _$e28880_
                                        (gx#stx-source _stx28266_))))))))
                            (___kont3958039581_
                             (lambda (_L28843_) (cons 'any: '())))
                            (___kont3958239583_
                             (lambda (_L28827_)
                               (cons 'var: (cons _L28827_ '()))))
                            (___kont3958439585_
                             (lambda (_L28809_)
                               (cons 'datum: (cons (gx#stx-e _L28809_) '()))))
                            (___kont3958639587_
                             (lambda () (_parse-error28277_ _hd28623_))))
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
                                        (_g2864728820_)))))
                               (_g2864528852_
                                (lambda ()
                                  (let ((_L28843_ ___stx3953539536_))
                                    (if (gx#underscore? _L28843_)
                                        (___kont3958039581_ _L28843_)
                                        (_g2864628836_)))))
                               (___match3986239863_
                                (lambda (_e2878028859_
                                         _hd2878128863_
                                         _tl2878228866_)
                                  (let ((_L28869_ _hd2878128863_))
                                    (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                         _L28869_)
                                        (___kont3957839579_ _L28869_)
                                        (_g2864528852_)))))
                               (___match3979639797_
                                (lambda (_e2874829025_
                                         _hd2874929029_
                                         _tl2875029032_
                                         _e2875129035_
                                         _hd2875229039_
                                         _tl2875329042_)
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
                                                 |gerbil/core$<match>[1]#_g42285_|
                                                 _hd2874929029_)
                                                (___kont3957239573_
                                                 _hd2875229039_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g42286_|
                                                     _hd2874929029_)
                                                    (___kont3957439575_
                                                     _hd2875229039_)
                                                    (___match3986239863_
                                                     _e2874829025_
                                                     _hd2874929029_
                                                     _tl2875029032_)))
                                            (___match3986239863_
                                             _e2874829025_
                                             _hd2874929029_
                                             _tl2875029032_))))))
                               (___match3978239783_
                                (lambda (_e2874329075_
                                         _hd2874429079_
                                         _tl2874529082_)
                                  (let ((_L29085_ _tl2874529082_)
                                        (_L29087_ _hd2874429079_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                         _L29087_)
                                        (___kont3956839569_ _L29085_ _L29087_)
                                        (if (gx#stx-pair? _tl2874529082_)
                                            (let ((_e2875129035_
                                                   (gx#syntax-e
                                                    _tl2874529082_)))
                                              (let ((_tl2875329042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2875129035_)))
                                                    (_hd2875229039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2875129035_))))
                                                (if (gx#stx-null?
                                                     _tl2875329042_)
                                                    (___match3979639797_
                                                     _e2874329075_
                                                     _hd2874429079_
                                                     _tl2874529082_
                                                     _e2875129035_
                                                     _hd2875229039_
                                                     _tl2875329042_)
                                                    (if (gx#identifier?
                                                         _hd2874429079_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g42285_|
                                                             _hd2874429079_)
                                                            (___match3986239863_
                                                             _e2874329075_
                                                             _hd2874429079_
                                                             _tl2874529082_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42286_|
                         _hd2874429079_)
                        (___match3986239863_
                         _e2874329075_
                         _hd2874429079_
                         _tl2874529082_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42287_|
                             _hd2874429079_)
                            (if (gx#stx-pair? _tl2875329042_)
                                (let ((_e2877628911_
                                       (gx#syntax-e _tl2875329042_)))
                                  (let ((_tl2877828918_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2877628911_)))
                                        (_hd2877728915_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2877628911_))))
                                    (if (gx#stx-null? _tl2877828918_)
                                        (___kont3957639577_
                                         _hd2877728915_
                                         _hd2875229039_)
                                        (___match3986239863_
                                         _e2874329075_
                                         _hd2874429079_
                                         _tl2874529082_))))
                                (___match3986239863_
                                 _e2874329075_
                                 _hd2874429079_
                                 _tl2874529082_))
                            (___match3986239863_
                             _e2874329075_
                             _hd2874429079_
                             _tl2874529082_))))
                (___match3986239863_
                 _e2874329075_
                 _hd2874429079_
                 _tl2874529082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match3986239863_
                                             _e2874329075_
                                             _hd2874429079_
                                             _tl2874529082_))))))
                               (___match3977639777_
                                (lambda (_e2873829105_
                                         _hd2873929109_
                                         _tl2874029112_)
                                  (let ((_L29115_ _tl2874029112_)
                                        (_L29117_ _hd2873929109_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                         _L29117_)
                                        (___kont3956639567_ _L29115_ _L29117_)
                                        (___match3978239783_
                                         _e2873829105_
                                         _hd2873929109_
                                         _tl2874029112_)))))
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
                                                      (_loop2873029145_
                                                       _lp-tl2873329162_
                                                       (cons _lp-hd2873229159_
                                                             _body2873429152_))))
                                                  (let ((_body2873529165_
                                                         (reverse _body2873429152_)))
                                                    (___kont3956239563_
                                                     _body2873529165_))))))
                                    (_loop2873029145_
                                     _target2872729139_
                                     '()))))
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
                                                    (_g2864528852_))))
                                            (_g2864528852_)))
                                      (_g2864528852_))))
                               (_g2863329308_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3953539536_)
                                      (let ((_e2870929294_
                                             (unbox (gx#syntax-e
                                                     ___stx3953539536_))))
                                        (___kont3955439555_ _e2870929294_))
                                      (_g2863729191_))))
                               (___match3962439625_
                                (lambda (_e2866429533_
                                         _hd2866529537_
                                         _tl2866629540_)
                                  (let ((_L29543_ _tl2866629540_))
                                    (if (gx#stx-list? _L29543_)
                                        (___kont3954239543_ _L29543_)
                                        (___match3977639777_
                                         _e2866429533_
                                         _hd2866529537_
                                         _tl2866629540_)))))
                               (___match3961439615_
                                (lambda (_e2866029618_
                                         _hd2866129622_
                                         _tl2866229625_)
                                  (let ((_L29628_ _tl2866229625_))
                                    (if (gx#stx-list? _L29628_)
                                        (___kont3954039541_ _L29628_)
                                        (___match3977639777_
                                         _e2866029618_
                                         _hd2866129622_
                                         _tl2866229625_))))))
                          (if (gx#stx-pair? ___stx3953539536_)
                              (let ((_e2865329703_
                                     (gx#syntax-e ___stx3953539536_)))
                                (let ((_tl2865529710_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2865329703_)))
                                      (_hd2865429707_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2865329703_))))
                                  (if (gx#identifier? _hd2865429707_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42288_|
                                           _hd2865429707_)
                                          (if (gx#stx-pair? _tl2865529710_)
                                              (let ((_e2865629713_
                                                     (gx#syntax-e
                                                      _tl2865529710_)))
                                                (let ((_tl2865829720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2865629713_)))
                                                      (_hd2865729717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2865629713_))))
                                                  (___kont3953839539_
                                                   _tl2865829720_
                                                   _hd2865729717_)))
                                              (___match3977639777_
                                               _e2865329703_
                                               _hd2865429707_
                                               _tl2865529710_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42289_|
                                               _hd2865429707_)
                                              (___match3961439615_
                                               _e2865329703_
                                               _hd2865429707_
                                               _tl2865529710_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42290_|
                                                   _hd2865429707_)
                                                  (___match3962439625_
                                                   _e2865329703_
                                                   _hd2865429707_
                                                   _tl2865529710_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42291_|
                                                       _hd2865429707_)
                                                      (if (gx#stx-pair?
                                                           _tl2865529710_)
                                                          (let ((_e2867129503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2865529710_)))
                    (let ((_tl2867329510_
                           (let () (declare (not safe)) (##cdr _e2867129503_)))
                          (_hd2867229507_
                           (let ()
                             (declare (not safe))
                             (##car _e2867129503_))))
                      (if (gx#stx-null? _tl2867329510_)
                          (___kont3954439545_ _hd2867229507_)
                          (___match3977639777_
                           _e2865329703_
                           _hd2865429707_
                           _tl2865529710_))))
                  (___match3977639777_
                   _e2865329703_
                   _hd2865429707_
                   _tl2865529710_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g42292_|
                   _hd2865429707_)
                  (if (gx#stx-pair? _tl2865529710_)
                      (let ((_e2867929449_ (gx#syntax-e _tl2865529710_)))
                        (let ((_tl2868129456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2867929449_)))
                              (_hd2868029453_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2867929449_))))
                          (if (gx#stx-pair? _tl2868129456_)
                              (let ((_e2868229459_
                                     (gx#syntax-e _tl2868129456_)))
                                (let ((_tl2868429466_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2868229459_)))
                                      (_hd2868329463_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2868229459_))))
                                  (if (gx#stx-null? _tl2868429466_)
                                      (___kont3954639547_
                                       _hd2868329463_
                                       _hd2868029453_)
                                      (___match3977639777_
                                       _e2865329703_
                                       _hd2865429707_
                                       _tl2865529710_))))
                              (___match3977639777_
                               _e2865329703_
                               _hd2865429707_
                               _tl2865529710_))))
                      (___match3977639777_
                       _e2865329703_
                       _hd2865429707_
                       _tl2865529710_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g42293_|
                       _hd2865429707_)
                      (if (gx#stx-pair? _tl2865529710_)
                          (let ((_e2869129393_ (gx#syntax-e _tl2865529710_)))
                            (let ((_tl2869329400_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2869129393_)))
                                  (_hd2869229397_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2869129393_))))
                              (if (gx#stx-pair? _tl2869329400_)
                                  (let ((_e2869429403_
                                         (gx#syntax-e _tl2869329400_)))
                                    (let ((_tl2869629410_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2869429403_)))
                                          (_hd2869529407_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2869429403_))))
                                      (___kont3954839549_
                                       _tl2869629410_
                                       _hd2869529407_
                                       _hd2869229397_)))
                                  (___match3977639777_
                                   _e2865329703_
                                   _hd2865429707_
                                   _tl2865529710_))))
                          (___match3977639777_
                           _e2865329703_
                           _hd2865429707_
                           _tl2865529710_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g42294_|
                           _hd2865429707_)
                          (___kont3955039551_ _tl2865529710_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42295_|
                               _hd2865429707_)
                              (if (gx#stx-pair? _tl2865529710_)
                                  (let ((_e2870529325_
                                         (gx#syntax-e _tl2865529710_)))
                                    (let ((_tl2870729332_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2870529325_)))
                                          (_hd2870629329_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2870529325_))))
                                      (if (gx#stx-null? _tl2870729332_)
                                          (___kont3955239553_ _hd2870629329_)
                                          (___match3977639777_
                                           _e2865329703_
                                           _hd2865429707_
                                           _tl2865529710_))))
                                  (___match3977639777_
                                   _e2865329703_
                                   _hd2865429707_
                                   _tl2865529710_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42296_|
                                   _hd2865429707_)
                                  (if (gx#stx-pair? _tl2865529710_)
                                      (let ((_e2871429264_
                                             (gx#syntax-e _tl2865529710_)))
                                        (let ((_tl2871629271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2871429264_)))
                                              (_hd2871529268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2871429264_))))
                                          (if (gx#stx-null? _tl2871629271_)
                                              (___kont3955639557_
                                               _hd2871529268_)
                                              (___kont3955839559_
                                               _tl2865529710_))))
                                      (___kont3955839559_ _tl2865529710_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42297_|
                                       _hd2865429707_)
                                      (___kont3956039561_ _tl2865529710_)
                                      (___match3977639777_
                                       _e2865329703_
                                       _hd2865429707_
                                       _tl2865529710_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match3977639777_
                                       _e2865329703_
                                       _hd2865429707_
                                       _tl2865529710_))))
                              (_g2863329308_)))))))
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
                             (lambda (_L28605_) (_parse128270_ _L28605_)))
                            (___kont3987039871_
                             (lambda (_L28557_ _L28559_ _L28560_)
                               (cons 'splice:
                                     (cons (_parse128270_ _L28560_)
                                           (cons (_parse-list28272_ _L28557_)
                                                 '())))))
                            (___kont3987239873_
                             (lambda (_L28515_ _L28517_)
                               (cons 'cons:
                                     (cons (_parse128270_ _L28517_)
                                           (cons (_parse-list28272_ _L28515_)
                                                 '())))))
                            (___kont3987439875_
                             (lambda ()
                               (if (gx#stx-null? _body28452_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28452_))
                                       (_parse128270_ _body28452_)
                                       (_parse-error28277_ _body28452_))))))
                        (let* ((___match3991439915_
                                (lambda (_e2847928505_
                                         _hd2848028509_
                                         _tl2848128512_)
                                  (let ((_L28515_ _tl2848128512_)
                                        (_L28517_ _hd2848028509_))
                                    (if (not (gx#ellipsis? _L28517_))
                                        (___kont3987239873_ _L28515_ _L28517_)
                                        (___kont3987439875_)))))
                               (___match3990839909_
                                (lambda (_e2847128537_
                                         _hd2847228541_
                                         _tl2847328544_
                                         _e2847428547_
                                         _hd2847528551_
                                         _tl2847628554_)
                                  (let ((_L28557_ _tl2847628554_)
                                        (_L28559_ _hd2847528551_)
                                        (_L28560_ _hd2847228541_))
                                    (if (gx#ellipsis? _L28559_)
                                        (___kont3987039871_
                                         _L28557_
                                         _L28559_
                                         _L28560_)
                                        (___match3991439915_
                                         _e2847128537_
                                         _hd2847228541_
                                         _tl2847328544_))))))
                          (if (gx#stx-pair? ___stx3986539866_)
                              (let ((_e2846128581_
                                     (gx#syntax-e ___stx3986539866_)))
                                (let ((_tl2846328588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2846128581_)))
                                      (_hd2846228585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2846128581_))))
                                  (if (gx#stx-datum? _hd2846228585_)
                                      (let ((_e2846428591_
                                             (gx#stx-e _hd2846228585_)))
                                        (if (equal? _e2846428591_ '::)
                                            (if (gx#stx-pair? _tl2846328588_)
                                                (let ((_e2846528595_
                                                       (gx#syntax-e
                                                        _tl2846328588_)))
                                                  (let ((_tl2846728602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2846528595_)))
                                                        (_hd2846628599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2846528595_))))
                                                    (if (gx#stx-null?
                                                         _tl2846728602_)
                                                        (___kont3986839869_
                                                         _hd2846628599_)
                                                        (___match3990839909_
                                                         _e2846128581_
                                                         _hd2846228585_
                                                         _tl2846328588_
                                                         _e2846528595_
                                                         _hd2846628599_
                                                         _tl2846728602_))))
                                                (___match3991439915_
                                                 _e2846128581_
                                                 _hd2846228585_
                                                 _tl2846328588_))
                                            (if (gx#stx-pair? _tl2846328588_)
                                                (let ((_e2847428547_
                                                       (gx#syntax-e
                                                        _tl2846328588_)))
                                                  (let ((_tl2847628554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2847428547_)))
                                                        (_hd2847528551_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2847428547_))))
                                                    (___match3990839909_
                                                     _e2846128581_
                                                     _hd2846228585_
                                                     _tl2846328588_
                                                     _e2847428547_
                                                     _hd2847528551_
                                                     _tl2847628554_)))
                                                (___match3991439915_
                                                 _e2846128581_
                                                 _hd2846228585_
                                                 _tl2846328588_))))
                                      (if (gx#stx-pair? _tl2846328588_)
                                          (let ((_e2847428547_
                                                 (gx#syntax-e _tl2846328588_)))
                                            (let ((_tl2847628554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2847428547_)))
                                                  (_hd2847528551_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2847428547_))))
                                              (___match3990839909_
                                               _e2846128581_
                                               _hd2846228585_
                                               _tl2846328588_
                                               _e2847428547_
                                               _hd2847528551_
                                               _tl2847628554_)))
                                          (___match3991439915_
                                           _e2846128581_
                                           _hd2846228585_
                                           _tl2846328588_)))))
                              (___kont3987439875_)))))))
                 (_parse-vector28273_
                  (lambda (_body28449_)
                    (if (_simple-vector?28274_ _body28449_)
                        (cons 'simple:
                              (cons (gx#stx-map _parse128270_ _body28449_)
                                    '()))
                        (cons 'list:
                              (cons (_parse-list28272_ _body28449_) '())))))
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
                                   (_simple-vector?28274_ _L28430_)
                                   '#f)))
                            (___kont3992239923_
                             (lambda () (gx#stx-null? _body28386_))))
                        (if (gx#stx-pair? ___stx3991739918_)
                            (let ((_e2839428420_
                                   (gx#syntax-e ___stx3991739918_)))
                              (let ((_tl2839628427_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2839428420_)))
                                    (_hd2839528424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2839428420_))))
                                (___kont3992039921_
                                 _tl2839628427_
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
                                        (_parse128270_ _L28361_)
                                        (_recur28298_ _L28359_))))
                              (___kont3993839939_
                               (lambda ()
                                 (if (gx#stx-null? _rest28301_)
                                     '()
                                     (_parse-error28277_ _rest28301_)))))
                          (let ((___match3995239953_
                                 (lambda (_e2831028339_
                                          _hd2831128343_
                                          _tl2831228346_
                                          _e2831328349_
                                          _hd2831428353_
                                          _tl2831528356_)
                                   (let ((_L28359_ _tl2831528356_)
                                         (_L28361_ _hd2831428353_)
                                         (_L28362_ _hd2831128343_))
                                     (if (gx#stx-keyword? _L28362_)
                                         (___kont3993639937_
                                          _L28359_
                                          _L28361_
                                          _L28362_)
                                         (___kont3993839939_))))))
                            (if (gx#stx-pair? ___stx3993339934_)
                                (let ((_e2831028339_
                                       (gx#syntax-e ___stx3993339934_)))
                                  (let ((_tl2831228346_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2831028339_)))
                                        (_hd2831128343_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2831028339_))))
                                    (if (gx#stx-pair? _tl2831228346_)
                                        (let ((_e2831328349_
                                               (gx#syntax-e _tl2831228346_)))
                                          (let ((_tl2831528356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2831328349_)))
                                                (_hd2831428353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2831328349_))))
                                            (___match3995239953_
                                             _e2831028339_
                                             _hd2831128343_
                                             _tl2831228346_
                                             _e2831328349_
                                             _hd2831428353_
                                             _tl2831528356_)))
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
          (_parse128270_ _stx28266_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx29950_)
        (let ((_match-stx29953_ '#f))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx29950_
           _match-stx29953_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g42299_
        (let ((_g42298_ (let () (declare (not safe)) (##length _g42299_))))
          (cond ((let () (declare (not safe)) (##fx= _g42298_ 1))
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__0|
                        _g42299_))
                ((let () (declare (not safe)) (##fx= _g42298_ 2))
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__%|
                        _g42299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g42299_))))))
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
              (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28250_)
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
                                          (_loop26988_
                                           _L28231_
                                           _vars27277_
                                           _K27278_)))
                                       (___kont3997639977_
                                        (lambda (_L28200_)
                                          (_loop26988_
                                           _L28200_
                                           _vars27277_
                                           _K27278_)))
                                       (___kont3997839979_
                                        (lambda (_L28148_)
                                          (_loop26988_
                                           _L28148_
                                           _vars27277_
                                           _K27278_)))
                                       (___kont3998039981_
                                        (lambda () (_K27278_ _vars27277_))))
                                   (if (gx#stx-pair? ___stx3997139972_)
                                       (let ((_e2805128221_
                                              (gx#syntax-e ___stx3997139972_)))
                                         (let ((_tl2805328228_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2805128221_)))
                                               (_hd2805228225_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2805128221_))))
                                           (if (gx#stx-null? _tl2805328228_)
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
                 (if (gx#stx-pair? _tl2805328228_)
                     (let ((_e2805928190_ (gx#syntax-e _tl2805328228_)))
                       (let ((_tl2806128197_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2805928190_)))
                             (_hd2806028194_
                              (let ()
                                (declare (not safe))
                                (##car _e2805928190_))))
                         (if (gx#stx-null? _tl2806128197_)
                             (___kont3997639977_ _hd2806028194_)
                             (___kont3998039981_))))
                     (___kont3998039981_))
                 (if (equal? _e2805828186_ '::)
                     (if (gx#stx-pair? _tl2805328228_)
                         (let ((_e2806728114_ (gx#syntax-e _tl2805328228_)))
                           (let ((_tl2806928121_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2806728114_)))
                                 (_hd2806828118_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2806728114_))))
                             (if (gx#stx-pair? _tl2806928121_)
                                 (let ((_e2807028124_
                                        (gx#syntax-e _tl2806928121_)))
                                   (let ((_tl2807228131_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2807028124_)))
                                         (_hd2807128128_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2807028124_))))
                                     (if (gx#stx-datum? _hd2807128128_)
                                         (let ((_e2807328134_
                                                (gx#stx-e _hd2807128128_)))
                                           (if (equal? _e2807328134_ '=>:)
                                               (if (gx#stx-pair?
                                                    _tl2807228131_)
                                                   (let ((_e2807428138_
                                                          (gx#syntax-e
                                                           _tl2807228131_)))
                                                     (let ((_tl2807628145_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2807428138_)))
                                                           (_hd2807528142_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2807428138_))))
                                                       (if (gx#stx-null?
                                                            _tl2807628145_)
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
                                          (_loop26988_
                                           _L27978_
                                           _vars27277_
                                           (lambda (_g2799027992_)
                                             (_loop26988_
                                              (cons _L27920_ _L27976_)
                                              _g2799027992_
                                              _K27278_)))))
                                       (___kont3996039961_
                                        (lambda () (_K27278_ _vars27277_))))
                                   (if (gx#stx-pair? ___stx3995539956_)
                                       (let ((_e2794027966_
                                              (gx#syntax-e ___stx3995539956_)))
                                         (let ((_tl2794227973_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2794027966_)))
                                               (_hd2794127970_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2794027966_))))
                                           (___kont3995839959_
                                            _tl2794227973_
                                            _hd2794127970_)))
                                       (___kont3996039961_))))))
                            (___kont4005840059_
                             (lambda (_L27887_)
                               (_loop26988_ _L27887_ _vars27277_ _K27278_)))
                            (___kont4006040061_
                             (lambda (_L27833_ _L27835_)
                               (_loop26988_
                                _L27835_
                                _vars27277_
                                (lambda (_g2785027852_)
                                  (_loop26988_
                                   _L27833_
                                   _g2785027852_
                                   _K27278_)))))
                            (___kont4006240063_
                             (lambda (_L27769_ _L27771_)
                               (_loop26988_
                                _L27771_
                                _vars27277_
                                (lambda (_g2778627788_)
                                  (_loop26988_
                                   _L27769_
                                   _g2778627788_
                                   _K27278_)))))
                            (___kont4006440065_
                             (lambda (_L27714_)
                               (_loop26988_ _L27714_ _vars27277_ _K27278_)))
                            (___kont4006640067_
                             (lambda (_L27664_ _L27666_)
                               (_loop-vector26990_
                                _L27664_
                                _vars27277_
                                _K27278_)))
                            (___kont4006840069_
                             (lambda (_L27621_)
                               (_loop-vector26990_
                                _L27621_
                                _vars27277_
                                _K27278_)))
                            (___kont4007040071_
                             (lambda (_L27564_)
                               (_loop-class-list26992_
                                _L27564_
                                _vars27277_
                                _K27278_)))
                            (___kont4007240073_
                             (lambda (_L27505_ _L27507_)
                               (_loop26988_ _L27505_ _vars27277_ _K27278_)))
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
                                (lambda (_e2734827644_
                                         _hd2734927648_
                                         _tl2735027651_
                                         _e2735127654_
                                         _hd2735227658_
                                         _tl2735327661_)
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
                                (lambda (_e2730327908_
                                         _hd2730427912_
                                         _tl2730527915_)
                                  (let ((_L27918_ _tl2730527915_)
                                        (_L27920_ _hd2730427912_))
                                    (if (or (gx#stx-eq? 'and: _L27920_)
                                            (gx#stx-eq? 'or: _L27920_))
                                        (___kont4005640057_ _L27918_ _L27920_)
                                        (if (gx#stx-datum? _hd2730427912_)
                                            (let ((_e2731027873_
                                                   (gx#stx-e _hd2730427912_)))
                                              (if (equal? _e2731027873_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2730527915_)
                                                      (let ((_e2731127877_
                                                             (gx#syntax-e
                                                              _tl2730527915_)))
                                                        (let ((_tl2731327884_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2731127877_)))
                      (_hd2731227881_
                       (let () (declare (not safe)) (##car _e2731127877_))))
                  (if (gx#stx-null? _tl2731327884_)
                      (___kont4005840059_ _hd2731227881_)
                      (___kont4007640077_))))
              (___kont4007640077_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _e2731027873_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2730527915_)
                                                          (let ((_e2732027813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2730527915_)))
                    (let ((_tl2732227820_
                           (let () (declare (not safe)) (##cdr _e2732027813_)))
                          (_hd2732127817_
                           (let ()
                             (declare (not safe))
                             (##car _e2732027813_))))
                      (if (gx#stx-pair? _tl2732227820_)
                          (let ((_e2732327823_ (gx#syntax-e _tl2732227820_)))
                            (let ((_tl2732527830_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2732327823_)))
                                  (_hd2732427827_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2732327823_))))
                              (if (gx#stx-null? _tl2732527830_)
                                  (___kont4006040061_
                                   _hd2732427827_
                                   _hd2732127817_)
                                  (___kont4007640077_))))
                          (if (gx#stx-null? _tl2732227820_)
                              (___match4020840209_
                               _e2730327908_
                               _hd2730427912_
                               _tl2730527915_
                               _e2732027813_
                               _hd2732127817_
                               _tl2732227820_)
                              (___kont4007640077_)))))
                  (___kont4007640077_))
              (if (equal? _e2731027873_ 'splice:)
                  (if (gx#stx-pair? _tl2730527915_)
                      (let ((_e2733227749_ (gx#syntax-e _tl2730527915_)))
                        (let ((_tl2733427756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2733227749_)))
                              (_hd2733327753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2733227749_))))
                          (if (gx#stx-pair? _tl2733427756_)
                              (let ((_e2733527759_
                                     (gx#syntax-e _tl2733427756_)))
                                (let ((_tl2733727766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2733527759_)))
                                      (_hd2733627763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2733527759_))))
                                  (if (gx#stx-null? _tl2733727766_)
                                      (___kont4006240063_
                                       _hd2733627763_
                                       _hd2733327753_)
                                      (___kont4007640077_))))
                              (if (gx#stx-null? _tl2733427756_)
                                  (___match4020840209_
                                   _e2730327908_
                                   _hd2730427912_
                                   _tl2730527915_
                                   _e2733227749_
                                   _hd2733327753_
                                   _tl2733427756_)
                                  (___kont4007640077_)))))
                      (___kont4007640077_))
                  (if (equal? _e2731027873_ 'box:)
                      (if (gx#stx-pair? _tl2730527915_)
                          (let ((_e2734327704_ (gx#syntax-e _tl2730527915_)))
                            (let ((_tl2734527711_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2734327704_)))
                                  (_hd2734427708_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2734327704_))))
                              (if (gx#stx-null? _tl2734527711_)
                                  (___kont4006440065_ _hd2734427708_)
                                  (___kont4007640077_))))
                          (___kont4007640077_))
                      (if (gx#stx-pair? _tl2730527915_)
                          (let ((_e2735127654_ (gx#syntax-e _tl2730527915_)))
                            (let ((_tl2735327661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2735127654_)))
                                  (_hd2735227658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2735127654_))))
                              (if (gx#stx-null? _tl2735327661_)
                                  (___match4020840209_
                                   _e2730327908_
                                   _hd2730427912_
                                   _tl2730527915_
                                   _e2735127654_
                                   _hd2735227658_
                                   _tl2735327661_)
                                  (if (equal? _e2731027873_ 'struct:)
                                      (if (gx#stx-pair? _tl2735327661_)
                                          (let ((_e2736227611_
                                                 (gx#syntax-e _tl2735327661_)))
                                            (let ((_tl2736427618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2736227611_)))
                                                  (_hd2736327615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2736227611_))))
                                              (if (gx#stx-null? _tl2736427618_)
                                                  (___kont4006840069_
                                                   _hd2736327615_)
                                                  (___kont4007640077_))))
                                          (___kont4007640077_))
                                      (if (equal? _e2731027873_ 'class:)
                                          (if (gx#stx-pair? _tl2735327661_)
                                              (let ((_e2737327554_
                                                     (gx#syntax-e
                                                      _tl2735327661_)))
                                                (let ((_tl2737527561_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2737327554_)))
                                                      (_hd2737427558_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2737327554_))))
                                                  (if (gx#stx-null?
                                                       _tl2737527561_)
                                                      (___kont4007040071_
                                                       _hd2737427558_)
                                                      (___kont4007640077_))))
                                              (___kont4007640077_))
                                          (if (equal? _e2731027873_ 'apply:)
                                              (if (gx#stx-pair? _tl2735327661_)
                                                  (let ((_e2738527495_
                                                         (gx#syntax-e
                                                          _tl2735327661_)))
                                                    (let ((_tl2738727502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2738527495_)))
                                                          (_hd2738627499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2738527495_))))
                                                      (if (gx#stx-null?
                                                           _tl2738727502_)
                                                          (___kont4007240073_
                                                           _hd2738627499_
                                                           _hd2735227658_)
                                                          (___kont4007640077_))))
                                                  (___kont4007640077_))
                                              (___kont4007640077_)))))))
                          (___kont4007640077_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2730527915_)
                                                (let ((_e2735127654_
                                                       (gx#syntax-e
                                                        _tl2730527915_)))
                                                  (let ((_tl2735327661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2735127654_)))
                                                        (_hd2735227658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2735127654_))))
                                                    (if (gx#stx-null?
                                                         _tl2735327661_)
                                                        (___match4020840209_
                                                         _e2730327908_
                                                         _hd2730427912_
                                                         _tl2730527915_
                                                         _e2735127654_
                                                         _hd2735227658_
                                                         _tl2735327661_)
                                                        (___kont4007640077_))))
                                                (___kont4007640077_))))))))
                          (if (gx#stx-pair? ___stx4005140052_)
                              (let ((_e2729428007_
                                     (gx#syntax-e ___stx4005140052_)))
                                (let ((_tl2729628014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2729428007_)))
                                      (_hd2729528011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2729428007_))))
                                  (if (gx#stx-datum? _hd2729528011_)
                                      (let ((_e2729728017_
                                             (gx#stx-e _hd2729528011_)))
                                        (if (equal? _e2729728017_ '?:)
                                            (if (gx#stx-pair? _tl2729628014_)
                                                (let ((_e2729828021_
                                                       (gx#syntax-e
                                                        _tl2729628014_)))
                                                  (let ((_tl2730028028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2729828021_)))
                                                        (_hd2729928025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2729828021_))))
                                                    (___kont4005440055_
                                                     _tl2730028028_)))
                                                (___match4010240103_
                                                 _e2729428007_
                                                 _hd2729528011_
                                                 _tl2729628014_))
                                            (___match4010240103_
                                             _e2729428007_
                                             _hd2729528011_
                                             _tl2729628014_)))
                                      (___match4010240103_
                                       _e2729428007_
                                       _hd2729528011_
                                       _tl2729628014_))))
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
                               (_loop-list26991_
                                _L27257_
                                _vars27153_
                                _K27154_)))
                            (___kont4031440315_
                             (lambda (_L27211_)
                               (_loop26988_ _L27211_ _vars27153_ _K27154_))))
                        (if (gx#stx-pair? ___stx4030940310_)
                            (let ((_e2716027233_
                                   (gx#syntax-e ___stx4030940310_)))
                              (let ((_tl2716227240_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2716027233_)))
                                    (_hd2716127237_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2716027233_))))
                                (if (gx#stx-datum? _hd2716127237_)
                                    (let ((_e2716327243_
                                           (gx#stx-e _hd2716127237_)))
                                      (if (equal? _e2716327243_ 'simple:)
                                          (if (gx#stx-pair? _tl2716227240_)
                                              (let ((_e2716427247_
                                                     (gx#syntax-e
                                                      _tl2716227240_)))
                                                (let ((_tl2716627254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2716427247_)))
                                                      (_hd2716527251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2716427247_))))
                                                  (if (gx#stx-null?
                                                       _tl2716627254_)
                                                      (___kont4031240313_
                                                       _hd2716527251_)
                                                      (_g2715727180_))))
                                              (_g2715727180_))
                                          (if (equal? _e2716327243_ 'list:)
                                              (if (gx#stx-pair? _tl2716227240_)
                                                  (let ((_e2717227201_
                                                         (gx#syntax-e
                                                          _tl2716227240_)))
                                                    (let ((_tl2717427208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2717227201_)))
                                                          (_hd2717327205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2717227201_))))
                                                      (if (gx#stx-null?
                                                           _tl2717427208_)
                                                          (___kont4031440315_
                                                           _hd2717327205_)
                                                          (_g2715727180_))))
                                                  (_g2715727180_))
                                              (_g2715727180_))))
                                    (_g2715727180_))))
                            (_g2715727180_))))))
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
                               (_loop26988_
                                _L27129_
                                _vars27083_
                                (lambda (_g2714127143_)
                                  (_loop-list26991_
                                   _L27127_
                                   _g2714127143_
                                   _K27084_)))))
                            (___kont4036440365_
                             (lambda () (_K27084_ _vars27083_))))
                        (if (gx#stx-pair? ___stx4035940360_)
                            (let ((_e2709127117_
                                   (gx#syntax-e ___stx4035940360_)))
                              (let ((_tl2709327124_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2709127117_)))
                                    (_hd2709227121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2709127117_))))
                                (___kont4036240363_
                                 _tl2709327124_
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
                               (_loop26988_
                                _L27055_
                                _vars26996_
                                (lambda (_g2707127073_)
                                  (_loop-class-list26992_
                                   _L27053_
                                   _g2707127073_
                                   _K26997_)))))
                            (___kont4038040381_
                             (lambda () (_K26997_ _vars26996_))))
                        (if (gx#stx-pair? ___stx4037540376_)
                            (let ((_e2700427033_
                                   (gx#syntax-e ___stx4037540376_)))
                              (let ((_tl2700627040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2700427033_)))
                                    (_hd2700527037_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2700427033_))))
                                (if (gx#stx-pair? _tl2700627040_)
                                    (let ((_e2700727043_
                                           (gx#syntax-e _tl2700627040_)))
                                      (let ((_tl2700927050_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2700727043_)))
                                            (_hd2700827047_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2700727043_))))
                                        (___kont4037840379_
                                         _tl2700927050_
                                         _hd2700827047_)))
                                    (___kont4038040381_))))
                            (___kont4038040381_)))))))
          (_loop26988_ _ptree26985_ '() values))))
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
                             (cons (_generate123575_
                                    _tgt25198_
                                    _L26951_
                                    _K25201_
                                    _E25202_)
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
                                                              (cons (_generate123575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L26918_
                             _L26889_
                             _K25201_
                             _E25202_)
                            (cons _E25202_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2690426915_))))
                   (_g2690226930_ (gx#genident 'e)))))
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
                      (cons (_generate123575_
                             _L26842_
                             _L26805_
                             _K25201_
                             _E25202_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25202_ '()))))))
                            _g2682826839_))))
                   (_g2682626854_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2671226962_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4052940530_)
                                                               (let ((_e2671826941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4052940530_)))
                         (let ((_tl2672026948_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2671826941_)))
                               (_hd2671926945_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2671826941_))))
                           (if (gx#stx-null? _tl2672026948_)
                               (___kont4053440535_ _hd2671926945_)
                               (if (gx#stx-datum? _hd2671926945_)
                                   (let ((_e2672526875_
                                          (gx#stx-e _hd2671926945_)))
                                     (if (equal? _e2672526875_ '=>:)
                                         (if (gx#stx-pair? _tl2672026948_)
                                             (let ((_e2672626879_
                                                    (gx#syntax-e
                                                     _tl2672026948_)))
                                               (let ((_tl2672826886_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2672626879_)))
                                                     (_hd2672726883_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2672626879_))))
                                                 (if (gx#stx-null?
                                                      _tl2672826886_)
                                                     (___kont4053640537_
                                                      _hd2672726883_)
                                                     (_g2671526750_))))
                                             (_g2671526750_))
                                         (if (equal? _e2672526875_ '::)
                                             (if (gx#stx-pair? _tl2672026948_)
                                                 (let ((_e2673526771_
                                                        (gx#syntax-e
                                                         _tl2672026948_)))
                                                   (let ((_tl2673726778_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2673526771_)))
                                                         (_hd2673626775_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2673526771_))))
                                                     (if (gx#stx-pair?
                                                          _tl2673726778_)
                                                         (let ((_e2673826781_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2673726778_)))
                   (let ((_tl2674026788_
                          (let () (declare (not safe)) (##cdr _e2673826781_)))
                         (_hd2673926785_
                          (let () (declare (not safe)) (##car _e2673826781_))))
                     (if (gx#stx-datum? _hd2673926785_)
                         (let ((_e2674126791_ (gx#stx-e _hd2673926785_)))
                           (if (equal? _e2674126791_ '=>:)
                               (if (gx#stx-pair? _tl2674026788_)
                                   (let ((_e2674226795_
                                          (gx#syntax-e _tl2674026788_)))
                                     (let ((_tl2674426802_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2674226795_)))
                                           (_hd2674326799_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2674226795_))))
                                       (if (gx#stx-null? _tl2674426802_)
                                           (___kont4053840539_
                                            _hd2674326799_
                                            _hd2673626775_)
                                           (_g2671526750_))))
                                   (_g2671526750_))
                               (_g2671526750_)))
                         (_g2671526750_))))
                 (_g2671526750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2671526750_))
                                             (_g2671526750_))))
                                   (_g2671526750_)))))
                       (_g2671526750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4052940530_)
                                                        (___kont4053240533_)
                                                        (_g2671226962_)))))))
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
                                                         (_generate123575_
                                                          _tgt25198_
                                                          _L26648_
                                                          (_generate123575_
                                                           _tgt25198_
                                                           (cons 'and:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26646_)
                   _K25201_
                   _E25202_)
                  _E25202_)))
              (___kont4051840519_ (lambda () _K25201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4051340514_)
                                                      (let ((_e2661026636_
                                                             (gx#syntax-e
                                                              ___stx4051340514_)))
                                                        (let ((_tl2661226643_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2661026636_)))
                      (_hd2661126640_
                       (let () (declare (not safe)) (##car _e2661026636_))))
                  (___kont4051640517_ _tl2661226643_ _hd2661126640_)))
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
                                                         (_generate123575_
                                                          _tgt25198_
                                                          _L26555_
                                                          _K25201_
                                                          (_generate123575_
                                                           _tgt25198_
                                                           (cons 'or: _L26553_)
                                                           _K25201_
                                                           _E25202_))))
                                                      (___kont4050240503_
                                                       (lambda () _E25202_)))
                                                  (if (gx#stx-pair?
                                                       ___stx4049740498_)
                                                      (let ((_e2651726543_
                                                             (gx#syntax-e
                                                              ___stx4049740498_)))
                                                        (let ((_tl2651926550_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2651726543_)))
                      (_hd2651826547_
                       (let () (declare (not safe)) (##car _e2651726543_))))
                  (___kont4050040501_ _tl2651926550_ _hd2651826547_)))
              (___kont4050240503_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4062040621_
                                            (lambda (_L26465_)
                                              (_generate123575_
                                               _tgt25198_
                                               _L26465_
                                               _E25202_
                                               _K25201_)))
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
                                                            (let ((_e2637026388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2636726385_)))
                      (let ((_hd2637126392_
                             (let ()
                               (declare (not safe))
                               (##car _e2637026388_)))
                            (_tl2637226395_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2637026388_))))
                        (if (gx#stx-pair? _tl2637226395_)
                            (let ((_e2637326398_ (gx#syntax-e _tl2637226395_)))
                              (let ((_hd2637426402_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2637326398_)))
                                    (_tl2637526405_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2637326398_))))
                                (if (gx#stx-null? _tl2637526405_)
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
                                         (cons (_generate123575_
                                                _L26410_
                                                _L26349_
                                                _K25201_
                                                _E25202_)
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
                                             (cons (_generate123575_
                                                    _L26408_
                                                    _L26347_
                                                    _K25201_
                                                    _E25202_)
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
                                             (cons (_generate123575_
                                                    _L26410_
                                                    _L26349_
                                                    (_generate123575_
                                                     _L26408_
                                                     _L26347_
                                                     _K25201_
                                                     _E25202_)
                                                    _E25202_)
                                                   '())))))))
                   (cons _E25202_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2637426402_
                                     _hd2637126392_)
                                    (_g2636626381_ _g2636726385_))))
                            (_g2636626381_ _g2636726385_))))
                    (_g2636626381_ _g2636726385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2636526430_
                                                 (list (gx#genident 'hd)
                                                       (gx#genident 'tl))))))
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
                                              (_generate-splice23577_
                                               _tgt25198_
                                               _L26265_
                                               _L26263_
                                               _K25201_
                                               _E25202_)))
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
                                                   (cons (_generate123575_
                                                          _L26206_
                                                          _L26177_
                                                          _K25201_
                                                          _E25202_)
                                                         '())))
                                       (cons _E25202_ '()))))))
                 _g2619226203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2619026218_
                                                 (gx#genident 'e)))))
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
                                            (cons (_generate-simple-vector23578_
                                                   _tgt25198_
                                                   _L26097_
                                                   '0
                                                   _K25201_
                                                   _E25202_)
                                                  (cons _E25202_ '()))))))
                            _g2611226123_))))
                   (_g2611026138_ (gx#stx-length _L26097_)))))
              (___kont4045240453_
               (lambda (_L26051_)
                 (_generate-list-vector23579_
                  _tgt25198_
                  _L26051_
                  'values->list
                  _K25201_
                  _E25202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4044740448_)
                                                      (let ((_e2600026073_
                                                             (gx#syntax-e
                                                              ___stx4044740448_)))
                                                        (let ((_tl2600226080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2600026073_)))
                      (_hd2600126077_
                       (let () (declare (not safe)) (##car _e2600026073_))))
                  (if (gx#stx-datum? _hd2600126077_)
                      (let ((_e2600326083_ (gx#stx-e _hd2600126077_)))
                        (if (equal? _e2600326083_ 'simple:)
                            (if (gx#stx-pair? _tl2600226080_)
                                (let ((_e2600426087_
                                       (gx#syntax-e _tl2600226080_)))
                                  (let ((_tl2600626094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2600426087_)))
                                        (_hd2600526091_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2600426087_))))
                                    (if (gx#stx-null? _tl2600626094_)
                                        (___kont4045040451_ _hd2600526091_)
                                        (_g2599726020_))))
                                (_g2599726020_))
                            (if (equal? _e2600326083_ 'list:)
                                (if (gx#stx-pair? _tl2600226080_)
                                    (let ((_e2601226041_
                                           (gx#syntax-e _tl2600226080_)))
                                      (let ((_tl2601426048_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2601226041_)))
                                            (_hd2601326045_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2601226041_))))
                                        (if (gx#stx-null? _tl2601426048_)
                                            (___kont4045240453_ _hd2601326045_)
                                            (_g2599726020_))))
                                    (_g2599726020_))
                                (_g2599726020_))))
                      (_g2599726020_))))
              (_g2599726020_))))))
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
                      (cons (_generate-simple-vector23578_
                             _tgt25198_
                             _L25902_
                             '0
                             _K25201_
                             _E25202_)
                            (cons _E25202_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25202_ '()))))))
                            _g2591725928_))))
                   (_g2591525943_ (gx#stx-length _L25902_)))))
              (___kont4040240403_
               (lambda (_L25856_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25219_ '()))
                             (cons (_generate-list-vector23579_
                                    _tgt25198_
                                    _L25856_
                                    'vector->list
                                    _K25201_
                                    _E25202_)
                                   (cons _E25202_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4039740398_)
                                                      (let ((_e2580525878_
                                                             (gx#syntax-e
                                                              ___stx4039740398_)))
                                                        (let ((_tl2580725885_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2580525878_)))
                      (_hd2580625882_
                       (let () (declare (not safe)) (##car _e2580525878_))))
                  (if (gx#stx-datum? _hd2580625882_)
                      (let ((_e2580825888_ (gx#stx-e _hd2580625882_)))
                        (if (equal? _e2580825888_ 'simple:)
                            (if (gx#stx-pair? _tl2580725885_)
                                (let ((_e2580925892_
                                       (gx#syntax-e _tl2580725885_)))
                                  (let ((_tl2581125899_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2580925892_)))
                                        (_hd2581025896_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2580925892_))))
                                    (if (gx#stx-null? _tl2581125899_)
                                        (___kont4040040401_ _hd2581025896_)
                                        (_g2580225825_))))
                                (_g2580225825_))
                            (if (equal? _e2580825888_ 'list:)
                                (if (gx#stx-pair? _tl2580725885_)
                                    (let ((_e2581725846_
                                           (gx#syntax-e _tl2580725885_)))
                                      (let ((_tl2581925853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2581725846_)))
                                            (_hd2581825850_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2581725846_))))
                                        (if (gx#stx-null? _tl2581925853_)
                                            (___kont4040240403_ _hd2581825850_)
                                            (_g2580225825_))))
                                    (_g2580225825_))
                                (_g2580225825_))))
                      (_g2580225825_))))
              (_g2580225825_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4063440635_
                                            (lambda (_L25738_ _L25740_)
                                              (_generate-struct23580_
                                               (gx#stx-e _L25740_)
                                               _tgt25198_
                                               _L25738_
                                               _K25201_
                                               _E25202_)))
                                           (___kont4063640637_
                                            (lambda (_L25679_ _L25681_)
                                              (_generate-class23581_
                                               (gx#stx-e _L25681_)
                                               _tgt25198_
                                               _L25679_
                                               _K25201_
                                               _E25202_)))
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
                 _g2559725608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2559525623_
                                                 (let ((_e25627_
                                                        (gx#stx-e _L25582_)))
                                                   (if (or (symbol? _e25627_)
                                                           (keyword? _e25627_)
                                                           (immediate?
                                                            _e25627_))
                                                       '##eq?
                                                       (if (number? _e25627_)
                                                           'eqv?
                                                           'equal?)))))))
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
                                 (cons (_generate123575_
                                        _L25535_
                                        _L25502_
                                        _K25201_
                                        _E25202_)
                                       '())))))
                 _g2552125532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2551925547_
                                                 (gx#genident 'e)))))
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
                                           (let ((_e2525026672_
                                                  (gx#syntax-e
                                                   ___stx4061140612_)))
                                             (let ((_tl2525226679_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2525026672_)))
                                                   (_hd2525126676_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2525026672_))))
                                               (if (gx#stx-datum?
                                                    _hd2525126676_)
                                                   (let ((_e2525326682_
                                                          (gx#stx-e
                                                           _hd2525126676_)))
                                                     (if (equal? _e2525326682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2525226679_)
                     (let ((_e2525426686_ (gx#syntax-e _tl2525226679_)))
                       (let ((_tl2525626693_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2525426686_)))
                             (_hd2525526690_
                              (let ()
                                (declare (not safe))
                                (##car _e2525426686_))))
                         (___kont4061440615_ _tl2525626693_ _hd2525526690_)))
                     (_g2524625388_))
                 (if (equal? _e2525326682_ 'and:)
                     (___kont4061640617_ _tl2525226679_)
                     (if (equal? _e2525326682_ 'or:)
                         (___kont4061840619_ _tl2525226679_)
                         (if (equal? _e2525326682_ 'not:)
                             (if (gx#stx-pair? _tl2525226679_)
                                 (let ((_e2527226455_
                                        (gx#syntax-e _tl2525226679_)))
                                   (let ((_tl2527426462_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2527226455_)))
                                         (_hd2527326459_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2527226455_))))
                                     (if (gx#stx-null? _tl2527426462_)
                                         (___kont4062040621_ _hd2527326459_)
                                         (_g2524625388_))))
                                 (_g2524625388_))
                             (if (equal? _e2525326682_ 'cons:)
                                 (if (gx#stx-pair? _tl2525226679_)
                                     (let ((_e2528126327_
                                            (gx#syntax-e _tl2525226679_)))
                                       (let ((_tl2528326334_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2528126327_)))
                                             (_hd2528226331_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2528126327_))))
                                         (if (gx#stx-pair? _tl2528326334_)
                                             (let ((_e2528426337_
                                                    (gx#syntax-e
                                                     _tl2528326334_)))
                                               (let ((_tl2528626344_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2528426337_)))
                                                     (_hd2528526341_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2528426337_))))
                                                 (if (gx#stx-null?
                                                      _tl2528626344_)
                                                     (___kont4062240623_
                                                      _hd2528526341_
                                                      _hd2528226331_)
                                                     (_g2524625388_))))
                                             (_g2524625388_))))
                                     (_g2524625388_))
                                 (if (equal? _e2525326682_ 'null:)
                                     (if (gx#stx-null? _tl2525226679_)
                                         (___kont4062440625_)
                                         (_g2524625388_))
                                     (if (equal? _e2525326682_ 'splice:)
                                         (if (gx#stx-pair? _tl2525226679_)
                                             (let ((_e2529726243_
                                                    (gx#syntax-e
                                                     _tl2525226679_)))
                                               (let ((_tl2529926250_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2529726243_)))
                                                     (_hd2529826247_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2529726243_))))
                                                 (if (gx#stx-pair?
                                                      _tl2529926250_)
                                                     (let ((_e2530026253_
                                                            (gx#syntax-e
                                                             _tl2529926250_)))
                                                       (let ((_tl2530226260_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2530026253_)))
                     (_hd2530126257_
                      (let () (declare (not safe)) (##car _e2530026253_))))
                 (if (gx#stx-null? _tl2530226260_)
                     (___kont4062640627_ _hd2530126257_ _hd2529826247_)
                     (_g2524625388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2524625388_))))
                                             (_g2524625388_))
                                         (if (equal? _e2525326682_ 'box:)
                                             (if (gx#stx-pair? _tl2525226679_)
                                                 (let ((_e2530826167_
                                                        (gx#syntax-e
                                                         _tl2525226679_)))
                                                   (let ((_tl2531026174_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2530826167_)))
                                                         (_hd2530926171_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2530826167_))))
                                                     (if (gx#stx-null?
                                                          _tl2531026174_)
                                                         (___kont4062840629_
                                                          _hd2530926171_)
                                                         (_g2524625388_))))
                                                 (_g2524625388_))
                                             (if (equal? _e2525326682_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2525226679_)
                                                     (let ((_e2531625972_
                                                            (gx#syntax-e
                                                             _tl2525226679_)))
                                                       (let ((_tl2531825979_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2531625972_)))
                     (_hd2531725976_
                      (let () (declare (not safe)) (##car _e2531625972_))))
                 (if (gx#stx-null? _tl2531825979_)
                     (___kont4063040631_ _hd2531725976_)
                     (_g2524625388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2524625388_))
                                                 (if (equal? _e2525326682_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2525226679_)
                                                         (let ((_e2532425777_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2525226679_)))
                   (let ((_tl2532625784_
                          (let () (declare (not safe)) (##cdr _e2532425777_)))
                         (_hd2532525781_
                          (let () (declare (not safe)) (##car _e2532425777_))))
                     (if (gx#stx-null? _tl2532625784_)
                         (___kont4063240633_ _hd2532525781_)
                         (_g2524625388_))))
                 (_g2524625388_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2525326682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2525226679_)
                     (let ((_e2533325718_ (gx#syntax-e _tl2525226679_)))
                       (let ((_tl2533525725_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2533325718_)))
                             (_hd2533425722_
                              (let ()
                                (declare (not safe))
                                (##car _e2533325718_))))
                         (if (gx#stx-pair? _tl2533525725_)
                             (let ((_e2533625728_
                                    (gx#syntax-e _tl2533525725_)))
                               (let ((_tl2533825735_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2533625728_)))
                                     (_hd2533725732_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2533625728_))))
                                 (if (gx#stx-null? _tl2533825735_)
                                     (___kont4063440635_
                                      _hd2533725732_
                                      _hd2533425722_)
                                     (_g2524625388_))))
                             (_g2524625388_))))
                     (_g2524625388_))
                 (if (equal? _e2525326682_ 'class:)
                     (if (gx#stx-pair? _tl2525226679_)
                         (let ((_e2534525659_ (gx#syntax-e _tl2525226679_)))
                           (let ((_tl2534725666_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2534525659_)))
                                 (_hd2534625663_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2534525659_))))
                             (if (gx#stx-pair? _tl2534725666_)
                                 (let ((_e2534825669_
                                        (gx#syntax-e _tl2534725666_)))
                                   (let ((_tl2535025676_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2534825669_)))
                                         (_hd2534925673_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2534825669_))))
                                     (if (gx#stx-null? _tl2535025676_)
                                         (___kont4063640637_
                                          _hd2534925673_
                                          _hd2534625663_)
                                         (_g2524625388_))))
                                 (_g2524625388_))))
                         (_g2524625388_))
                     (if (equal? _e2525326682_ 'datum:)
                         (if (gx#stx-pair? _tl2525226679_)
                             (let ((_e2535625572_
                                    (gx#syntax-e _tl2525226679_)))
                               (let ((_tl2535825579_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2535625572_)))
                                     (_hd2535725576_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2535625572_))))
                                 (if (gx#stx-null? _tl2535825579_)
                                     (___kont4063840639_ _hd2535725576_)
                                     (_g2524625388_))))
                             (_g2524625388_))
                         (if (equal? _e2525326682_ 'apply:)
                             (if (gx#stx-pair? _tl2525226679_)
                                 (let ((_e2536525482_
                                        (gx#syntax-e _tl2525226679_)))
                                   (let ((_tl2536725489_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2536525482_)))
                                         (_hd2536625486_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2536525482_))))
                                     (if (gx#stx-pair? _tl2536725489_)
                                         (let ((_e2536825492_
                                                (gx#syntax-e _tl2536725489_)))
                                           (let ((_tl2537025499_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2536825492_)))
                                                 (_hd2536925496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2536825492_))))
                                             (if (gx#stx-null? _tl2537025499_)
                                                 (___kont4064040641_
                                                  _hd2536925496_
                                                  _hd2536625486_)
                                                 (_g2524625388_))))
                                         (_g2524625388_))))
                                 (_g2524625388_))
                             (if (equal? _e2525326682_ 'var:)
                                 (if (gx#stx-pair? _tl2525226679_)
                                     (let ((_e2537625434_
                                            (gx#syntax-e _tl2525226679_)))
                                       (let ((_tl2537825441_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2537625434_)))
                                             (_hd2537725438_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2537625434_))))
                                         (if (gx#stx-null? _tl2537825441_)
                                             (___kont4064240643_
                                              _hd2537725438_)
                                             (_g2524625388_))))
                                     (_g2524625388_))
                                 (if (equal? _e2525326682_ 'any:)
                                     (if (gx#stx-null? _tl2525226679_)
                                         (___kont4064440645_)
                                         (_g2524625388_))
                                     (_g2524625388_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2524625388_))))
                                           (_g2524625388_))))))
                               _g2520525216_))))
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
                                  (let ((_g42300_
                                         (gx#syntax-split-splice
                                          _g2457824598_
                                          '0)))
                                    (begin
                                      (let ((_g42301_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42300_)
                                                   (##vector-length _g42300_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42301_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42301_)))
                                      (let ((_target2458024601_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42300_ 0)))
                                            (_tl2458224604_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42300_ 1))))
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
                        (_loop2458324607_
                         _lp-tl2458624624_
                         (cons _lp-hd2458524621_ _var2458724614_))))
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
                                         (let ((_g42302_
                                                (gx#syntax-split-splice
                                                 _g2464824668_
                                                 '0)))
                                           (begin
                                             (let ((_g42303_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42302_)
                                                          (##vector-length
                                                           _g42302_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42303_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42303_)))
                                             (let ((_target2465024671_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42302_
                                                       0)))
                                                   (_tl2465224674_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42302_
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
                               (_loop2465324677_
                                _lp-tl2465624694_
                                (cons _lp-hd2465524691_ _var-r2465724684_))))
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
                                                (let ((_g42304_
                                                       (gx#syntax-split-splice
                                                        _g2471924739_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42305_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42304_)
                         (##vector-length _g42304_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42305_ 2)))
                  (error "Context expects 2 values" _g42305_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2472124742_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42304_
                                                              0)))
                                                          (_tl2472324745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42304_
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
                                      (_loop2472424748_
                                       _lp-tl2472724765_
                                       (cons _lp-hd2472624762_
                                             _init2472824755_))))
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
                                         (foldr (lambda (_g2507025081_
                                                         _g2507125084_)
                                                  (cons _g2507025081_
                                                        _g2507125084_))
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
                                                     (foldr (lambda (_g2507225087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2507325090_)
                      (cons _g2507225087_ _g2507325090_))
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
                                                 (foldr (lambda (_g2507625099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2507725102_)
                  (cons _g2507625099_ _g2507725102_))
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
                                                               (foldr (lambda (_g2507825105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2507925108_)
                                (cons _g2507825105_ _g2507925108_))
                              '()
                              _L24772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2504225053_))))
                  (_g2504025111_
                   (_generate123575_ _L24916_ _hd24572_ _L25000_ _L25028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2501425025_))))
                                           (_g2501225115_
                                            (cons _L24832_
                                                  (cons _L24944_
                                                        (foldr (lambda (_g2511825121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2511925124_)
                         (cons (cons (gx#datum->syntax '#f 'reverse)
                                     (cons _g2511825121_ '()))
                               _g2511925124_))
                       '()
                       _L24701_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g2498624997_))))
                            (_g2498425127_
                             (cons _L24860_
                                   (cons (cons (gx#datum->syntax '#f '##cdr)
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L24701_
                                                  _L24631_))))))))
                      _g2495824969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2495625142_
                                                      (_generate123575_
                                                       _L24944_
                                                       _rest24573_
                                                       _K24574_
                                                       _E24575_)))))
                                               _g2493024941_))))
                                      (_g2492825146_ (gx#genident 'rest)))))
                                _g2490224913_))))
                       (_g2490025150_ (gx#genident 'hd)))))
                 _g2487424885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2487225154_
                                                 (gx#genident 'splice-try)))))
                                          _g2484624857_))))
                                 (_g2484425158_ (gx#genident 'splice-loop)))))
                           _g2481824829_))))
                  (_g2481625162_ (gx#genident 'splice-rest)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2479024801_))))
                                           (_g2478825166_ _tgt24570_))))
                                     _init2472924768_))))))
                    (_loop2472424748_ _target2472124742_ '()))
                  (_g2471824735_ _g2471924739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2471824735_
                                                 _g2471924739_)))))
                                    (_g2471725170_
                                     (make-list
                                      (gx#stx-length
                                       (foldr (lambda (_g2517325176_
                                                       _g2517425179_)
                                                (cons _g2517325176_
                                                      _g2517425179_))
                                              '()
                                              _L24631_))
                                      (cons (gx#datum->syntax '#f '@list)
                                            '()))))))
                              _var-r2465824697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2465324677_
                                                      _target2465024671_
                                                      '()))
                                                   (_g2464724664_
                                                    _g2464824668_)))))
                                         (_g2464724664_ _g2464824668_)))))
                             (_g2464625182_
                              (gx#gentemps
                               (foldr (lambda (_g2518525188_ _g2518625191_)
                                        (cons _g2518525188_ _g2518625191_))
                                      '()
                                      _L24631_))))))
                       _var2458824627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2458324607_
                                               _target2458024601_
                                               '()))
                                            (_g2457724594_ _g2457824598_)))))
                                  (_g2457724594_ _g2457824598_)))))
                      (_g2457625194_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd24572_)))))
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
                                               (let ((_e2448924510_
                                                      (gx#syntax-e
                                                       _g2448524507_)))
                                                 (let ((_hd2449024514_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2448924510_)))
                                                       (_tl2449124517_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2448924510_))))
                                                   (if (gx#stx-pair?
                                                        _tl2449124517_)
                                                       (let ((_e2449224520_
                                                              (gx#syntax-e
                                                               _tl2449124517_)))
                                                         (let ((_hd2449324524_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2449224520_)))
                       (_tl2449424527_
                        (let () (declare (not safe)) (##cdr _e2449224520_))))
                   (if (gx#stx-pair? _tl2449424527_)
                       (let ((_e2449524530_ (gx#syntax-e _tl2449424527_)))
                         (let ((_hd2449624534_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2449524530_)))
                               (_tl2449724537_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2449524530_))))
                           (if (gx#stx-null? _tl2449724537_)
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
                                                (cons (_generate123575_
                                                       _L24543_
                                                       _L24469_
                                                       (_recur24419_
                                                        _L24467_
                                                        (fx1+ _off24424_))
                                                       _E24417_)
                                                      '())))))
                                _hd2449624534_
                                _hd2449324524_
                                _hd2449024514_)
                               (_g2448424503_ _g2448524507_))))
                       (_g2448424503_ _g2448524507_))))
               (_g2448424503_ _g2448524507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2448424503_
                                                _g2448524507_)))))
                                   (_g2448324562_
                                    (list (gx#genident 'e)
                                          _tgt24412_
                                          _off24424_)))))
                              (___kont4097440975_ (lambda () _K24416_)))
                          (if (gx#stx-pair? ___stx4096940970_)
                              (let ((_e2443124457_
                                     (gx#syntax-e ___stx4096940970_)))
                                (let ((_tl2443324464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2443124457_)))
                                      (_hd2443224461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2443124457_))))
                                  (___kont4097240973_
                                   _tl2443324464_
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
                                       (cons (_generate123575_
                                              _L24326_
                                              _body24306_
                                              _K24308_
                                              _E24309_)
                                             '()))))))
                     _g2436724378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2436524396_
                                                     (let ((_$e24400_
                                                            _->list24307_))
                                                       (if (eq? 'values->list
                                                                _$e24400_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'values->list)
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
                            _->list24307_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2433924350_))))
                                     (_g2433724404_ _tgt24304_))))
                               _g2431224323_))))
                      (_g2431024408_ (gx#genident 'e)))))
                 (_generate-struct23580_
                  (lambda (_info23962_
                           _tgt23964_
                           _body23965_
                           _K23966_
                           _E23967_)
                    (let* ((_rtd23969_
                            (if (class-instance?
                                 |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
                                 _info23962_)
                                (unchecked-slot-ref
                                 _info23962_
                                 'type-exhibitor)
                                '#f))
                           (_fields23979_
                            (let _lp23972_ ((_rtd23975_ _rtd23969_)
                                            (_k23977_ '0))
                              (if _rtd23975_
                                  (_lp23972_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (##structure-ref
                                     _rtd23975_
                                     '2
                                     |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                     '#f))
                                   (fx+ (length (##structure-ref
                                                 _rtd23975_
                                                 '6
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                 '#f))
                                        _k23977_))
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
                              (_generate-simple-vector23578_
                               _tgt23964_
                               _L24148_
                               '1
                               _K23966_
                               _E23967_))
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
                               (_g2416524194_ _len24164_))))))
                    (___kont4099040991_
                     (lambda (_L24100_)
                       (cons 'if
                             (cons _L24030_
                                   (cons (_generate-list-vector23579_
                                          _tgt23964_
                                          _L24100_
                                          'struct->list
                                          _K23966_
                                          _E23967_)
                                         (cons _E23967_ '())))))))
                (if (gx#stx-pair? ___stx4098540986_)
                    (let ((_e2404924124_ (gx#syntax-e ___stx4098540986_)))
                      (let ((_tl2405124131_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2404924124_)))
                            (_hd2405024128_
                             (let ()
                               (declare (not safe))
                               (##car _e2404924124_))))
                        (if (gx#stx-datum? _hd2405024128_)
                            (let ((_e2405224134_ (gx#stx-e _hd2405024128_)))
                              (if (equal? _e2405224134_ 'simple:)
                                  (if (gx#stx-pair? _tl2405124131_)
                                      (let ((_e2405324138_
                                             (gx#syntax-e _tl2405124131_)))
                                        (let ((_tl2405524145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2405324138_)))
                                              (_hd2405424142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2405324138_))))
                                          (if (gx#stx-null? _tl2405524145_)
                                              (___kont4098840989_
                                               _hd2405424142_)
                                              (_g2404624069_))))
                                      (_g2404624069_))
                                  (if (equal? _e2405224134_ 'list:)
                                      (if (gx#stx-pair? _tl2405124131_)
                                          (let ((_e2406124090_
                                                 (gx#syntax-e _tl2405124131_)))
                                            (let ((_tl2406324097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2406124090_)))
                                                  (_hd2406224094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2406124090_))))
                                              (if (gx#stx-null? _tl2406324097_)
                                                  (___kont4099040991_
                                                   _hd2406224094_)
                                                  (_g2404624069_))))
                                          (_g2404624069_))
                                      (_g2404624069_))))
                            (_g2404624069_))))
                    (_g2404624069_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2401624027_))))
                                     (_g2401424202_
                                      (if (class-instance?
                                           |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                           _info23962_)
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
                                                               (cons _L24000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2420724218_))))
                                            (_g2420524233_
                                             (cadddr (unchecked-slot-ref
                                                      _info23962_
                                                      'expander-identifiers))))
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
                                                        (let ((_e2424124259_
                                                               (gx#syntax-e
                                                                _g2423824256_)))
                                                          (let ((_hd2424224263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2424124259_)))
                        (_tl2424324266_
                         (let () (declare (not safe)) (##cdr _e2424124259_))))
                    (if (gx#stx-pair? _tl2424324266_)
                        (let ((_e2424424269_ (gx#syntax-e _tl2424324266_)))
                          (let ((_hd2424524273_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2424424269_)))
                                (_tl2424624276_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2424424269_))))
                            (if (gx#stx-null? _tl2424624276_)
                                ((lambda (_L24279_ _L24281_)
                                   (let ()
                                     (cons _L24279_
                                           (cons _L24281_
                                                 (cons _L24000_ '())))))
                                 _hd2424524273_
                                 _hd2424224263_)
                                (_g2423724252_ _g2423824256_))))
                        (_g2423724252_ _g2423824256_))))
                (_g2423724252_ _g2423824256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2423624296_
                                             (list (unchecked-slot-ref
                                                    _info23962_
                                                    'runtime-identifier)
                                                   (if _final?23982_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2398623997_))))
                      (_g2398424300_ _tgt23964_))))
                 (_generate-class23581_
                  (lambda (_info23583_
                           _tgt23585_
                           _body23586_
                           _K23587_
                           _E23588_)
                    (letrec* ((_rtd23590_
                               (if (class-instance?
                                    |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
                                    _info23583_)
                                   (unchecked-slot-ref
                                    _info23583_
                                    'type-exhibitor)
                                   '#f))
                              (_known-slot?23592_
                               (if _rtd23590_
                                   (lambda (_key23956_)
                                     (let ((_slot23959_
                                            (keyword->symbol
                                             (gx#stx-e _key23956_))))
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
                                                    (_rtd-known-slot?23594_
                                                     _g2395023952_
                                                     _slot23945_))
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
                                           (cons (_generate123575_
                                                  _L23905_
                                                  _L23790_
                                                  (_recur23595_
                                                   _klass23729_
                                                   _L23788_)
                                                  _E23588_)
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
                    _g2389123902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2388923923_
                                                    (gx#genident 'e)))))
                                             _g2386323874_))))
                                    (_g2386123927_ (gx#genident 'slot)))))
                              _g2383523846_))))
                     (_g2383323931_ _klass23729_))))
               _g2380823819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2380623935_ _tgt23585_))))
                                         (___kont4104041041_
                                          (lambda () _K23587_)))
                                     (if (gx#stx-pair? ___stx4103541036_)
                                         (let ((_e2373923768_
                                                (gx#syntax-e
                                                 ___stx4103541036_)))
                                           (let ((_tl2374123775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2373923768_)))
                                                 (_hd2374023772_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2373923768_))))
                                             (if (gx#stx-pair? _tl2374123775_)
                                                 (let ((_e2374223778_
                                                        (gx#syntax-e
                                                         _tl2374123775_)))
                                                   (let ((_tl2374423785_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2374223778_)))
                                                         (_hd2374323782_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2374223778_))))
                                                     (___kont4103841039_
                                                      _tl2374423785_
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
                                  (cons (_recur23595_ _L23612_ _body23586_)
                                        '())))
                      (cons _E23588_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2368423695_))))
                             (_g2368223713_
                              (if _final?23593_
                                  (gx#datum->syntax '#f 'direct-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2365623667_))))
              (_g2365423717_
               (unchecked-slot-ref _info23583_ 'runtime-identifier)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2362823639_))))
                                       (_g2362623721_ _tgt23585_))))
                                 _g2359823609_))))
                        (_g2359623725_ (gx#genident 'class)))))))
          (_generate123575_ _tgt23570_ _ptree23571_ _K23572_ _E23573_))))
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
                                            (_lp23393_
                                             _L23441_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_g2351823520_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core$<match>[1]#parse-match-pattern__%|
                           _g2351823520_
                           _stx22464_))
                        _L23506_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _L23504_)
                              (let ((_$e23524_ (gx#stx-source _L23443_)))
                                (if _$e23524_
                                    _$e23524_
                                    (gx#stx-source _stx22464_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r23398_))))
                                         (___kont4106441065_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22464_
                                             _L23443_))))
                                     (let* ((___match4108241083_
                                             (lambda (_e2346823494_
                                                      _hd2346923498_
                                                      _tl2347023501_)
                                               (let ((_L23504_ _tl2347023501_)
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
                                             (lambda (_e2346323535_
                                                      _hd2346423539_
                                                      _tl2346523542_)
                                               (let ((_L23545_ _tl2346523542_))
                                                 (if (and (gx#stx-list?
                                                           _L23545_)
                                                          (not (gx#stx-null?
                                                                _L23545_)))
                                                     (___kont4106041061_
                                                      _L23545_)
                                                     (___match4108241083_
                                                      _e2346323535_
                                                      _hd2346423539_
                                                      _tl2346523542_))))))
                                       (if (gx#stx-pair? ___stx4105741058_)
                                           (let ((_e2346323535_
                                                  (gx#syntax-e
                                                   ___stx4105741058_)))
                                             (let ((_tl2346523542_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2346323535_)))
                                                   (_hd2346423539_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2346323535_))))
                                               (if (gx#identifier?
                                                    _hd2346423539_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g42306_|
                                                        _hd2346423539_)
                                                       (___match4107641077_
                                                        _e2346323535_
                                                        _hd2346423539_
                                                        _tl2346523542_)
                                                       (___match4108241083_
                                                        _e2346323535_
                                                        _hd2346423539_
                                                        _tl2346523542_))
                                                   (___match4108241083_
                                                    _e2346323535_
                                                    _hd2346423539_
                                                    _tl2346523542_))))
                                           (___kont4106441065_)))))))
                              (___kont4109041091_ (lambda () _r23398_)))
                          (if (gx#stx-pair? ___stx4108541086_)
                              (let ((_e2340523431_
                                     (gx#syntax-e ___stx4108541086_)))
                                (let ((_tl2340723438_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2340523431_)))
                                      (_hd2340623435_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2340523431_))))
                                  (___kont4108841089_
                                   _tl2340723438_
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
                                                 (let ((_g42307_
                                                        (gx#syntax-split-splice
                                                         _g2320623226_
                                                         '0)))
                                                   (begin
                                                     (let ((_g42308_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g42307_)
                          (##vector-length _g42307_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g42308_ 2)))
                   (error "Context expects 2 values" _g42308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2320823229_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42307_
                                                               0)))
                                                           (_tl2321023232_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42307_
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
                                       (_loop2321123235_
                                        _lp-tl2321423252_
                                        (cons _lp-hd2321323249_
                                              _target2321523242_))))
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
                                           _g2333323344_))))
                                  (_g2333123362_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23193_
                                                            (cons _L23291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23319_ '())))
                                    (gx#stx-source _stx22464_))))))
                            _g2330523316_))))
                   (_g2330323366_
                    (_generate-clauses22472_
                     _body23175_
                     (cons _L23193_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2327723288_))))
                                            (_g2327523370_
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
                                              (gx#stx-source _stx22464_))))))
                                      _target2321623255_))))))
                     (_loop2321123235_ _target2320823229_ '()))
                   (_g2320523222_ _g2320623226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2320523222_
                                                  _g2320623226_)))))
                                     (_g2320423382_ _tgt-lst22466_))))
                               _g2317923190_))))
                      (_g2317723386_ (gx#genident 'E)))))
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
                                             (let ((_e2309823119_
                                                    (gx#syntax-e
                                                     _g2309523116_)))
                                               (let ((_hd2309923123_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2309823119_)))
                                                     (_tl2310023126_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2309823119_))))
                                                 (if (gx#stx-pair?
                                                      _tl2310023126_)
                                                     (let ((_e2310123129_
                                                            (gx#syntax-e
                                                             _tl2310023126_)))
                                                       (let ((_hd2310223133_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2310123129_)))
                     (_tl2310323136_
                      (let () (declare (not safe)) (##cdr _e2310123129_))))
                 (if (gx#stx-pair? _tl2310323136_)
                     (let ((_e2310423139_ (gx#syntax-e _tl2310323136_)))
                       (let ((_hd2310523143_
                              (let ()
                                (declare (not safe))
                                (##car _e2310423139_)))
                             (_tl2310623146_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2310423139_))))
                         (if (gx#stx-null? _tl2310623146_)
                             ((lambda (_L23149_ _L23151_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23151_)
                                                      (_generate122473_
                                                       _L23151_
                                                       _L23149_
                                                       _E22829_)
                                                      _L23149_)
                                                  '()))))
                              _hd2310523143_
                              _hd2310223133_)
                             (_g2309423112_ _g2309523116_))))
                     (_g2309423112_ _g2309523116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2309423112_
                                                      _g2309523116_))))
                                             (_g2309423112_ _g2309523116_)))))
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
                                             (let ((_e2289722918_
                                                    (gx#syntax-e
                                                     _g2289322915_)))
                                               (let ((_hd2289822922_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2289722918_)))
                                                     (_tl2289922925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2289722918_))))
                                                 (if (gx#stx-pair?
                                                      _tl2289922925_)
                                                     (let ((_e2290022928_
                                                            (gx#syntax-e
                                                             _tl2289922925_)))
                                                       (let ((_hd2290122932_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2290022928_)))
                     (_tl2290222935_
                      (let () (declare (not safe)) (##cdr _e2290022928_))))
                 (if (gx#stx-pair? _tl2290222935_)
                     (let ((_e2290322938_ (gx#syntax-e _tl2290222935_)))
                       (let ((_hd2290422942_
                              (let ()
                                (declare (not safe))
                                (##car _e2290322938_)))
                             (_tl2290522945_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2290322938_))))
                         (if (gx#stx-null? _tl2290522945_)
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
                                                  (let ((_e2297222990_
                                                         (gx#syntax-e
                                                          _g2296922987_)))
                                                    (let ((_hd2297322994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2297222990_)))
                                                          (_tl2297422997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2297222990_))))
                                                      (if (gx#stx-pair?
                                                           _tl2297422997_)
                                                          (let ((_e2297523000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2297422997_)))
                    (let ((_hd2297623004_
                           (let () (declare (not safe)) (##car _e2297523000_)))
                          (_tl2297723007_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2297523000_))))
                      (if (gx#stx-null? _tl2297723007_)
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
                          (_g2296822983_ _g2296922987_))))
                  (_g2296822983_ _g2296922987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2296822983_
                                                   _g2296922987_)))))
                                      (_g2296723028_
                                       (list (_generate122473_
                                              _L22950_
                                              _L22948_
                                              _E22829_)
                                             (_generate-clauses22472_
                                              _L22877_
                                              (cons _L22951_ '())))))
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
                                               _g2303323044_))))
                                      (_g2303123058_
                                       (_generate-clauses22472_
                                        _L22877_
                                        (cons _L22951_ '()))))))
                              _hd2290422942_
                              _hd2290122932_
                              _hd2289822922_)
                             (_g2289222911_ _g2289322915_))))
                     (_g2289222911_ _g2289322915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2289222911_
                                                      _g2289322915_))))
                                             (_g2289222911_ _g2289322915_)))))
                                 (_g2289123062_ _L22879_))))
                            (___kont4110841109_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E22829_ '()))))))
                        (if (gx#stx-pair? ___stx4110141102_)
                            (let ((_e2283623073_
                                   (gx#syntax-e ___stx4110141102_)))
                              (let ((_tl2283823080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2283623073_)))
                                    (_hd2283723077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2283623073_))))
                                (if (gx#stx-null? _tl2283823080_)
                                    (___kont4110441105_ _hd2283723077_)
                                    (___kont4110641107_
                                     _tl2283823080_
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
                                  (let ((_e2248422511_
                                         (gx#syntax-e _g2248122508_)))
                                    (let ((_hd2248522515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2248422511_)))
                                          (_tl2248622518_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2248422511_))))
                                      (if (gx#stx-pair? _tl2248622518_)
                                          (let ((_e2248722521_
                                                 (gx#syntax-e _tl2248622518_)))
                                            (let ((_hd2248822525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2248722521_)))
                                                  (_tl2248922528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2248722521_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2248822525_)
                                                  (let ((_g42309_
                                                         (gx#syntax-split-splice
                                                          _hd2248822525_
                                                          '0)))
                                                    (begin
                                                      (let ((_g42310_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g42309_)
                           (##vector-length _g42309_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g42310_ 2)))
                    (error "Context expects 2 values" _g42310_)))
              (let ((_target2249022531_
                     (let () (declare (not safe)) (##vector-ref _g42309_ 0)))
                    (_tl2249222534_
                     (let () (declare (not safe)) (##vector-ref _g42309_ 1))))
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
                                        (_loop2249322537_
                                         _lp-tl2249622554_
                                         (cons _lp-hd2249522551_
                                               _var2249722544_))))
                                    (let ((_var2249822557_
                                           (reverse _var2249722544_)))
                                      (if (gx#stx-null? _tl2248922528_)
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
                                                _g2265022661_))))
                                       (_g2264822679_
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (foldr (lambda (_g2268222685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2268322688_)
                      (cons _g2268222685_ _g2268322688_))
                    '()
                    _L22561_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22636_ '())))
                                         (gx#stx-source _stx22464_))))))
                                 _g2262222633_))))
                        (_g2262022691_ _body22477_))))
                  _g2259422605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2259222695_
                                                  (let _recur22699_ ((_rest22702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _clause22475_)
                             (_rest-targets22704_ _tgt-lst22466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((___stx4112741128_
                                                            _rest22702_)
                                                           (_g2270722719_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4112741128_))))
                                                      (let ((___kont4113041131_
                                                             (lambda (_L22755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L22757_)
                       (let* ((_g2277222784_
                               (lambda (_g2277322780_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2277322780_)))
                              (_g2277122815_
                               (lambda (_g2277322788_)
                                 (if (gx#stx-pair? _g2277322788_)
                                     (let ((_e2277622791_
                                            (gx#syntax-e _g2277322788_)))
                                       (let ((_hd2277722795_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2277622791_)))
                                             (_tl2277822798_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2277622791_))))
                                         ((lambda (_L22801_ _L22803_)
                                            (|gerbil/core$<match>[1]#generate-match1|
                                             _stx22464_
                                             _L22803_
                                             _L22757_
                                             (_recur22699_ _L22755_ _L22801_)
                                             _E22478_))
                                          _tl2277822798_
                                          _hd2277722795_)))
                                     (_g2277222784_ _g2277322788_)))))
                         (_g2277122815_ _rest-targets22704_))))
                    (___kont4113241133_
                     (lambda ()
                       (cons _L22563_
                             (foldr (lambda (_g2272922732_ _g2273022735_)
                                      (cons _g2272922732_ _g2273022735_))
                                    '()
                                    _L22561_)))))
                (if (gx#stx-pair? ___stx4112741128_)
                    (let ((_e2271122745_ (gx#syntax-e ___stx4112741128_)))
                      (let ((_tl2271322752_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2271122745_)))
                            (_hd2271222749_
                             (let ()
                               (declare (not safe))
                               (##car _e2271122745_))))
                        (___kont4113041131_ _tl2271322752_ _hd2271222749_)))
                    (___kont4113241133_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _var2249822557_
                                           _hd2248522515_)
                                          (_g2248022504_ _g2248122508_)))))))
                      (_loop2249322537_ _target2249022531_ '()))
                    (_g2248022504_ _g2248122508_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2248022504_
                                                   _g2248122508_))))
                                          (_g2248022504_ _g2248122508_))))
                                  (_g2248022504_ _g2248122508_)))))
                      (_g2247922823_
                       (list (gx#genident 'K)
                             (apply append
                                    (map |gerbil/core$<match>[1]#match-pattern-vars|
                                         _clause22475_))))))))
          (_generate-body22471_
           (_parse-body22469_ (gx#stx-length _tgt-lst22466_))))))
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
                            (let ((_e2238122446_
                                   (gx#syntax-e ___stx4114341144_)))
                              (let ((_tl2238322453_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2238122446_)))
                                    (_hd2238222450_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2238122446_))))
                                (if (gx#identifier? _hd2238222450_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42311_|
                                         _hd2238222450_)
                                        (___kont4114641147_)
                                        (___kont4114841149_
                                         _tl2238322453_
                                         _hd2238222450_))
                                    (___kont4114841149_
                                     _tl2238322453_
                                     _hd2238222450_))))
                            (___kont4115041151_)))))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx22366_
           (cons _tgt22368_ '())
           (gx#stx-map _reclause22371_ _clauses22369_)))))
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
                                     (|gerbil/core$<match>[1]#generate-match|
                                      _stx29975_
                                      _L30067_
                                      _L30036_)))))
                              _g3005330064_))))
                     (_g3005130113_ (gx#genident _L30038_))))))
            (let* ((___match4122441225_
                    (lambda (_e2999830016_
                             _hd2999930020_
                             _tl3000030023_
                             _e3000130026_
                             _hd3000230030_
                             _tl3000330033_)
                      (let ((_L30036_ _tl3000330033_)
                            (_L30038_ _hd3000230030_))
                        (if (gx#stx-list? _L30036_)
                            (___kont4117841179_ _L30036_ _L30038_)
                            (_g2998030009_)))))
                   (___match4121241213_
                    (lambda (_e2999030124_
                             _hd2999130128_
                             _tl2999230131_
                             _e2999330134_
                             _hd2999430138_
                             _tl2999530141_)
                      (let ((_L30144_ _tl2999530141_))
                        (if (gx#stx-list? _L30144_)
                            (___kont4117641177_ _L30144_)
                            (___match4122441225_
                             _e2999030124_
                             _hd2999130128_
                             _tl2999230131_
                             _e2999330134_
                             _hd2999430138_
                             _tl2999530141_)))))
                   (___match4119641197_
                    (lambda (_e2998330229_
                             _hd2998430233_
                             _tl2998530236_
                             _e2998630239_
                             _hd2998730243_
                             _tl2998830246_)
                      (let ((_L30249_ _tl2998830246_))
                        (if (gx#stx-list? _L30249_)
                            (___kont4117441175_ _L30249_)
                            (___match4122441225_
                             _e2998330229_
                             _hd2998430233_
                             _tl2998530236_
                             _e2998630239_
                             _hd2998730243_
                             _tl2998830246_))))))
              (if (gx#stx-pair? ___stx4117141172_)
                  (let ((_e2998330229_ (gx#syntax-e ___stx4117141172_)))
                    (let ((_tl2998530236_
                           (let () (declare (not safe)) (##cdr _e2998330229_)))
                          (_hd2998430233_
                           (let ()
                             (declare (not safe))
                             (##car _e2998330229_))))
                      (if (gx#stx-pair? _tl2998530236_)
                          (let ((_e2998630239_ (gx#syntax-e _tl2998530236_)))
                            (let ((_tl2998830246_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2998630239_)))
                                  (_hd2998730243_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2998630239_))))
                              (if (gx#identifier? _hd2998730243_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42312_|
                                       _hd2998730243_)
                                      (___match4119641197_
                                       _e2998330229_
                                       _hd2998430233_
                                       _tl2998530236_
                                       _e2998630239_
                                       _hd2998730243_
                                       _tl2998830246_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42313_|
                                           _hd2998730243_)
                                          (___match4121241213_
                                           _e2998330229_
                                           _hd2998430233_
                                           _tl2998530236_
                                           _e2998630239_
                                           _hd2998730243_
                                           _tl2998830246_)
                                          (___match4122441225_
                                           _e2998330229_
                                           _hd2998430233_
                                           _tl2998530236_
                                           _e2998630239_
                                           _hd2998730243_
                                           _tl2998830246_)))
                                  (___match4122441225_
                                   _e2998330229_
                                   _hd2998430233_
                                   _tl2998530236_
                                   _e2998630239_
                                   _hd2998730243_
                                   _tl2998830246_))))
                          (_g2998030009_))))
                  (_g2998030009_)))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30331_)
        (let* ((_g3033430358_
                (lambda (_g3033530354_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3033530354_)))
               (_g3033330570_
                (lambda (_g3033530362_)
                  (if (gx#stx-pair? _g3033530362_)
                      (let ((_e3033830365_ (gx#syntax-e _g3033530362_)))
                        (let ((_hd3033930369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3033830365_)))
                              (_tl3034030372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3033830365_))))
                          (if (gx#stx-pair? _tl3034030372_)
                              (let ((_e3034130375_
                                     (gx#syntax-e _tl3034030372_)))
                                (let ((_hd3034230379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3034130375_)))
                                      (_tl3034330382_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3034130375_))))
                                  (if (gx#stx-pair/null? _hd3034230379_)
                                      (let ((_g42314_
                                             (gx#syntax-split-splice
                                              _hd3034230379_
                                              '0)))
                                        (begin
                                          (let ((_g42315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42314_)
                                                       (##vector-length
                                                        _g42314_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42315_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42315_)))
                                          (let ((_target3034430385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42314_ 0)))
                                                (_tl3034630388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42314_ 1))))
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
                                               (let ((_g42316_
                                                      (gx#syntax-split-splice
                                                       _g3043630456_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42317_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42316_)
                        (##vector-length _g42316_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42317_ 2)))
                 (error "Context expects 2 values" _g42317_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3043830459_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42316_
                                                             0)))
                                                         (_tl3044030462_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42316_
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
                                           (|gerbil/core$<match>[1]#generate-match*|
                                            _stx30331_
                                            (foldr (lambda (_g3054930552_
                                                            _g3055030555_)
                                                     (cons _g3054930552_
                                                           _g3055030555_))
                                                   '()
                                                   _L30489_)
                                            _L30415_)))))
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
                           _tl3034330382_
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
                         (cons (foldr (lambda (_g3080130808_ _g3080230811_)
                                        (cons _g3080130808_ _g3080230811_))
                                      '()
                                      _L30778_)
                               (cons (cons (foldr (lambda (_g3080330814_
                                                           _g3080430817_)
                                                    (cons _g3080330814_
                                                          _g3080430817_))
                                                  '()
                                                  _L30779_)
                                           (foldr (lambda (_g3080530820_
                                                           _g3080630823_)
                                                    (cons _g3080530820_
                                                          _g3080630823_))
                                                  '()
                                                  _L30776_))
                                     '()))))))
            (let* ((___match4132041321_
                    (lambda (_e3062830672_
                             _hd3062930676_
                             _tl3063030679_
                             _e3063130682_
                             _hd3063230686_
                             _tl3063330689_
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
                                              (let ((_e3064530720_
                                                     (gx#syntax-e
                                                      _lp-hd3063930714_)))
                                                (let ((_tl3064730727_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3064530720_)))
                                                      (_hd3064630724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3064530720_))))
                                                  (if (gx#stx-pair?
                                                       _tl3064730727_)
                                                      (let ((_e3064830730_
                                                             (gx#syntax-e
                                                              _tl3064730727_)))
                                                        (let ((_tl3065030737_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3064830730_)))
                      (_hd3064930734_
                       (let () (declare (not safe)) (##car _e3064830730_))))
                  (if (gx#stx-null? _tl3065030737_)
                      (_loop3063730698_
                       _lp-tl3064030717_
                       (cons _hd3064930734_ _expr3064130705_)
                       (cons _hd3064630724_ _hd3064230707_))
                      (_g3058230665_))))
              (_g3058230665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3058230665_))))
                                      (let ((_hd3064430743_
                                             (reverse _hd3064230707_))
                                            (_expr3064330740_
                                             (reverse _expr3064130705_)))
                                        (if (gx#stx-pair/null? _tl3063330689_)
                                            (let ((___splice4124241243_
                                                   (gx#syntax-split-splice
                                                    _tl3063330689_
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
                                                    (_g3058230665_))))
                                            (_g3058230665_)))))))
                        (_loop3063730698_ _target3063430692_ '() '()))))
                   (___match4131241313_
                    (lambda (_e3062830672_
                             _hd3062930676_
                             _tl3063030679_
                             _e3063130682_
                             _hd3063230686_
                             _tl3063330689_)
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
                                   _e3062830672_
                                   _hd3062930676_
                                   _tl3063030679_
                                   _e3063130682_
                                   _hd3063230686_
                                   _tl3063330689_
                                   ___splice4124041241_
                                   _target3063430692_
                                   _tl3063630695_)
                                  (_g3058230665_))))
                          (_g3058230665_))))
                   (___match4130041301_
                    (lambda (_e3060430833_
                             _hd3060530837_
                             _tl3060630840_
                             _e3060730843_
                             _hd3060830847_
                             _tl3060930850_
                             _e3061030853_
                             _hd3061130857_
                             _tl3061230860_
                             _e3061330863_
                             _hd3061430867_
                             _tl3061530870_
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
                                          (if (|gerbil/core$<match>[1]#match-pattern?|
                                               _L30906_)
                                              (___kont4123441235_
                                               _L30903_
                                               _L30905_
                                               _L30906_
                                               _L30907_)
                                              (___match4131241313_
                                               _e3060430833_
                                               _hd3060530837_
                                               _tl3060630840_
                                               _e3060730843_
                                               _hd3060830847_
                                               _tl3060930850_))))))))
                        (_loop3061930879_ _target3061630873_ '()))))
                   (___match4126641267_
                    (lambda (_e3058530945_
                             _hd3058630949_
                             _tl3058730952_
                             _e3058830955_
                             _hd3058930959_
                             _tl3059030962_
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
                  (let ((_e3058530945_ (gx#syntax-e ___stx4122741228_)))
                    (let ((_tl3058730952_
                           (let () (declare (not safe)) (##cdr _e3058530945_)))
                          (_hd3058630949_
                           (let ()
                             (declare (not safe))
                             (##car _e3058530945_))))
                      (if (gx#stx-pair? _tl3058730952_)
                          (let ((_e3058830955_ (gx#syntax-e _tl3058730952_)))
                            (let ((_tl3059030962_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3058830955_)))
                                  (_hd3058930959_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3058830955_))))
                              (if (gx#stx-null? _hd3058930959_)
                                  (if (gx#stx-pair/null? _tl3059030962_)
                                      (let ((___splice4123241233_
                                             (gx#syntax-split-splice
                                              _tl3059030962_
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
                                               _e3058530945_
                                               _hd3058630949_
                                               _tl3058730952_
                                               _e3058830955_
                                               _hd3058930959_
                                               _tl3059030962_
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
                                                           _e3058530945_
                                                           _hd3058630949_
                                                           _tl3058730952_
                                                           _e3058830955_
                                                           _hd3058930959_
                                                           _tl3059030962_
                                                           ___splice4124041241_
                                                           _target3063430692_
                                                           _tl3063630695_)
                                                          (_g3058230665_))))
                                                  (_g3058230665_)))))
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
                                                   _e3058530945_
                                                   _hd3058630949_
                                                   _tl3058730952_
                                                   _e3058830955_
                                                   _hd3058930959_
                                                   _tl3059030962_
                                                   ___splice4124041241_
                                                   _target3063430692_
                                                   _tl3063630695_)
                                                  (_g3058230665_))))
                                          (_g3058230665_)))
                                  (if (gx#stx-pair? _hd3058930959_)
                                      (let ((_e3061030853_
                                             (gx#syntax-e _hd3058930959_)))
                                        (let ((_tl3061230860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3061030853_)))
                                              (_hd3061130857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3061030853_))))
                                          (if (gx#stx-pair? _tl3061230860_)
                                              (let ((_e3061330863_
                                                     (gx#syntax-e
                                                      _tl3061230860_)))
                                                (let ((_tl3061530870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3061330863_)))
                                                      (_hd3061430867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3061330863_))))
                                                  (if (gx#stx-null?
                                                       _tl3061530870_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3059030962_)
                                                          (let ((___splice4123641237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3059030962_ '0)))
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
                           _e3058530945_
                           _hd3058630949_
                           _tl3058730952_
                           _e3058830955_
                           _hd3058930959_
                           _tl3059030962_
                           _e3061030853_
                           _hd3061130857_
                           _tl3061230860_
                           _e3061330863_
                           _hd3061430867_
                           _tl3061530870_
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
                                       _e3058530945_
                                       _hd3058630949_
                                       _tl3058730952_
                                       _e3058830955_
                                       _hd3058930959_
                                       _tl3059030962_
                                       ___splice4124041241_
                                       _target3063430692_
                                       _tl3063630695_)
                                      (_g3058230665_))))
                              (_g3058230665_)))))
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
                               _e3058530945_
                               _hd3058630949_
                               _tl3058730952_
                               _e3058830955_
                               _hd3058930959_
                               _tl3059030962_
                               ___splice4124041241_
                               _target3063430692_
                               _tl3063630695_)
                              (_g3058230665_))))
                      (_g3058230665_)))
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
                           _e3058530945_
                           _hd3058630949_
                           _tl3058730952_
                           _e3058830955_
                           _hd3058930959_
                           _tl3059030962_
                           ___splice4124041241_
                           _target3063430692_
                           _tl3063630695_)
                          (_g3058230665_))))
                  (_g3058230665_)))))
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
                                                           _e3058530945_
                                                           _hd3058630949_
                                                           _tl3058730952_
                                                           _e3058830955_
                                                           _hd3058930959_
                                                           _tl3059030962_
                                                           ___splice4124041241_
                                                           _target3063430692_
                                                           _tl3063630695_)
                                                          (_g3058230665_))))
                                                  (_g3058230665_)))))
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
                                                   _e3058530945_
                                                   _hd3058630949_
                                                   _tl3058730952_
                                                   _e3058830955_
                                                   _hd3058930959_
                                                   _tl3059030962_
                                                   ___splice4124041241_
                                                   _target3063430692_
                                                   _tl3063630695_)
                                                  (_g3058230665_))))
                                          (_g3058230665_))))))
                          (_g3058230665_))))
                  (_g3058230665_)))))))
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
                    (lambda (_e3106531092_
                             _hd3106631096_
                             _tl3106731099_
                             _e3106831102_
                             _hd3106931106_
                             _tl3107031109_
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
                    (lambda (_e3104031175_
                             _hd3104131179_
                             _tl3104231182_
                             _e3104331185_
                             _hd3104431189_
                             _tl3104531192_
                             _e3104631195_
                             _hd3104731199_
                             _tl3104831202_
                             _e3104931205_
                             _hd3105031209_
                             _tl3105131212_
                             _e3105231215_
                             _hd3105331219_
                             _tl3105431222_
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
                                         _tl3104831202_
                                         _hd3105331219_
                                         _hd3105031209_
                                         _hd3104131179_))))))
                        (_loop3105831231_ _target3105531225_ '())))))
              (if (gx#stx-pair? ___stx4132341324_)
                  (let ((_e3104031175_ (gx#syntax-e ___stx4132341324_)))
                    (let ((_tl3104231182_
                           (let () (declare (not safe)) (##cdr _e3104031175_)))
                          (_hd3104131179_
                           (let ()
                             (declare (not safe))
                             (##car _e3104031175_))))
                      (if (gx#stx-pair? _tl3104231182_)
                          (let ((_e3104331185_ (gx#syntax-e _tl3104231182_)))
                            (let ((_tl3104531192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3104331185_)))
                                  (_hd3104431189_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3104331185_))))
                              (if (gx#stx-pair? _hd3104431189_)
                                  (let ((_e3104631195_
                                         (gx#syntax-e _hd3104431189_)))
                                    (let ((_tl3104831202_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3104631195_)))
                                          (_hd3104731199_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3104631195_))))
                                      (if (gx#stx-pair? _hd3104731199_)
                                          (let ((_e3104931205_
                                                 (gx#syntax-e _hd3104731199_)))
                                            (let ((_tl3105131212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3104931205_)))
                                                  (_hd3105031209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3104931205_))))
                                              (if (gx#stx-pair? _tl3105131212_)
                                                  (let ((_e3105231215_
                                                         (gx#syntax-e
                                                          _tl3105131212_)))
                                                    (let ((_tl3105431222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3105231215_)))
                                                          (_hd3105331219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3105231215_))))
                                                      (if (gx#stx-null?
                                                           _tl3105431222_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3104531192_)
                                                              (let ((___splice4132841329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3104531192_ '0)))
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
                               _e3104031175_
                               _hd3104131179_
                               _tl3104231182_
                               _e3104331185_
                               _hd3104431189_
                               _tl3104531192_
                               _e3104631195_
                               _hd3104731199_
                               _tl3104831202_
                               _e3104931205_
                               _hd3105031209_
                               _tl3105131212_
                               _e3105231215_
                               _hd3105331219_
                               _tl3105431222_
                               ___splice4132841329_
                               _target3105531225_
                               _tl3105731228_)
                              (_g3103331085_))))
                      (_g3103331085_))
                  (_g3103331085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3103331085_))))
                                          (_g3103331085_))))
                                  (if (gx#stx-null? _hd3104431189_)
                                      (if (gx#stx-pair/null? _tl3104531192_)
                                          (let ((___splice4133241333_
                                                 (gx#syntax-split-splice
                                                  _tl3104531192_
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
                                                   _e3104031175_
                                                   _hd3104131179_
                                                   _tl3104231182_
                                                   _e3104331185_
                                                   _hd3104431189_
                                                   _tl3104531192_
                                                   ___splice4133241333_
                                                   _target3107131112_
                                                   _tl3107331115_)
                                                  (_g3103331085_))))
                                          (_g3103331085_))
                                      (_g3103331085_)))))
                          (_g3103331085_))))
                  (_g3103331085_)))))))
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
                    (lambda (_e3140131637_
                             _hd3140231641_
                             _tl3140331644_
                             _e3140431647_
                             _hd3140531651_
                             _tl3140631654_
                             _e3140731657_
                             _hd3140831661_
                             _tl3140931664_)
                      (if (gx#identifier? _hd3140831661_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42318_|
                               _hd3140831661_)
                              (if (gx#stx-pair? _tl3140931664_)
                                  (let ((_e3141031667_
                                         (gx#syntax-e _tl3140931664_)))
                                    (let ((_tl3141231674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3141031667_)))
                                          (_hd3141131671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3141031667_))))
                                      (if (gx#stx-null? _tl3141231674_)
                                          (___kont4141641417_
                                           _hd3141131671_
                                           _hd3140531651_
                                           _hd3140231641_)
                                          (_g3131131457_))))
                                  (_g3131131457_))
                              (_g3131131457_))
                          (if (gx#stx-datum? _hd3140831661_)
                              (let ((_e3142531594_ (gx#stx-e _hd3140831661_)))
                                (if (equal? _e3142531594_ '::)
                                    (if (gx#stx-pair? _tl3140931664_)
                                        (let ((_e3142631598_
                                               (gx#syntax-e _tl3140931664_)))
                                          (let ((_tl3142831605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3142631598_)))
                                                (_hd3142731602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3142631598_))))
                                            (if (gx#stx-null? _tl3142831605_)
                                                (___kont4141841419_
                                                 _hd3142731602_
                                                 _hd3140531651_
                                                 _hd3140231641_)
                                                (if (gx#stx-pair?
                                                     _tl3142831605_)
                                                    (let ((_e3144631508_
                                                           (gx#syntax-e
                                                            _tl3142831605_)))
                                                      (let ((_tl3144831515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3144631508_)))
                    (_hd3144731512_
                     (let () (declare (not safe)) (##car _e3144631508_))))
                (if (gx#identifier? _hd3144731512_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g42319_|
                         _hd3144731512_)
                        (if (gx#stx-pair? _tl3144831515_)
                            (let ((_e3144931518_ (gx#syntax-e _tl3144831515_)))
                              (let ((_tl3145131525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3144931518_)))
                                    (_hd3145031522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3144931518_))))
                                (if (gx#stx-null? _tl3145131525_)
                                    (___kont4142041421_
                                     _hd3145031522_
                                     _hd3142731602_
                                     _hd3140531651_
                                     _hd3140231641_)
                                    (_g3131131457_))))
                            (_g3131131457_))
                        (_g3131131457_))
                    (_g3131131457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_)))))
                                        (_g3131131457_))
                                    (_g3131131457_)))
                              (_g3131131457_)))))
                   (___match4155241553_
                    (lambda (_e3139231705_
                             _hd3139331709_
                             _tl3139431712_
                             _e3139531715_
                             _hd3139631719_
                             _tl3139731722_)
                      (if (gx#stx-null? _tl3139731722_)
                          (___kont4141441415_ _hd3139631719_ _hd3139331709_)
                          (if (gx#stx-pair? _tl3139731722_)
                              (let ((_e3140731657_
                                     (gx#syntax-e _tl3139731722_)))
                                (let ((_tl3140931664_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3140731657_)))
                                      (_hd3140831661_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3140731657_))))
                                  (if (gx#identifier? _hd3140831661_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42318_|
                                           _hd3140831661_)
                                          (if (gx#stx-pair? _tl3140931664_)
                                              (let ((_e3141031667_
                                                     (gx#syntax-e
                                                      _tl3140931664_)))
                                                (let ((_tl3141231674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3141031667_)))
                                                      (_hd3141131671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3141031667_))))
                                                  (if (gx#stx-null?
                                                       _tl3141231674_)
                                                      (___kont4141641417_
                                                       _hd3141131671_
                                                       _hd3139631719_
                                                       _hd3139331709_)
                                                      (_g3131131457_))))
                                              (_g3131131457_))
                                          (_g3131131457_))
                                      (if (gx#stx-datum? _hd3140831661_)
                                          (let ((_e3142531594_
                                                 (gx#stx-e _hd3140831661_)))
                                            (if (equal? _e3142531594_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3140931664_)
                                                    (let ((_e3142631598_
                                                           (gx#syntax-e
                                                            _tl3140931664_)))
                                                      (let ((_tl3142831605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3142631598_)))
                    (_hd3142731602_
                     (let () (declare (not safe)) (##car _e3142631598_))))
                (if (gx#stx-null? _tl3142831605_)
                    (___kont4141841419_
                     _hd3142731602_
                     _hd3139631719_
                     _hd3139331709_)
                    (if (gx#stx-pair? _tl3142831605_)
                        (let ((_e3144631508_ (gx#syntax-e _tl3142831605_)))
                          (let ((_tl3144831515_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3144631508_)))
                                (_hd3144731512_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3144631508_))))
                            (if (gx#identifier? _hd3144731512_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42319_|
                                     _hd3144731512_)
                                    (if (gx#stx-pair? _tl3144831515_)
                                        (let ((_e3144931518_
                                               (gx#syntax-e _tl3144831515_)))
                                          (let ((_tl3145131525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3144931518_)))
                                                (_hd3145031522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3144931518_))))
                                            (if (gx#stx-null? _tl3145131525_)
                                                (___kont4142041421_
                                                 _hd3145031522_
                                                 _hd3142731602_
                                                 _hd3139631719_
                                                 _hd3139331709_)
                                                (_g3131131457_))))
                                        (_g3131131457_))
                                    (_g3131131457_))
                                (_g3131131457_))))
                        (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_))
                                                (_g3131131457_)))
                                          (_g3131131457_)))))
                              (_g3131131457_)))))
                   (___match4148241483_
                    (lambda (_e3134031881_
                             _hd3134131885_
                             _tl3134231888_
                             _e3134331891_
                             _hd3134431895_
                             _tl3134531898_
                             _e3134631901_
                             _hd3134731905_
                             _tl3134831908_
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
                                        (if (gx#stx-pair? _tl3134531898_)
                                            (let ((_e3135831941_
                                                   (gx#syntax-e
                                                    _tl3134531898_)))
                                              (let ((_tl3136031948_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3135831941_)))
                                                    (_hd3135931945_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3135831941_))))
                                                (if (gx#stx-null?
                                                     _tl3136031948_)
                                                    (___kont4140641407_
                                                     _hd3135931945_
                                                     _pred3135731937_
                                                     _hd3134131885_)
                                                    (___match4157241573_
                                                     _e3134031881_
                                                     _hd3134131885_
                                                     _tl3134231888_
                                                     _e3134331891_
                                                     _hd3134431895_
                                                     _tl3134531898_
                                                     _e3135831941_
                                                     _hd3135931945_
                                                     _tl3136031948_))))
                                            (___match4155241553_
                                             _e3134031881_
                                             _hd3134131885_
                                             _tl3134231888_
                                             _e3134331891_
                                             _hd3134431895_
                                             _tl3134531898_)))))))
                        (_loop3135231917_ _target3134931911_ '()))))
                   (___match4145241453_
                    (lambda (_e3131631991_
                             _hd3131731995_
                             _tl3131831998_
                             _e3131932001_
                             _hd3132032005_
                             _tl3132132008_
                             _e3132232011_
                             _hd3132332015_
                             _tl3132432018_
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
                                        (if (gx#stx-pair? _tl3132132008_)
                                            (let ((_e3133432051_
                                                   (gx#syntax-e
                                                    _tl3132132008_)))
                                              (let ((_tl3133632058_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3133432051_)))
                                                    (_hd3133532055_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3133432051_))))
                                                (if (gx#stx-null?
                                                     _tl3133632058_)
                                                    (___kont4140241403_
                                                     _hd3133532055_
                                                     _pred3133332047_
                                                     _hd3131731995_)
                                                    (___match4157241573_
                                                     _e3131631991_
                                                     _hd3131731995_
                                                     _tl3131831998_
                                                     _e3131932001_
                                                     _hd3132032005_
                                                     _tl3132132008_
                                                     _e3133432051_
                                                     _hd3133532055_
                                                     _tl3133632058_))))
                                            (___match4155241553_
                                             _e3131631991_
                                             _hd3131731995_
                                             _tl3131831998_
                                             _e3131932001_
                                             _hd3132032005_
                                             _tl3132132008_)))))))
                        (_loop3132832027_ _target3132532021_ '())))))
              (if (gx#stx-pair? ___stx4139941400_)
                  (let ((_e3131631991_ (gx#syntax-e ___stx4139941400_)))
                    (let ((_tl3131831998_
                           (let () (declare (not safe)) (##cdr _e3131631991_)))
                          (_hd3131731995_
                           (let ()
                             (declare (not safe))
                             (##car _e3131631991_))))
                      (if (gx#stx-pair? _tl3131831998_)
                          (let ((_e3131932001_ (gx#syntax-e _tl3131831998_)))
                            (let ((_tl3132132008_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3131932001_)))
                                  (_hd3132032005_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3131932001_))))
                              (if (gx#stx-pair? _hd3132032005_)
                                  (let ((_e3132232011_
                                         (gx#syntax-e _hd3132032005_)))
                                    (let ((_tl3132432018_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3132232011_)))
                                          (_hd3132332015_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3132232011_))))
                                      (if (gx#identifier? _hd3132332015_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42320_|
                                               _hd3132332015_)
                                              (if (gx#stx-pair/null?
                                                   _tl3132432018_)
                                                  (let ((___splice4140441405_
                                                         (gx#syntax-split-splice
                                                          _tl3132432018_
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
                                                           _e3131631991_
                                                           _hd3131731995_
                                                           _tl3131831998_
                                                           _e3131932001_
                                                           _hd3132032005_
                                                           _tl3132132008_
                                                           _e3132232011_
                                                           _hd3132332015_
                                                           _tl3132432018_
                                                           ___splice4140441405_
                                                           _target3132532021_
                                                           _tl3132732024_)
                                                          (if (gx#stx-pair?
                                                               _tl3132132008_)
                                                              (let ((_e3138731767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3132132008_)))
                        (let ((_tl3138931774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3138731767_)))
                              (_hd3138831771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3138731767_))))
                          (if (gx#stx-null? _tl3138931774_)
                              (___kont4141241413_
                               _hd3138831771_
                               _hd3132032005_)
                              (if (gx#identifier? _hd3138831771_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42318_|
                                       _hd3138831771_)
                                      (if (gx#stx-pair? _tl3138931774_)
                                          (let ((_e3141031667_
                                                 (gx#syntax-e _tl3138931774_)))
                                            (let ((_tl3141231674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3141031667_)))
                                                  (_hd3141131671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3141031667_))))
                                              (if (gx#stx-null? _tl3141231674_)
                                                  (___kont4141641417_
                                                   _hd3141131671_
                                                   _hd3132032005_
                                                   _hd3131731995_)
                                                  (_g3131131457_))))
                                          (_g3131131457_))
                                      (_g3131131457_))
                                  (if (gx#stx-datum? _hd3138831771_)
                                      (let ((_e3142531594_
                                             (gx#stx-e _hd3138831771_)))
                                        (if (equal? _e3142531594_ '::)
                                            (if (gx#stx-pair? _tl3138931774_)
                                                (let ((_e3142631598_
                                                       (gx#syntax-e
                                                        _tl3138931774_)))
                                                  (let ((_tl3142831605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3142631598_)))
                                                        (_hd3142731602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3142631598_))))
                                                    (if (gx#stx-null?
                                                         _tl3142831605_)
                                                        (___kont4141841419_
                                                         _hd3142731602_
                                                         _hd3132032005_
                                                         _hd3131731995_)
                                                        (if (gx#stx-pair?
                                                             _tl3142831605_)
                                                            (let ((_e3144631508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3142831605_)))
                      (let ((_tl3144831515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3144631508_)))
                            (_hd3144731512_
                             (let ()
                               (declare (not safe))
                               (##car _e3144631508_))))
                        (if (gx#identifier? _hd3144731512_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42319_|
                                 _hd3144731512_)
                                (if (gx#stx-pair? _tl3144831515_)
                                    (let ((_e3144931518_
                                           (gx#syntax-e _tl3144831515_)))
                                      (let ((_tl3145131525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3144931518_)))
                                            (_hd3145031522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3144931518_))))
                                        (if (gx#stx-null? _tl3145131525_)
                                            (___kont4142041421_
                                             _hd3145031522_
                                             _hd3142731602_
                                             _hd3132032005_
                                             _hd3131731995_)
                                            (_g3131131457_))))
                                    (_g3131131457_))
                                (_g3131131457_))
                            (_g3131131457_))))
                    (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3131131457_))
                                            (_g3131131457_)))
                                      (_g3131131457_))))))
                      (if (gx#stx-null? _tl3132132008_)
                          (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                          (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3132132008_)
                                                      (let ((_e3138731767_
                                                             (gx#syntax-e
                                                              _tl3132132008_)))
                                                        (let ((_tl3138931774_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3138731767_)))
                      (_hd3138831771_
                       (let () (declare (not safe)) (##car _e3138731767_))))
                  (if (gx#stx-null? _tl3138931774_)
                      (___kont4141241413_ _hd3138831771_ _hd3132032005_)
                      (if (gx#identifier? _hd3138831771_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42318_|
                               _hd3138831771_)
                              (if (gx#stx-pair? _tl3138931774_)
                                  (let ((_e3141031667_
                                         (gx#syntax-e _tl3138931774_)))
                                    (let ((_tl3141231674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3141031667_)))
                                          (_hd3141131671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3141031667_))))
                                      (if (gx#stx-null? _tl3141231674_)
                                          (___kont4141641417_
                                           _hd3141131671_
                                           _hd3132032005_
                                           _hd3131731995_)
                                          (_g3131131457_))))
                                  (_g3131131457_))
                              (_g3131131457_))
                          (if (gx#stx-datum? _hd3138831771_)
                              (let ((_e3142531594_ (gx#stx-e _hd3138831771_)))
                                (if (equal? _e3142531594_ '::)
                                    (if (gx#stx-pair? _tl3138931774_)
                                        (let ((_e3142631598_
                                               (gx#syntax-e _tl3138931774_)))
                                          (let ((_tl3142831605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3142631598_)))
                                                (_hd3142731602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3142631598_))))
                                            (if (gx#stx-null? _tl3142831605_)
                                                (___kont4141841419_
                                                 _hd3142731602_
                                                 _hd3132032005_
                                                 _hd3131731995_)
                                                (if (gx#stx-pair?
                                                     _tl3142831605_)
                                                    (let ((_e3144631508_
                                                           (gx#syntax-e
                                                            _tl3142831605_)))
                                                      (let ((_tl3144831515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3144631508_)))
                    (_hd3144731512_
                     (let () (declare (not safe)) (##car _e3144631508_))))
                (if (gx#identifier? _hd3144731512_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g42319_|
                         _hd3144731512_)
                        (if (gx#stx-pair? _tl3144831515_)
                            (let ((_e3144931518_ (gx#syntax-e _tl3144831515_)))
                              (let ((_tl3145131525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3144931518_)))
                                    (_hd3145031522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3144931518_))))
                                (if (gx#stx-null? _tl3145131525_)
                                    (___kont4142041421_
                                     _hd3145031522_
                                     _hd3142731602_
                                     _hd3132032005_
                                     _hd3131731995_)
                                    (_g3131131457_))))
                            (_g3131131457_))
                        (_g3131131457_))
                    (_g3131131457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_)))))
                                        (_g3131131457_))
                                    (_g3131131457_)))
                              (_g3131131457_))))))
              (if (gx#stx-null? _tl3132132008_)
                  (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                  (_g3131131457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42321_|
                                                   _hd3132332015_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3132432018_)
                                                      (let ((___splice4140841409_
                                                             (gx#syntax-split-splice
                                                              _tl3132432018_
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
                       _e3131631991_
                       _hd3131731995_
                       _tl3131831998_
                       _e3131932001_
                       _hd3132032005_
                       _tl3132132008_
                       _e3132232011_
                       _hd3132332015_
                       _tl3132432018_
                       ___splice4140841409_
                       _target3134931911_
                       _tl3135131914_)
                      (if (gx#stx-pair? _tl3132132008_)
                          (let ((_e3138731767_ (gx#syntax-e _tl3132132008_)))
                            (let ((_tl3138931774_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3138731767_)))
                                  (_hd3138831771_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3138731767_))))
                              (if (gx#stx-null? _tl3138931774_)
                                  (___kont4141241413_
                                   _hd3138831771_
                                   _hd3132032005_)
                                  (if (gx#identifier? _hd3138831771_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42318_|
                                           _hd3138831771_)
                                          (if (gx#stx-pair? _tl3138931774_)
                                              (let ((_e3141031667_
                                                     (gx#syntax-e
                                                      _tl3138931774_)))
                                                (let ((_tl3141231674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3141031667_)))
                                                      (_hd3141131671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3141031667_))))
                                                  (if (gx#stx-null?
                                                       _tl3141231674_)
                                                      (___kont4141641417_
                                                       _hd3141131671_
                                                       _hd3132032005_
                                                       _hd3131731995_)
                                                      (_g3131131457_))))
                                              (_g3131131457_))
                                          (_g3131131457_))
                                      (if (gx#stx-datum? _hd3138831771_)
                                          (let ((_e3142531594_
                                                 (gx#stx-e _hd3138831771_)))
                                            (if (equal? _e3142531594_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3138931774_)
                                                    (let ((_e3142631598_
                                                           (gx#syntax-e
                                                            _tl3138931774_)))
                                                      (let ((_tl3142831605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3142631598_)))
                    (_hd3142731602_
                     (let () (declare (not safe)) (##car _e3142631598_))))
                (if (gx#stx-null? _tl3142831605_)
                    (___kont4141841419_
                     _hd3142731602_
                     _hd3132032005_
                     _hd3131731995_)
                    (if (gx#stx-pair? _tl3142831605_)
                        (let ((_e3144631508_ (gx#syntax-e _tl3142831605_)))
                          (let ((_tl3144831515_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3144631508_)))
                                (_hd3144731512_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3144631508_))))
                            (if (gx#identifier? _hd3144731512_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42319_|
                                     _hd3144731512_)
                                    (if (gx#stx-pair? _tl3144831515_)
                                        (let ((_e3144931518_
                                               (gx#syntax-e _tl3144831515_)))
                                          (let ((_tl3145131525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3144931518_)))
                                                (_hd3145031522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3144931518_))))
                                            (if (gx#stx-null? _tl3145131525_)
                                                (___kont4142041421_
                                                 _hd3145031522_
                                                 _hd3142731602_
                                                 _hd3132032005_
                                                 _hd3131731995_)
                                                (_g3131131457_))))
                                        (_g3131131457_))
                                    (_g3131131457_))
                                (_g3131131457_))))
                        (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_))
                                                (_g3131131457_)))
                                          (_g3131131457_))))))
                          (if (gx#stx-null? _tl3132132008_)
                              (___kont4141441415_
                               _hd3132032005_
                               _hd3131731995_)
                              (_g3131131457_))))))
              (if (gx#stx-pair? _tl3132132008_)
                  (let ((_e3138731767_ (gx#syntax-e _tl3132132008_)))
                    (let ((_tl3138931774_
                           (let () (declare (not safe)) (##cdr _e3138731767_)))
                          (_hd3138831771_
                           (let ()
                             (declare (not safe))
                             (##car _e3138731767_))))
                      (if (gx#stx-null? _tl3138931774_)
                          (___kont4141241413_ _hd3138831771_ _hd3132032005_)
                          (if (gx#identifier? _hd3138831771_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42318_|
                                   _hd3138831771_)
                                  (if (gx#stx-pair? _tl3138931774_)
                                      (let ((_e3141031667_
                                             (gx#syntax-e _tl3138931774_)))
                                        (let ((_tl3141231674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3141031667_)))
                                              (_hd3141131671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3141031667_))))
                                          (if (gx#stx-null? _tl3141231674_)
                                              (___kont4141641417_
                                               _hd3141131671_
                                               _hd3132032005_
                                               _hd3131731995_)
                                              (_g3131131457_))))
                                      (_g3131131457_))
                                  (_g3131131457_))
                              (if (gx#stx-datum? _hd3138831771_)
                                  (let ((_e3142531594_
                                         (gx#stx-e _hd3138831771_)))
                                    (if (equal? _e3142531594_ '::)
                                        (if (gx#stx-pair? _tl3138931774_)
                                            (let ((_e3142631598_
                                                   (gx#syntax-e
                                                    _tl3138931774_)))
                                              (let ((_tl3142831605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3142631598_)))
                                                    (_hd3142731602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3142631598_))))
                                                (if (gx#stx-null?
                                                     _tl3142831605_)
                                                    (___kont4141841419_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (if (gx#stx-pair?
                                                         _tl3142831605_)
                                                        (let ((_e3144631508_
                                                               (gx#syntax-e
                                                                _tl3142831605_)))
                                                          (let ((_tl3144831515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3144631508_)))
                        (_hd3144731512_
                         (let () (declare (not safe)) (##car _e3144631508_))))
                    (if (gx#identifier? _hd3144731512_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42319_|
                             _hd3144731512_)
                            (if (gx#stx-pair? _tl3144831515_)
                                (let ((_e3144931518_
                                       (gx#syntax-e _tl3144831515_)))
                                  (let ((_tl3145131525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3144931518_)))
                                        (_hd3145031522_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3144931518_))))
                                    (if (gx#stx-null? _tl3145131525_)
                                        (___kont4142041421_
                                         _hd3145031522_
                                         _hd3142731602_
                                         _hd3132032005_
                                         _hd3131731995_)
                                        (_g3131131457_))))
                                (_g3131131457_))
                            (_g3131131457_))
                        (_g3131131457_))))
                (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3131131457_))
                                        (_g3131131457_)))
                                  (_g3131131457_))))))
                  (if (gx#stx-null? _tl3132132008_)
                      (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                      (_g3131131457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42322_|
                                                       _hd3132332015_)
                                                      (if (gx#stx-pair?
                                                           _tl3132432018_)
                                                          (let ((_e3137331831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3132432018_)))
                    (let ((_tl3137531838_
                           (let () (declare (not safe)) (##cdr _e3137331831_)))
                          (_hd3137431835_
                           (let ()
                             (declare (not safe))
                             (##car _e3137331831_))))
                      (if (gx#stx-null? _tl3137531838_)
                          (if (gx#stx-pair? _tl3132132008_)
                              (let ((_e3137631841_
                                     (gx#syntax-e _tl3132132008_)))
                                (let ((_tl3137831848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3137631841_)))
                                      (_hd3137731845_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3137631841_))))
                                  (if (gx#stx-null? _tl3137831848_)
                                      (___kont4141041411_
                                       _hd3137731845_
                                       _hd3137431835_
                                       _hd3131731995_)
                                      (if (gx#identifier? _hd3137731845_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42318_|
                                               _hd3137731845_)
                                              (if (gx#stx-pair? _tl3137831848_)
                                                  (let ((_e3141031667_
                                                         (gx#syntax-e
                                                          _tl3137831848_)))
                                                    (let ((_tl3141231674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3141031667_)))
                                                          (_hd3141131671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3141031667_))))
                                                      (if (gx#stx-null?
                                                           _tl3141231674_)
                                                          (___kont4141641417_
                                                           _hd3141131671_
                                                           _hd3132032005_
                                                           _hd3131731995_)
                                                          (_g3131131457_))))
                                                  (_g3131131457_))
                                              (_g3131131457_))
                                          (if (gx#stx-datum? _hd3137731845_)
                                              (let ((_e3142531594_
                                                     (gx#stx-e
                                                      _hd3137731845_)))
                                                (if (equal? _e3142531594_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3137831848_)
                                                        (let ((_e3142631598_
                                                               (gx#syntax-e
                                                                _tl3137831848_)))
                                                          (let ((_tl3142831605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3142631598_)))
                        (_hd3142731602_
                         (let () (declare (not safe)) (##car _e3142631598_))))
                    (if (gx#stx-null? _tl3142831605_)
                        (___kont4141841419_
                         _hd3142731602_
                         _hd3132032005_
                         _hd3131731995_)
                        (if (gx#stx-pair? _tl3142831605_)
                            (let ((_e3144631508_ (gx#syntax-e _tl3142831605_)))
                              (let ((_tl3144831515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3144631508_)))
                                    (_hd3144731512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3144631508_))))
                                (if (gx#identifier? _hd3144731512_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42319_|
                                         _hd3144731512_)
                                        (if (gx#stx-pair? _tl3144831515_)
                                            (let ((_e3144931518_
                                                   (gx#syntax-e
                                                    _tl3144831515_)))
                                              (let ((_tl3145131525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3144931518_)))
                                                    (_hd3145031522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3144931518_))))
                                                (if (gx#stx-null?
                                                     _tl3145131525_)
                                                    (___kont4142041421_
                                                     _hd3145031522_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (_g3131131457_))))
                                            (_g3131131457_))
                                        (_g3131131457_))
                                    (_g3131131457_))))
                            (_g3131131457_)))))
                (_g3131131457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_)))
                                              (_g3131131457_))))))
                              (if (gx#stx-null? _tl3132132008_)
                                  (___kont4141441415_
                                   _hd3132032005_
                                   _hd3131731995_)
                                  (_g3131131457_)))
                          (if (gx#stx-pair? _tl3132132008_)
                              (let ((_e3138731767_
                                     (gx#syntax-e _tl3132132008_)))
                                (let ((_tl3138931774_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3138731767_)))
                                      (_hd3138831771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3138731767_))))
                                  (if (gx#stx-null? _tl3138931774_)
                                      (___kont4141241413_
                                       _hd3138831771_
                                       _hd3132032005_)
                                      (if (gx#identifier? _hd3138831771_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42318_|
                                               _hd3138831771_)
                                              (if (gx#stx-pair? _tl3138931774_)
                                                  (let ((_e3141031667_
                                                         (gx#syntax-e
                                                          _tl3138931774_)))
                                                    (let ((_tl3141231674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3141031667_)))
                                                          (_hd3141131671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3141031667_))))
                                                      (if (gx#stx-null?
                                                           _tl3141231674_)
                                                          (___kont4141641417_
                                                           _hd3141131671_
                                                           _hd3132032005_
                                                           _hd3131731995_)
                                                          (_g3131131457_))))
                                                  (_g3131131457_))
                                              (_g3131131457_))
                                          (if (gx#stx-datum? _hd3138831771_)
                                              (let ((_e3142531594_
                                                     (gx#stx-e
                                                      _hd3138831771_)))
                                                (if (equal? _e3142531594_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3138931774_)
                                                        (let ((_e3142631598_
                                                               (gx#syntax-e
                                                                _tl3138931774_)))
                                                          (let ((_tl3142831605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3142631598_)))
                        (_hd3142731602_
                         (let () (declare (not safe)) (##car _e3142631598_))))
                    (if (gx#stx-null? _tl3142831605_)
                        (___kont4141841419_
                         _hd3142731602_
                         _hd3132032005_
                         _hd3131731995_)
                        (if (gx#stx-pair? _tl3142831605_)
                            (let ((_e3144631508_ (gx#syntax-e _tl3142831605_)))
                              (let ((_tl3144831515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3144631508_)))
                                    (_hd3144731512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3144631508_))))
                                (if (gx#identifier? _hd3144731512_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42319_|
                                         _hd3144731512_)
                                        (if (gx#stx-pair? _tl3144831515_)
                                            (let ((_e3144931518_
                                                   (gx#syntax-e
                                                    _tl3144831515_)))
                                              (let ((_tl3145131525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3144931518_)))
                                                    (_hd3145031522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3144931518_))))
                                                (if (gx#stx-null?
                                                     _tl3145131525_)
                                                    (___kont4142041421_
                                                     _hd3145031522_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (_g3131131457_))))
                                            (_g3131131457_))
                                        (_g3131131457_))
                                    (_g3131131457_))))
                            (_g3131131457_)))))
                (_g3131131457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_)))
                                              (_g3131131457_))))))
                              (if (gx#stx-null? _tl3132132008_)
                                  (___kont4141441415_
                                   _hd3132032005_
                                   _hd3131731995_)
                                  (_g3131131457_))))))
                  (if (gx#stx-pair? _tl3132132008_)
                      (let ((_e3138731767_ (gx#syntax-e _tl3132132008_)))
                        (let ((_tl3138931774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3138731767_)))
                              (_hd3138831771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3138731767_))))
                          (if (gx#stx-null? _tl3138931774_)
                              (___kont4141241413_
                               _hd3138831771_
                               _hd3132032005_)
                              (if (gx#identifier? _hd3138831771_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42318_|
                                       _hd3138831771_)
                                      (if (gx#stx-pair? _tl3138931774_)
                                          (let ((_e3141031667_
                                                 (gx#syntax-e _tl3138931774_)))
                                            (let ((_tl3141231674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3141031667_)))
                                                  (_hd3141131671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3141031667_))))
                                              (if (gx#stx-null? _tl3141231674_)
                                                  (___kont4141641417_
                                                   _hd3141131671_
                                                   _hd3132032005_
                                                   _hd3131731995_)
                                                  (_g3131131457_))))
                                          (_g3131131457_))
                                      (_g3131131457_))
                                  (if (gx#stx-datum? _hd3138831771_)
                                      (let ((_e3142531594_
                                             (gx#stx-e _hd3138831771_)))
                                        (if (equal? _e3142531594_ '::)
                                            (if (gx#stx-pair? _tl3138931774_)
                                                (let ((_e3142631598_
                                                       (gx#syntax-e
                                                        _tl3138931774_)))
                                                  (let ((_tl3142831605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3142631598_)))
                                                        (_hd3142731602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3142631598_))))
                                                    (if (gx#stx-null?
                                                         _tl3142831605_)
                                                        (___kont4141841419_
                                                         _hd3142731602_
                                                         _hd3132032005_
                                                         _hd3131731995_)
                                                        (if (gx#stx-pair?
                                                             _tl3142831605_)
                                                            (let ((_e3144631508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3142831605_)))
                      (let ((_tl3144831515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3144631508_)))
                            (_hd3144731512_
                             (let ()
                               (declare (not safe))
                               (##car _e3144631508_))))
                        (if (gx#identifier? _hd3144731512_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42319_|
                                 _hd3144731512_)
                                (if (gx#stx-pair? _tl3144831515_)
                                    (let ((_e3144931518_
                                           (gx#syntax-e _tl3144831515_)))
                                      (let ((_tl3145131525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3144931518_)))
                                            (_hd3145031522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3144931518_))))
                                        (if (gx#stx-null? _tl3145131525_)
                                            (___kont4142041421_
                                             _hd3145031522_
                                             _hd3142731602_
                                             _hd3132032005_
                                             _hd3131731995_)
                                            (_g3131131457_))))
                                    (_g3131131457_))
                                (_g3131131457_))
                            (_g3131131457_))))
                    (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3131131457_))
                                            (_g3131131457_)))
                                      (_g3131131457_))))))
                      (if (gx#stx-null? _tl3132132008_)
                          (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                          (_g3131131457_))))
              (if (gx#stx-pair? _tl3132132008_)
                  (let ((_e3138731767_ (gx#syntax-e _tl3132132008_)))
                    (let ((_tl3138931774_
                           (let () (declare (not safe)) (##cdr _e3138731767_)))
                          (_hd3138831771_
                           (let ()
                             (declare (not safe))
                             (##car _e3138731767_))))
                      (if (gx#stx-null? _tl3138931774_)
                          (___kont4141241413_ _hd3138831771_ _hd3132032005_)
                          (if (gx#identifier? _hd3138831771_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42318_|
                                   _hd3138831771_)
                                  (if (gx#stx-pair? _tl3138931774_)
                                      (let ((_e3141031667_
                                             (gx#syntax-e _tl3138931774_)))
                                        (let ((_tl3141231674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3141031667_)))
                                              (_hd3141131671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3141031667_))))
                                          (if (gx#stx-null? _tl3141231674_)
                                              (___kont4141641417_
                                               _hd3141131671_
                                               _hd3132032005_
                                               _hd3131731995_)
                                              (_g3131131457_))))
                                      (_g3131131457_))
                                  (_g3131131457_))
                              (if (gx#stx-datum? _hd3138831771_)
                                  (let ((_e3142531594_
                                         (gx#stx-e _hd3138831771_)))
                                    (if (equal? _e3142531594_ '::)
                                        (if (gx#stx-pair? _tl3138931774_)
                                            (let ((_e3142631598_
                                                   (gx#syntax-e
                                                    _tl3138931774_)))
                                              (let ((_tl3142831605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3142631598_)))
                                                    (_hd3142731602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3142631598_))))
                                                (if (gx#stx-null?
                                                     _tl3142831605_)
                                                    (___kont4141841419_
                                                     _hd3142731602_
                                                     _hd3132032005_
                                                     _hd3131731995_)
                                                    (if (gx#stx-pair?
                                                         _tl3142831605_)
                                                        (let ((_e3144631508_
                                                               (gx#syntax-e
                                                                _tl3142831605_)))
                                                          (let ((_tl3144831515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3144631508_)))
                        (_hd3144731512_
                         (let () (declare (not safe)) (##car _e3144631508_))))
                    (if (gx#identifier? _hd3144731512_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42319_|
                             _hd3144731512_)
                            (if (gx#stx-pair? _tl3144831515_)
                                (let ((_e3144931518_
                                       (gx#syntax-e _tl3144831515_)))
                                  (let ((_tl3145131525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3144931518_)))
                                        (_hd3145031522_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3144931518_))))
                                    (if (gx#stx-null? _tl3145131525_)
                                        (___kont4142041421_
                                         _hd3145031522_
                                         _hd3142731602_
                                         _hd3132032005_
                                         _hd3131731995_)
                                        (_g3131131457_))))
                                (_g3131131457_))
                            (_g3131131457_))
                        (_g3131131457_))))
                (_g3131131457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3131131457_))
                                        (_g3131131457_)))
                                  (_g3131131457_))))))
                  (if (gx#stx-null? _tl3132132008_)
                      (___kont4141441415_ _hd3132032005_ _hd3131731995_)
                      (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3132132008_)
                                              (let ((_e3138731767_
                                                     (gx#syntax-e
                                                      _tl3132132008_)))
                                                (let ((_tl3138931774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3138731767_)))
                                                      (_hd3138831771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3138731767_))))
                                                  (if (gx#stx-null?
                                                       _tl3138931774_)
                                                      (___kont4141241413_
                                                       _hd3138831771_
                                                       _hd3132032005_)
                                                      (if (gx#identifier?
                                                           _hd3138831771_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g42318_|
                                                               _hd3138831771_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3138931774_)
                          (let ((_e3141031667_ (gx#syntax-e _tl3138931774_)))
                            (let ((_tl3141231674_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3141031667_)))
                                  (_hd3141131671_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3141031667_))))
                              (if (gx#stx-null? _tl3141231674_)
                                  (___kont4141641417_
                                   _hd3141131671_
                                   _hd3132032005_
                                   _hd3131731995_)
                                  (_g3131131457_))))
                          (_g3131131457_))
                      (_g3131131457_))
                  (if (gx#stx-datum? _hd3138831771_)
                      (let ((_e3142531594_ (gx#stx-e _hd3138831771_)))
                        (if (equal? _e3142531594_ '::)
                            (if (gx#stx-pair? _tl3138931774_)
                                (let ((_e3142631598_
                                       (gx#syntax-e _tl3138931774_)))
                                  (let ((_tl3142831605_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3142631598_)))
                                        (_hd3142731602_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3142631598_))))
                                    (if (gx#stx-null? _tl3142831605_)
                                        (___kont4141841419_
                                         _hd3142731602_
                                         _hd3132032005_
                                         _hd3131731995_)
                                        (if (gx#stx-pair? _tl3142831605_)
                                            (let ((_e3144631508_
                                                   (gx#syntax-e
                                                    _tl3142831605_)))
                                              (let ((_tl3144831515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3144631508_)))
                                                    (_hd3144731512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3144631508_))))
                                                (if (gx#identifier?
                                                     _hd3144731512_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g42319_|
                                                         _hd3144731512_)
                                                        (if (gx#stx-pair?
                                                             _tl3144831515_)
                                                            (let ((_e3144931518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3144831515_)))
                      (let ((_tl3145131525_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3144931518_)))
                            (_hd3145031522_
                             (let ()
                               (declare (not safe))
                               (##car _e3144931518_))))
                        (if (gx#stx-null? _tl3145131525_)
                            (___kont4142041421_
                             _hd3145031522_
                             _hd3142731602_
                             _hd3132032005_
                             _hd3131731995_)
                            (_g3131131457_))))
                    (_g3131131457_))
                (_g3131131457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_))))
                                            (_g3131131457_)))))
                                (_g3131131457_))
                            (_g3131131457_)))
                      (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3132132008_)
                                                  (___kont4141441415_
                                                   _hd3132032005_
                                                   _hd3131731995_)
                                                  (_g3131131457_))))))
                                  (if (gx#stx-pair? _tl3132132008_)
                                      (let ((_e3138731767_
                                             (gx#syntax-e _tl3132132008_)))
                                        (let ((_tl3138931774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3138731767_)))
                                              (_hd3138831771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3138731767_))))
                                          (if (gx#stx-null? _tl3138931774_)
                                              (___kont4141241413_
                                               _hd3138831771_
                                               _hd3132032005_)
                                              (if (gx#identifier?
                                                   _hd3138831771_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42318_|
                                                       _hd3138831771_)
                                                      (if (gx#stx-pair?
                                                           _tl3138931774_)
                                                          (let ((_e3141031667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3138931774_)))
                    (let ((_tl3141231674_
                           (let () (declare (not safe)) (##cdr _e3141031667_)))
                          (_hd3141131671_
                           (let ()
                             (declare (not safe))
                             (##car _e3141031667_))))
                      (if (gx#stx-null? _tl3141231674_)
                          (___kont4141641417_
                           _hd3141131671_
                           _hd3132032005_
                           _hd3131731995_)
                          (_g3131131457_))))
                  (_g3131131457_))
              (_g3131131457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3138831771_)
                                                      (let ((_e3142531594_
                                                             (gx#stx-e
                                                              _hd3138831771_)))
                                                        (if (equal? _e3142531594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3138931774_)
                        (let ((_e3142631598_ (gx#syntax-e _tl3138931774_)))
                          (let ((_tl3142831605_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3142631598_)))
                                (_hd3142731602_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3142631598_))))
                            (if (gx#stx-null? _tl3142831605_)
                                (___kont4141841419_
                                 _hd3142731602_
                                 _hd3132032005_
                                 _hd3131731995_)
                                (if (gx#stx-pair? _tl3142831605_)
                                    (let ((_e3144631508_
                                           (gx#syntax-e _tl3142831605_)))
                                      (let ((_tl3144831515_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3144631508_)))
                                            (_hd3144731512_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3144631508_))))
                                        (if (gx#identifier? _hd3144731512_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42319_|
                                                 _hd3144731512_)
                                                (if (gx#stx-pair?
                                                     _tl3144831515_)
                                                    (let ((_e3144931518_
                                                           (gx#syntax-e
                                                            _tl3144831515_)))
                                                      (let ((_tl3145131525_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3144931518_)))
                    (_hd3145031522_
                     (let () (declare (not safe)) (##car _e3144931518_))))
                (if (gx#stx-null? _tl3145131525_)
                    (___kont4142041421_
                     _hd3145031522_
                     _hd3142731602_
                     _hd3132032005_
                     _hd3131731995_)
                    (_g3131131457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3131131457_))
                                                (_g3131131457_))
                                            (_g3131131457_))))
                                    (_g3131131457_)))))
                        (_g3131131457_))
                    (_g3131131457_)))
              (_g3131131457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3132132008_)
                                          (___kont4141441415_
                                           _hd3132032005_
                                           _hd3131731995_)
                                          (_g3131131457_))))))
                          (_g3131131457_))))
                  (_g3131131457_)))))))
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
                   (lambda (_e3211032203_
                            _hd3211132207_
                            _tl3211232210_
                            _e3211332213_
                            _hd3211432217_
                            _tl3211532220_
                            _e3211632223_
                            _hd3211732227_
                            _tl3211832230_
                            _e3211932233_
                            _hd3212032237_
                            _tl3212132240_)
                     (let ((_L32243_ _hd3212032237_)
                           (_L32245_ _hd3211732227_)
                           (_L32246_ _hd3211432217_))
                       (if (gx#identifier? _L32246_)
                           (___kont4167041671_ _L32243_ _L32245_ _L32246_)
                           (_g3210532139_))))))
              (if (gx#stx-pair? ___stx4166741668_)
                  (let ((_e3211032203_ (gx#syntax-e ___stx4166741668_)))
                    (let ((_tl3211232210_
                           (let () (declare (not safe)) (##cdr _e3211032203_)))
                          (_hd3211132207_
                           (let ()
                             (declare (not safe))
                             (##car _e3211032203_))))
                      (if (gx#stx-pair? _tl3211232210_)
                          (let ((_e3211332213_ (gx#syntax-e _tl3211232210_)))
                            (let ((_tl3211532220_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3211332213_)))
                                  (_hd3211432217_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3211332213_))))
                              (if (gx#stx-pair? _tl3211532220_)
                                  (let ((_e3211632223_
                                         (gx#syntax-e _tl3211532220_)))
                                    (let ((_tl3211832230_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3211632223_)))
                                          (_hd3211732227_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3211632223_))))
                                      (if (gx#stx-pair? _tl3211832230_)
                                          (let ((_e3211932233_
                                                 (gx#syntax-e _tl3211832230_)))
                                            (let ((_tl3212132240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3211932233_)))
                                                  (_hd3212032237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3211932233_))))
                                              (if (gx#stx-null? _tl3212132240_)
                                                  (___match4170041701_
                                                   _e3211032203_
                                                   _hd3211132207_
                                                   _tl3211232210_
                                                   _e3211332213_
                                                   _hd3211432217_
                                                   _tl3211532220_
                                                   _e3211632223_
                                                   _hd3211732227_
                                                   _tl3211832230_
                                                   _e3211932233_
                                                   _hd3212032237_
                                                   _tl3212132240_)
                                                  (_g3210532139_))))
                                          (if (gx#stx-null? _tl3211832230_)
                                              (___kont4167241673_
                                               _hd3211732227_
                                               _hd3211432217_
                                               _hd3211132207_)
                                              (_g3210532139_)))))
                                  (_g3210532139_))))
                          (_g3210532139_))))
                  (_g3210532139_)))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32268_)
        (let* ((_g3227232287_
                (lambda (_g3227332283_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3227332283_)))
               (_g3227132330_
                (lambda (_g3227332291_)
                  (if (gx#stx-pair? _g3227332291_)
                      (let ((_e3227632294_ (gx#syntax-e _g3227332291_)))
                        (let ((_hd3227732298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3227632294_)))
                              (_tl3227832301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3227632294_))))
                          (if (gx#stx-pair? _tl3227832301_)
                              (let ((_e3227932304_
                                     (gx#syntax-e _tl3227832301_)))
                                (let ((_hd3228032308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3227932304_)))
                                      (_tl3228132311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3227932304_))))
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
                                   _tl3228132311_
                                   _hd3228032308_)))
                              (_g3227232287_ _g3227332291_))))
                      (_g3227232287_ _g3227332291_)))))
          (_g3227132330_ _$stx32268_))))))
