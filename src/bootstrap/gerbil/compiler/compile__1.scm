(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g16658_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16659_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16660_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16661_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16662_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16663_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16664_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16665_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16666_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16667_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16668_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16669_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16670_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16671_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16672_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16673_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16674_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16675_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16676_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16677_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16678_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16679_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx538_)
        (let* ((___stx1532115322_ _$stx538_)
               (_g544624_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1532115322_))))
          (let ((___kont1532415325_
                 (lambda (_L921_ _L923_ _L924_ _L925_)
                   (cons _L925_
                         (cons _L924_ (cons (cons _L923_ '()) _L921_)))))
                (___kont1532615327_
                 (lambda (_L833_ _L835_ _L836_ _L837_)
                   (cons (gx#datum->syntax__0 '#f 'define)
                         (cons _L837_
                               (cons (cons (gx#datum->syntax__0 '#f 'delay)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tbl)
                           (cons (cons (gx#datum->syntax__0
                                        '#f
                                        'make-hash-table-eq)
                                       '())
                                 '()))
                     (foldr1 (lambda (_g864870_ _g865873_)
                               (cons (cons (gx#datum->syntax__0
                                            '#f
                                            'hash-copy!)
                                           (cons (gx#datum->syntax__0 '#f 'tbl)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'force)
                                                             (cons _g864870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g865873_))
                             (begin
                               (gx#syntax-check-splice-targets _L833_ _L835_)
                               (foldr2 (lambda (_g866876_ _g867879_ _g868881_)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)
                                                     (cons (gx#datum->syntax__0
                                                            '#f
                                                            'tbl)
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _g867879_ '()))
                         (cons _g866876_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g868881_))
                                       (cons (gx#datum->syntax__0 '#f 'tbl)
                                             '())
                                       _L833_
                                       _L835_))
                             _L836_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))))
                (___kont1533215333_
                 (lambda (_L671_ _L673_ _L674_ _L675_ _L676_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (cons (cons _L676_
                                     (cons '#f
                                           (cons (cons _L674_ _L673_) _L671_)))
                               (cons (cons (gx#datum->syntax__0 '#f 'define)
                                           (cons (cons _L675_
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'stx)
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'args)))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'parameterize)
                                                             (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        'current-compile-methods)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    'force)
                                                   (cons _L674_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax__0 '#f 'apply)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'compile-e)
                                             (cons (gx#datum->syntax__0
                                                    '#f
                                                    'stx)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'args)
                                                         '()))))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match1541415415_
                    (lambda (_e607631_
                             _hd608635_
                             _tl609638_
                             _e610641_
                             _hd611645_
                             _tl612648_
                             _e613651_
                             _hd614655_
                             _tl615658_
                             _e616661_
                             _hd617665_
                             _tl618668_)
                      (let ((_L671_ _tl615658_)
                            (_L673_ _tl618668_)
                            (_L674_ _hd617665_)
                            (_L675_ _hd611645_)
                            (_L676_ _hd608635_))
                        (if (gx#identifier? _L675_)
                            (___kont1533215333_
                             _L671_
                             _L673_
                             _L674_
                             _L675_
                             _L676_)
                            (_g544624_)))))
                   (___match1539015391_
                    (lambda (_e563705_
                             _hd564709_
                             _tl565712_
                             _e566715_
                             _hd567719_
                             _tl568722_
                             _e569725_
                             _e570729_
                             _hd571733_
                             _tl572736_
                             _e573739_
                             _hd574743_
                             _tl575746_
                             ___splice1532815329_
                             _target576749_
                             _tl578752_)
                      (letrec ((_loop579755_
                                (lambda (_hd577759_ _super583762_)
                                  (if (gx#stx-pair? _hd577759_)
                                      (let ((_e580765_
                                             (gx#syntax-e _hd577759_)))
                                        (let ((_lp-tl582772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e580765_)))
                                              (_lp-hd581769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e580765_))))
                                          (_loop579755_
                                           _lp-tl582772_
                                           (cons _lp-hd581769_
                                                 _super583762_))))
                                      (let ((_super584775_
                                             (reverse _super583762_)))
                                        (if (gx#stx-pair/null? _tl572736_)
                                            (let ((___splice1533015331_
                                                   (gx#syntax-split-splice
                                                    _tl572736_
                                                    '0)))
                                              (let ((_tl587782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1533015331_
                                                        '1)))
                                                    (_target585779_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1533015331_
                                                        '0))))
                                                (if (gx#stx-null? _tl587782_)
                                                    (letrec ((_loop588785_
                                                              (lambda (_hd586789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method592792_
                               _symbol593794_)
                        (if (gx#stx-pair? _hd586789_)
                            (let ((_e589797_ (gx#syntax-e _hd586789_)))
                              (let ((_lp-tl591804_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e589797_)))
                                    (_lp-hd590801_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e589797_))))
                                (if (gx#stx-pair? _lp-hd590801_)
                                    (let ((_e596807_
                                           (gx#syntax-e _lp-hd590801_)))
                                      (let ((_tl598814_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e596807_)))
                                            (_hd597811_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e596807_))))
                                        (if (gx#stx-pair? _tl598814_)
                                            (let ((_e599817_
                                                   (gx#syntax-e _tl598814_)))
                                              (let ((_tl601824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e599817_)))
                                                    (_hd600821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e599817_))))
                                                (if (gx#stx-null? _tl601824_)
                                                    (_loop588785_
                                                     _lp-tl591804_
                                                     (cons _hd600821_
                                                           _method592792_)
                                                     (cons _hd597811_
                                                           _symbol593794_))
                                                    (___match1541415415_
                                                     _e563705_
                                                     _hd564709_
                                                     _tl565712_
                                                     _e566715_
                                                     _hd567719_
                                                     _tl568722_
                                                     _e570729_
                                                     _hd571733_
                                                     _tl572736_
                                                     _e573739_
                                                     _hd574743_
                                                     _tl575746_))))
                                            (___match1541415415_
                                             _e563705_
                                             _hd564709_
                                             _tl565712_
                                             _e566715_
                                             _hd567719_
                                             _tl568722_
                                             _e570729_
                                             _hd571733_
                                             _tl572736_
                                             _e573739_
                                             _hd574743_
                                             _tl575746_))))
                                    (___match1541415415_
                                     _e563705_
                                     _hd564709_
                                     _tl565712_
                                     _e566715_
                                     _hd567719_
                                     _tl568722_
                                     _e570729_
                                     _hd571733_
                                     _tl572736_
                                     _e573739_
                                     _hd574743_
                                     _tl575746_))))
                            (let ((_symbol595830_ (reverse _symbol593794_))
                                  (_method594827_ (reverse _method592792_)))
                              (___kont1532615327_
                               _method594827_
                               _symbol595830_
                               _super584775_
                               _hd574743_))))))
              (_loop588785_ _target585779_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1541415415_
                                                     _e563705_
                                                     _hd564709_
                                                     _tl565712_
                                                     _e566715_
                                                     _hd567719_
                                                     _tl568722_
                                                     _e570729_
                                                     _hd571733_
                                                     _tl572736_
                                                     _e573739_
                                                     _hd574743_
                                                     _tl575746_))))
                                            (___match1541415415_
                                             _e563705_
                                             _hd564709_
                                             _tl565712_
                                             _e566715_
                                             _hd567719_
                                             _tl568722_
                                             _e570729_
                                             _hd571733_
                                             _tl572736_
                                             _e573739_
                                             _hd574743_
                                             _tl575746_)))))))
                        (_loop579755_ _target576749_ '()))))
                   (___match1535215353_
                    (lambda (_e550891_
                             _hd551895_
                             _tl552898_
                             _e553901_
                             _hd554905_
                             _tl555908_
                             _e556911_
                             _hd557915_
                             _tl558918_)
                      (let ((_L921_ _tl558918_)
                            (_L923_ _hd557915_)
                            (_L924_ _hd554905_)
                            (_L925_ _hd551895_))
                        (if (gx#identifier? _L923_)
                            (___kont1532415325_ _L921_ _L923_ _L924_ _L925_)
                            (if (gx#stx-datum? _hd554905_)
                                (let ((_e569725_ (gx#stx-e _hd554905_)))
                                  (if (equal? _e569725_ '#f)
                                      (if (gx#stx-pair? _hd557915_)
                                          (let ((_e573739_
                                                 (gx#syntax-e _hd557915_)))
                                            (let ((_tl575746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e573739_)))
                                                  (_hd574743_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e573739_))))
                                              (if (gx#stx-pair/null?
                                                   _tl575746_)
                                                  (let ((___splice1532815329_
                                                         (gx#syntax-split-splice
                                                          _tl575746_
                                                          '0)))
                                                    (let ((_tl578752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1532815329_
                                                              '1)))
                                                          (_target576749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1532815329_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl578752_)
                                                          (___match1539015391_
                                                           _e550891_
                                                           _hd551895_
                                                           _tl552898_
                                                           _e553901_
                                                           _hd554905_
                                                           _tl555908_
                                                           _e569725_
                                                           _e556911_
                                                           _hd557915_
                                                           _tl558918_
                                                           _e573739_
                                                           _hd574743_
                                                           _tl575746_
                                                           ___splice1532815329_
                                                           _target576749_
                                                           _tl578752_)
                                                          (___match1541415415_
                                                           _e550891_
                                                           _hd551895_
                                                           _tl552898_
                                                           _e553901_
                                                           _hd554905_
                                                           _tl555908_
                                                           _e556911_
                                                           _hd557915_
                                                           _tl558918_
                                                           _e573739_
                                                           _hd574743_
                                                           _tl575746_))))
                                                  (___match1541415415_
                                                   _e550891_
                                                   _hd551895_
                                                   _tl552898_
                                                   _e553901_
                                                   _hd554905_
                                                   _tl555908_
                                                   _e556911_
                                                   _hd557915_
                                                   _tl558918_
                                                   _e573739_
                                                   _hd574743_
                                                   _tl575746_))))
                                          (_g544624_))
                                      (if (gx#stx-pair? _hd557915_)
                                          (let ((_e616661_
                                                 (gx#syntax-e _hd557915_)))
                                            (let ((_tl618668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e616661_)))
                                                  (_hd617665_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e616661_))))
                                              (___match1541415415_
                                               _e550891_
                                               _hd551895_
                                               _tl552898_
                                               _e553901_
                                               _hd554905_
                                               _tl555908_
                                               _e556911_
                                               _hd557915_
                                               _tl558918_
                                               _e616661_
                                               _hd617665_
                                               _tl618668_)))
                                          (_g544624_))))
                                (if (gx#stx-pair? _hd557915_)
                                    (let ((_e616661_ (gx#syntax-e _hd557915_)))
                                      (let ((_tl618668_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e616661_)))
                                            (_hd617665_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e616661_))))
                                        (___match1541415415_
                                         _e550891_
                                         _hd551895_
                                         _tl552898_
                                         _e553901_
                                         _hd554905_
                                         _tl555908_
                                         _e556911_
                                         _hd557915_
                                         _tl558918_
                                         _e616661_
                                         _hd617665_
                                         _tl618668_)))
                                    (_g544624_))))))))
              (if (gx#stx-pair? ___stx1532115322_)
                  (let ((_e550891_ (gx#syntax-e ___stx1532115322_)))
                    (let ((_tl552898_
                           (let () (declare (not safe)) (##cdr _e550891_)))
                          (_hd551895_
                           (let () (declare (not safe)) (##car _e550891_))))
                      (if (gx#stx-pair? _tl552898_)
                          (let ((_e553901_ (gx#syntax-e _tl552898_)))
                            (let ((_tl555908_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e553901_)))
                                  (_hd554905_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e553901_))))
                              (if (gx#stx-pair? _tl555908_)
                                  (let ((_e556911_ (gx#syntax-e _tl555908_)))
                                    (let ((_tl558918_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e556911_)))
                                          (_hd557915_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e556911_))))
                                      (___match1535215353_
                                       _e550891_
                                       _hd551895_
                                       _tl552898_
                                       _e553901_
                                       _hd554905_
                                       _tl555908_
                                       _e556911_
                                       _hd557915_
                                       _tl558918_)))
                                  (if (gx#stx-datum? _hd554905_)
                                      (let ((_e569725_ (gx#stx-e _hd554905_)))
                                        (_g544624_))
                                      (_g544624_)))))
                          (_g544624_))))
                  (_g544624_)))))))
    (define |gxc[:0:]#with-primitive-bind+args|
      (lambda (_$stx948_)
        (let* ((_g952987_
                (lambda (_g953983_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g953983_)))
               (_g9511112_
                (lambda (_g953991_)
                  (if (gx#stx-pair? _g953991_)
                      (let ((_e958994_ (gx#syntax-e _g953991_)))
                        (let ((_hd959998_
                               (let () (declare (not safe)) (##car _e958994_)))
                              (_tl9601001_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e958994_))))
                          (if (gx#stx-pair? _tl9601001_)
                              (let ((_e9611004_ (gx#syntax-e _tl9601001_)))
                                (let ((_hd9621008_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9611004_)))
                                      (_tl9631011_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9611004_))))
                                  (if (gx#stx-pair? _hd9621008_)
                                      (let ((_e9641014_
                                             (gx#syntax-e _hd9621008_)))
                                        (let ((_hd9651018_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9641014_)))
                                              (_tl9661021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9641014_))))
                                          (if (gx#stx-pair? _tl9661021_)
                                              (let ((_e9671024_
                                                     (gx#syntax-e
                                                      _tl9661021_)))
                                                (let ((_hd9681028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9671024_)))
                                                      (_tl9691031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9671024_))))
                                                  (if (gx#stx-pair?
                                                       _tl9691031_)
                                                      (let ((_e9701034_
                                                             (gx#syntax-e
                                                              _tl9691031_)))
                                                        (let ((_hd9711038_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e9701034_)))
                      (_tl9721041_
                       (let () (declare (not safe)) (##cdr _e9701034_))))
                  (if (gx#stx-null? _tl9721041_)
                      (if (gx#stx-pair/null? _tl9631011_)
                          (let ((_g16656_
                                 (gx#syntax-split-splice _tl9631011_ '0)))
                            (begin
                              (let ((_g16657_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g16656_)
                                           (##vector-length _g16656_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g16657_ 2)))
                                    (error "Context expects 2 values"
                                           _g16657_)))
                              (let ((_target9731044_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g16656_ 0)))
                                    (_tl9751047_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g16656_ 1))))
                                (if (gx#stx-null? _tl9751047_)
                                    (letrec ((_loop9761050_
                                              (lambda (_hd9741054_
                                                       _body9801057_)
                                                (if (gx#stx-pair? _hd9741054_)
                                                    (let ((_e9771060_
                                                           (gx#syntax-e
                                                            _hd9741054_)))
                                                      (let ((_lp-hd9781064_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9771060_)))
                    (_lp-tl9791067_
                     (let () (declare (not safe)) (##cdr _e9771060_))))
                (_loop9761050_
                 _lp-tl9791067_
                 (cons _lp-hd9781064_ _body9801057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_body9811070_
                                                           (reverse _body9801057_)))
                                                      ((lambda (_L1074_
                                                                _L1076_
                                                                _L1077_
                                                                _L1078_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lp)
                             (cons (cons (cons (gx#datum->syntax__0 '#f 'rest)
                                               (cons _L1076_ '()))
                                         (cons (cons _L1078_
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _L1077_
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '@list)
                               '())
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax__0 '#f 'match)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'rest)
                                                     (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '@list)
                               (cons (gx#datum->syntax__0 '#f 'e)
                                     (gx#datum->syntax__0 '#f 'rest)))
                         (cons (cons (gx#datum->syntax__0 '#f 'ast-case)
                                     (cons (gx#datum->syntax__0 '#f 'e)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#quote)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             '()))
                                                 (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#ref)
                           (cons (gx#datum->syntax__0 '#f '_) '()))
                     (cons (cons (gx#datum->syntax__0 '#f 'lp)
                                 (cons (gx#datum->syntax__0 '#f 'rest)
                                       (cons _L1078_
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'cons)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'compile-e)
                             (cons (gx#datum->syntax__0 '#f 'e) '()))
                       (cons _L1077_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))
               (cons (cons (cons (gx#datum->syntax__0 '#f '%#quote)
                                 (cons (gx#datum->syntax__0 '#f '_) '()))
                           (cons (cons (gx#datum->syntax__0 '#f 'lp)
                                       (cons (gx#datum->syntax__0 '#f 'rest)
                                             (cons _L1078_
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                'cons)
                                                               (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'compile-e)
                                   (cons (gx#datum->syntax__0 '#f 'e) '()))
                             (cons _L1077_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     (cons (cons (gx#datum->syntax__0 '#f '_)
                                 (cons (cons (gx#datum->syntax__0 '#f 'let)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'tmp)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'make-symbol)
                             (cons (cons (gx#datum->syntax__0 '#f 'gensym)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons (gx#datum->syntax__0
                                                            '#f
                                                            '__tmp)
                                                           '()))
                                               '()))
                                   '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                'lp)
                                                               (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'rest)
                             (cons (cons (gx#datum->syntax__0 '#f 'cons)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      '@list)
                                                     (cons (gx#datum->syntax__0
                                                            '#f
                                                            'tmp)
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'compile-e)
                               (cons (gx#datum->syntax__0 '#f 'e) '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L1078_ '())))
                                   (cons (cons (gx#datum->syntax__0 '#f 'cons)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'tmp)
                                                     (cons _L1077_ '())))
                                         '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'else)
                               (foldr1 (lambda (_g11031106_ _g11041109_)
                                         (cons _g11031106_ _g11041109_))
                                       '()
                                       _L1074_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
               _body9811070_
               _hd9711038_
               _hd9681028_
               _hd9651018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop9761050_ _target9731044_ '()))
                                    (_g952987_ _g953991_)))))
                          (_g952987_ _g953991_))
                      (_g952987_ _g953991_))))
              (_g952987_ _g953991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g952987_ _g953991_))))
                                      (_g952987_ _g953991_))))
                              (_g952987_ _g953991_))))
                      (_g952987_ _g953991_)))))
          (_g9511112_ _$stx948_))))
    (define |gxc[:0:]#with-inline-unsafe-primitives|
      (lambda (_$stx1117_)
        (let* ((_g11211139_
                (lambda (_g11221135_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g11221135_)))
               (_g11201194_
                (lambda (_g11221143_)
                  (if (gx#stx-pair? _g11221143_)
                      (let ((_e11251146_ (gx#syntax-e _g11221143_)))
                        (let ((_hd11261150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e11251146_)))
                              (_tl11271153_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e11251146_))))
                          (if (gx#stx-pair? _tl11271153_)
                              (let ((_e11281156_ (gx#syntax-e _tl11271153_)))
                                (let ((_hd11291160_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e11281156_)))
                                      (_tl11301163_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e11281156_))))
                                  (if (gx#stx-pair? _tl11301163_)
                                      (let ((_e11311166_
                                             (gx#syntax-e _tl11301163_)))
                                        (let ((_hd11321170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e11311166_)))
                                              (_tl11331173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e11311166_))))
                                          (if (gx#stx-null? _tl11331173_)
                                              ((lambda (_L1176_ _L1178_)
                                                 (cons (gx#datum->syntax__0
                                                        '#f
                                                        'cond-expand)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'gambit-inline-unsafe-primitives)
                           (cons _L1178_ '()))
                     (cons (cons (gx#datum->syntax__0 '#f 'else)
                                 (cons (cons (gx#datum->syntax__0 '#f 'if)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'current-compile-decls-unsafe?)
                                                         '())
                                                   (cons _L1178_
                                                         (cons _L1176_ '()))))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd11321170_
                                               _hd11291160_)
                                              (_g11211139_ _g11221143_))))
                                      (_g11211139_ _g11221143_))))
                              (_g11211139_ _g11221143_))))
                      (_g11211139_ _g11221143_)))))
          (_g11201194_ _$stx1117_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16658_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16658_|
                   (cons |gxc[1]#_g16659_|
                         (cons |gxc[1]#_g16660_|
                               (cons (cons |gxc[1]#_g16661_|
                                           (cons |gxc[1]#_g16662_|
                                                 (cons |gxc[1]#_g16663_|
                                                       (cons |gxc[1]#_g16664_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g16665_|
                                                 (cons |gxc[1]#_g16666_|
                                                       (cons |gxc[1]#_g16667_|
                                                             (cons |gxc[1]#_g16668_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16669_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16669_|
                   (cons |gxc[1]#_g16670_|
                         (cons |gxc[1]#_g16671_|
                               (cons (cons |gxc[1]#_g16672_|
                                           (cons |gxc[1]#_g16673_|
                                                 (cons |gxc[1]#_g16674_|
                                                       (cons |gxc[1]#_g16675_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g16676_|
                                                 (cons |gxc[1]#_g16677_|
                                                       (cons |gxc[1]#_g16678_|
                                                             (cons |gxc[1]#_g16679_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
