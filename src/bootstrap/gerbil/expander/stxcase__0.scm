(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707742541)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp184798 (list gx#expander::t))
            (__tmp184796
             (let ((__tmp184797
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp184797 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp184798
         '(id depth)
         __tmp184796
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args180225_
        (apply make-instance gx#syntax-pattern::t _$args180225_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self180222_ _stx180223_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx180223_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx179704_)
        (letrec ((_generate179706_
                  (lambda (_e179933_)
                    (letrec ((_BUG179935_
                              (lambda (_q180097_)
                                (error '"BUG: syntax; generate"
                                       _stx179704_
                                       _e179933_
                                       _q180097_)))
                             (_local-pattern-e179936_
                              (lambda (_pat180095_)
                                (let ((__tmp184799
                                       (##structure-ref
                                        _pat180095_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp184799))))
                             (_getvar179937_
                              (lambda (_q180092_ _vars180093_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q180092_
                                           _vars180093_
                                           _BUG179935_))))
                             (_getarg179938_
                              (lambda (_arg180058_ _vars180059_)
                                (let* ((_arg180060180067_ _arg180058_)
                                       (_E180062180071_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg180060180067_)))
                                       (_K180063180080_
                                        (lambda (_e180074_ _tag180075_)
                                          (let ((_$e180077_ _tag180075_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e180077_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar179937_
                                                   _e180074_
                                                   _vars180059_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e180077_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e179936_
                                                       _e180074_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG179935_
                                                       _arg180058_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg180060180067_))
                                      (let ((_hd180064180083_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg180060180067_)))
                                            (_tl180065180085_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg180060180067_))))
                                        (let* ((_tag180088_ _hd180064180083_)
                                               (_e180090_ _tl180065180085_))
                                          (declare (not safe))
                                          (_K180063180080_
                                           _e180090_
                                           _tag180088_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180062180071_)))))))
                      (let _recur179940_ ((_e179942_ _e179933_)
                                          (_vars179943_ '()))
                        (let* ((_e179944179951_ _e179942_)
                               (_E179946179955_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e179944179951_)))
                               (_K179947180046_
                                (lambda (_body179958_ _tag179959_)
                                  (let ((_$e179961_ _tag179959_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179961_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body179958_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e179961_))
                                            (let ((_id179964_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body179958_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id179964_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks179966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id179964_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks179966_))
                                                        (let ((__tmp184827
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body179958_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp184827))
                (let ((__tmp184826
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body179958_)))
                      (__tmp184825
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body179958_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp184826
                   __tmp184825
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id179964_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body179958_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG179935_
                                                         _e179942_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e179961_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e179936_
                                                   _body179958_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e179961_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar179937_
                                                       _body179958_
                                                       _vars179943_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e179961_))
                                                        (let ((__tmp184823
                                                               (let ((__tmp184824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body179958_)))
                         (declare (not safe))
                         (_recur179940_ __tmp184824 _vars179943_)))
                      (__tmp184821
                       (let ((__tmp184822 (cdr _body179958_)))
                         (declare (not safe))
                         (_recur179940_ __tmp184822 _vars179943_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp184823 __tmp184821))
                (if (let () (declare (not safe)) (eq? 'vector _$e179961_))
                    (let ((__tmp184820
                           (let ()
                             (declare (not safe))
                             (_recur179940_ _body179958_ _vars179943_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp184820))
                    (if (let () (declare (not safe)) (eq? 'box _$e179961_))
                        (let ((__tmp184819
                               (let ()
                                 (declare (not safe))
                                 (_recur179940_ _body179958_ _vars179943_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp184819))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e179961_))
                            (let* ((_body179967179978_ _body179958_)
                                   (_E179969179982_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body179967179978_)))
                                   (_K179970180020_
                                    (lambda (_args179985_
                                             _iv179986_
                                             _hd179987_
                                             _depth179988_)
                                      (let* ((_targets179994_
                                              (map (lambda (_g179989179991_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg179938_
                                                        _g179989179991_
                                                        _vars179943_)))
                                                   _args179985_))
                                             (_fold-in179996_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args179985_)))
                                             (_fold-out179998_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args180000_
                                              (let ((__tmp184800
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out179998_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp184800
                                                        _fold-in179996_)))
                                             (_lambda-body180017_
                                              (if (fx> _depth179988_ '1)
                                                  (let ((_r-args180008_
                                                         (map (lambda (_arg180002_)
                                                                (let ((__tmp184805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg180002_)))
                          (declare (not safe))
                          (cons 'ref __tmp184805)))
                      _args179985_))
                (_r-vars180009_
                 (let ((__tmp184806
                        (lambda (_arg180004_ _var180005_ _r180006_)
                          (let ((__tmp184807
                                 (let ((__tmp184808 (cdr _arg180004_)))
                                   (declare (not safe))
                                   (cons __tmp184808 _var180005_))))
                            (declare (not safe))
                            (cons __tmp184807 _r180006_)))))
                   (declare (not safe))
                   (foldr2 __tmp184806
                           _vars179943_
                           _args179985_
                           _fold-in179996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp184809
                                                           (let ((__tmp184810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184814
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth179988_ '1)))
                                (__tmp184811
                                 (let ((__tmp184812
                                        (let ((__tmp184813
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out179998_))))
                                          (declare (not safe))
                                          (cons __tmp184813 _r-args180008_))))
                                   (declare (not safe))
                                   (cons _hd179987_ __tmp184812))))
                            (declare (not safe))
                            (cons __tmp184814 __tmp184811))))
                     (declare (not safe))
                     (cons 'splice __tmp184810))))
              (declare (not safe))
              (_recur179940_ __tmp184809 _r-vars180009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars180015_
                                                          (let ((__tmp184801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg180011_ _var180012_ _r180013_)
                           (let ((__tmp184802
                                  (let ((__tmp184803 (cdr _arg180011_)))
                                    (declare (not safe))
                                    (cons __tmp184803 _var180012_))))
                             (declare (not safe))
                             (cons __tmp184802 _r180013_)))))
                    (declare (not safe))
                    (foldr2 __tmp184801
                            _vars179943_
                            _args179985_
                            _fold-in179996_)))
                 (__tmp184804
                  (let ()
                    (declare (not safe))
                    (_recur179940_ _hd179987_ _hd-vars180015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp184804
                                                     _fold-out179998_)))))
                                        (let ((__tmp184818
                                               (if (fx> (length _targets179994_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets179994_))
                                                   '#!void))
                                              (__tmp184815
                                               (let ((__tmp184817
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args180000_
                                                         _lambda-body180017_)))
                                                     (__tmp184816
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur179940_
                                                         _iv179986_
                                                         _vars179943_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp184817
                                                  __tmp184816
                                                  _targets179994_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp184818
                                           __tmp184815))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body179967179978_))
                                  (let ((_hd179971180023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body179967179978_)))
                                        (_tl179972180025_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body179967179978_))))
                                    (let ((_depth180028_ _hd179971180023_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl179972180025_))
                                          (let ((_hd179973180030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl179972180025_)))
                                                (_tl179974180032_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl179972180025_))))
                                            (let ((_hd180035_
                                                   _hd179973180030_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl179974180032_))
                                                  (let ((_hd179975180037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl179974180032_)))
                                                        (_tl179976180039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl179974180032_))))
                                                    (let* ((_iv180042_
                                                            _hd179975180037_)
                                                           (_args180044_
                                                            _tl179976180039_))
                                                      (declare (not safe))
                                                      (_K179970180020_
                                                       _args180044_
                                                       _iv180042_
                                                       _hd180035_
                                                       _depth180028_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179969179982_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179969179982_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E179969179982_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e179961_))
                                _body179958_
                                (let ()
                                  (declare (not safe))
                                  (_BUG179935_ _e179942_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e179944179951_))
                              (let ((_hd179948180049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179944179951_)))
                                    (_tl179949180051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179944179951_))))
                                (let* ((_tag180054_ _hd179948180049_)
                                       (_body180056_ _tl179949180051_))
                                  (declare (not safe))
                                  (_K179947180046_ _body180056_ _tag180054_)))
                              (let ()
                                (declare (not safe))
                                (_E179946179955_))))))))
                 (_parse179707_
                  (lambda (_e179748_)
                    (letrec ((_make-cons179750_
                              (lambda (_hd179925_ _tl179926_)
                                (let ((_g184828_ _hd179925_)
                                      (_g184830_ _tl179926_))
                                  (begin
                                    (let ((_g184829_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184828_)
                                                 (##vector-length _g184828_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184829_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184829_)))
                                    (let ((_g184831_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184830_)
                                                 (##vector-length _g184830_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184831_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184831_)))
                                    (let ((_hd-e179928_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184828_ 0)))
                                          (_hd-vars179929_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184828_ 1))))
                                      (let ((_tl-e179930_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184830_ 0)))
                                            (_tl-vars179931_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184830_ 1))))
                                        (values (let ((__tmp184832
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e179928_
                                                               _tl-e179930_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp184832))
                                                (append _hd-vars179929_
                                                        _tl-vars179931_))))))))
                             (_make-splice179751_
                              (lambda (_where179864_
                                       _depth179865_
                                       _hd179866_
                                       _tl179867_)
                                (let ((_g184833_ _hd179866_)
                                      (_g184835_ _tl179867_))
                                  (begin
                                    (let ((_g184834_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184833_)
                                                 (##vector-length _g184833_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184834_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184834_)))
                                    (let ((_g184836_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184835_)
                                                 (##vector-length _g184835_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184836_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184836_)))
                                    (let ((_hd-e179869_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184833_ 0)))
                                          (_hd-vars179870_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184833_ 1))))
                                      (let ((_tl-e179871_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184835_ 0)))
                                            (_tl-vars179872_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184835_ 1))))
                                        (let _lp179874_ ((_rest179876_
                                                          _hd-vars179870_)
                                                         (_targets179877_ '())
                                                         (_vars179878_
                                                          _tl-vars179872_))
                                          (let* ((_rest179879179889_
                                                  _rest179876_)
                                                 (_else179881179897_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets179877_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx179704_
                                                           _where179864_))
                                                        (values (let ((__tmp184837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp184838
                                      (let ((__tmp184839
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e179871_
                                                     _targets179877_))))
                                        (declare (not safe))
                                        (cons _hd-e179869_ __tmp184839))))
                                 (declare (not safe))
                                 (cons _depth179865_ __tmp184838))))
                          (declare (not safe))
                          (cons 'splice __tmp184837))
                        _vars179878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K179883179906_
                                                  (lambda (_rest179900_
                                                           _hd-pat179901_
                                                           _hd-depth*179902_)
                                                    (let ((_hd-depth179904_
                                                           (fx- _hd-depth*179902_
                                                                _depth179865_)))
                                                      (if (fxpositive?
                                                           _hd-depth179904_)
                                                          (let ((__tmp184844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp184845
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat179901_))))
                           (declare (not safe))
                           (cons __tmp184845 _targets179877_)))
                        (__tmp184842
                         (let ((__tmp184843
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth179904_ _hd-pat179901_))))
                           (declare (not safe))
                           (cons __tmp184843 _vars179878_))))
                    (declare (not safe))
                    (_lp179874_ _rest179900_ __tmp184844 __tmp184842))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth179904_))
                      (let ((__tmp184840
                             (let ((__tmp184841
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat179901_))))
                               (declare (not safe))
                               (cons __tmp184841 _targets179877_))))
                        (declare (not safe))
                        (_lp179874_ _rest179900_ __tmp184840 _vars179878_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx179704_
                         _where179864_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest179879179889_))
                                                (let ((_hd179884179909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest179879179889_)))
                                                      (_tl179885179911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest179879179889_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd179884179909_))
                                                      (let ((_hd179886179914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd179884179909_)))
                    (_tl179887179916_
                     (let () (declare (not safe)) (##cdr _hd179884179909_))))
                (let* ((_hd-depth*179919_ _hd179886179914_)
                       (_hd-pat179921_ _tl179887179916_)
                       (_rest179923_ _tl179885179911_))
                  (declare (not safe))
                  (_K179883179906_
                   _rest179923_
                   _hd-pat179921_
                   _hd-depth*179919_)))
              (let () (declare (not safe)) (_else179881179897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else179881179897_)))))))))))
                             (_recur179752_
                              (lambda (_e179757_ _is-e?179758_)
                                (if (_is-e?179758_ _e179757_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx179704_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e179757_))
                                        (let* ((_pat179760_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e179757_)))
                                               (_depth179762_
                                                (##structure-ref
                                                 _pat179760_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth179762_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat179760_))
                                                      (let ((__tmp184861
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth179762_ _pat179760_))))
                (declare (not safe))
                (cons __tmp184861 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat179760_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e179757_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e179757_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e179757_))
                                                (let* ((_e179764179771_
                                                        _e179757_)
                                                       (_E179766179775_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e179764179771_))))
                                                       (_E179765179854_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e179764179771_))
                      (let ((_e179767179779_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e179764179771_))))
                        (let ((_hd179768179782_
                               (let ()
                                 (declare (not safe))
                                 (##car _e179767179779_)))
                              (_tl179769179784_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e179767179779_))))
                          (let* ((_hd179787_ _hd179768179782_)
                                 (_rest179789_ _tl179769179784_))
                            (if '#t
                                (if (_is-e?179758_ _hd179787_)
                                    (let* ((_e179790179797_ _rest179789_)
                                           (_E179792179801_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx179704_
                                                 _e179757_))))
                                           (_E179791179815_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e179790179797_))
                                                  (let ((_e179793179805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e179790179797_))))
                                                    (let ((_hd179794179808_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e179793179805_)))
                                                          (_tl179795179810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e179793179805_))))
                                                      (let ((_rest179813_
                                                             _hd179794179808_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl179795179810_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur179752_ _rest179813_ false))
                        (let () (declare (not safe)) (_E179792179801_)))
                    (let () (declare (not safe)) (_E179792179801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179792179801_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E179791179815_)))
                                    (let _lp179819_ ((_rest179821_
                                                      _rest179789_)
                                                     (_depth179822_ '0))
                                      (let* ((_e179823179830_ _rest179821_)
                                             (_E179825179834_
                                              (lambda ()
                                                (if (fxpositive? _depth179822_)
                                                    (let ((__tmp184855
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179752_
                                                              _hd179787_
                                                              _is-e?179758_)))
                                                          (__tmp184854
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179752_
                                                              _rest179821_
                                                              _is-e?179758_))))
                                                      (declare (not safe))
                                                      (_make-splice179751_
                                                       _e179757_
                                                       _depth179822_
                                                       __tmp184855
                                                       __tmp184854))
                                                    (let ((__tmp184853
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179752_
                                                              _hd179787_
                                                              _is-e?179758_)))
                                                          (__tmp184852
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179752_
                                                              _rest179821_
                                                              _is-e?179758_))))
                                                      (declare (not safe))
                                                      (_make-cons179750_
                                                       __tmp184853
                                                       __tmp184852)))))
                                             (_E179824179850_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e179823179830_))
                                                    (let ((_e179826179838_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e179823179830_))))
                                                      (let ((_hd179827179841_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e179826179838_)))
                    (_tl179828179843_
                     (let () (declare (not safe)) (##cdr _e179826179838_))))
                (let* ((_rest-hd179846_ _hd179827179841_)
                       (_rest-tl179848_ _tl179828179843_))
                  (if '#t
                      (if (_is-e?179758_ _rest-hd179846_)
                          (let ((__tmp184860
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth179822_ '1))))
                            (declare (not safe))
                            (_lp179819_ _rest-tl179848_ __tmp184860))
                          (if (fxpositive? _depth179822_)
                              (let ((__tmp184859
                                     (let ()
                                       (declare (not safe))
                                       (_recur179752_
                                        _hd179787_
                                        _is-e?179758_)))
                                    (__tmp184858
                                     (let ()
                                       (declare (not safe))
                                       (_recur179752_
                                        _rest179821_
                                        _is-e?179758_))))
                                (declare (not safe))
                                (_make-splice179751_
                                 _e179757_
                                 _depth179822_
                                 __tmp184859
                                 __tmp184858))
                              (let ((__tmp184857
                                     (let ()
                                       (declare (not safe))
                                       (_recur179752_
                                        _hd179787_
                                        _is-e?179758_)))
                                    (__tmp184856
                                     (let ()
                                       (declare (not safe))
                                       (_recur179752_
                                        _rest179821_
                                        _is-e?179758_))))
                                (declare (not safe))
                                (_make-cons179750_ __tmp184857 __tmp184856))))
                      (let () (declare (not safe)) (_E179825179834_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179825179834_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E179824179850_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E179766179775_))))))
                      (let () (declare (not safe)) (_E179766179775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179765179854_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e179757_))
                                                    (let ((_g184849_
                                                           (let ((__tmp184851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e179757_)))))
                     (declare (not safe))
                     (_recur179752_ __tmp184851 _is-e?179758_))))
              (begin
                (let ((_g184850_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g184849_)
                             (##vector-length _g184849_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g184850_ 2)))
                      (error "Context expects 2 values" _g184850_)))
                (let ((_e179858_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184849_ 0)))
                      (_vars179859_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184849_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e179858_))
                          _vars179859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e179757_))
                                                        (let ((_g184846_
                                                               (let ((__tmp184848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e179757_)))))
                         (declare (not safe))
                         (_recur179752_ __tmp184848 _is-e?179758_))))
                  (begin
                    (let ((_g184847_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g184846_)
                                 (##vector-length _g184846_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g184847_ 2)))
                          (error "Context expects 2 values" _g184847_)))
                    (let ((_e179861_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184846_ 0)))
                          (_vars179862_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184846_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e179861_))
                              _vars179862_))))
                (values (let () (declare (not safe)) (cons 'datum _e179757_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g184862_
                             (let ()
                               (declare (not safe))
                               (_recur179752_ _e179748_ gx#ellipsis?))))
                        (begin
                          (let ((_g184863_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g184862_)
                                       (##vector-length _g184862_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g184863_ 2)))
                                (error "Context expects 2 values" _g184863_)))
                          (let ((_tree179754_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184862_ 0)))
                                (_vars179755_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184862_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars179755_))
                                _tree179754_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx179704_
                                   _vars179755_))))))))))
          (let* ((_e179708179718_ _stx179704_)
                 (_E179710179722_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx179704_))))
                 (_E179709179744_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179708179718_))
                        (let ((_e179711179726_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179708179718_))))
                          (let ((_hd179712179729_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179711179726_)))
                                (_tl179713179731_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179711179726_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179713179731_))
                                (let ((_e179714179734_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179713179731_))))
                                  (let ((_hd179715179737_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179714179734_)))
                                        (_tl179716179739_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179714179734_))))
                                    (let ((_form179742_ _hd179715179737_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl179716179739_))
                                          (if '#t
                                              (let ((__tmp184865
                                                     (let ((__tmp184866
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse179707_
                                                               _form179742_))))
                                                       (declare (not safe))
                                                       (_generate179706_
                                                        __tmp184866)))
                                                    (__tmp184864
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx179704_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp184865
                                                 __tmp184864))
                                              (let ()
                                                (declare (not safe))
                                                (_E179710179722_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E179710179722_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179710179722_)))))
                        (let () (declare (not safe)) (_E179710179722_))))))
            (let () (declare (not safe)) (_E179709179744_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx178968_
               _identifier=?178969_
               _unwrap-e178970_
               _wrap-e178971_)
        (letrec ((_generate-bindings178973_
                  (lambda (_target179568_
                           _ids179569_
                           _clauses179570_
                           _clause-ids179571_
                           _E179572_)
                    (letrec ((_generate1179574_
                              (lambda (_clause179671_
                                       _clause-id179672_
                                       _E179673_)
                                (let ((__tmp184871
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id179672_ '())))
                                      (__tmp184867
                                       (let ((__tmp184868
                                              (let ((__tmp184870
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179568_
                                                             '())))
                                                    (__tmp184869
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause178975_
                                                        _target179568_
                                                        _ids179569_
                                                        _clause179671_
                                                        _E179673_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp184870
                                                 __tmp184869))))
                                         (declare (not safe))
                                         (cons __tmp184868 '()))))
                                  (declare (not safe))
                                  (cons __tmp184871 __tmp184867)))))
                      (let _lp179576_ ((_rest179578_ _clauses179570_)
                                       (_rest-ids179579_ _clause-ids179571_)
                                       (_bindings179580_ '()))
                        (let* ((_rest179581179589_ _rest179578_)
                               (_else179583179597_
                                (lambda () _bindings179580_))
                               (_K179585179659_
                                (lambda (_rest179600_ _clause179601_)
                                  (let* ((_rest-ids179602179609_
                                          _rest-ids179579_)
                                         (_E179604179613_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids179602179609_)))
                                         (_K179605179647_
                                          (lambda (_rest-ids179616_
                                                   _clause-id179617_)
                                            (let* ((_rest-ids179618179626_
                                                    _rest-ids179616_)
                                                   (_else179620179634_
                                                    (lambda ()
                                                      (let ((__tmp184872
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1179574_
                        _clause179601_
                        _clause-id179617_
                        _E179572_))))
                (declare (not safe))
                (cons __tmp184872 _bindings179580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K179622179639_
                                                    (lambda (_next-clause-id179637_)
                                                      (let ((__tmp184873
                                                             (let ((__tmp184874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1179574_
                               _clause179601_
                               _clause-id179617_
                               _next-clause-id179637_))))
                       (declare (not safe))
                       (cons __tmp184874 _bindings179580_))))
                (declare (not safe))
                (_lp179576_ _rest179600_ _rest-ids179616_ __tmp184873)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids179618179626_))
                                                  (let* ((_hd179623179642_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids179618179626_)))
                                                         (_next-clause-id179645_
                                                          _hd179623179642_))
                                                    (declare (not safe))
                                                    (_K179622179639_
                                                     _next-clause-id179645_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else179620179634_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids179602179609_))
                                        (let ((_hd179606179650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids179602179609_)))
                                              (_tl179607179652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids179602179609_))))
                                          (let* ((_clause-id179655_
                                                  _hd179606179650_)
                                                 (_rest-ids179657_
                                                  _tl179607179652_))
                                            (declare (not safe))
                                            (_K179605179647_
                                             _rest-ids179657_
                                             _clause-id179655_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179604179613_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest179581179589_))
                              (let ((_hd179586179662_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest179581179589_)))
                                    (_tl179587179664_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest179581179589_))))
                                (let* ((_clause179667_ _hd179586179662_)
                                       (_rest179669_ _tl179587179664_))
                                  (declare (not safe))
                                  (_K179585179659_
                                   _rest179669_
                                   _clause179667_)))
                              (let ()
                                (declare (not safe))
                                (_else179583179597_))))))))
                 (_generate-body178974_
                  (lambda (_bindings179528_ _body179529_)
                    (let _recur179531_ ((_rest179533_ _bindings179528_))
                      (let* ((_rest179534179542_ _rest179533_)
                             (_else179536179550_ (lambda () _body179529_))
                             (_K179538179556_
                              (lambda (_rest179553_ _hd179554_)
                                (let ((__tmp184876
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd179554_ '())))
                                      (__tmp184875
                                       (let ()
                                         (declare (not safe))
                                         (_recur179531_ _rest179553_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp184876
                                   __tmp184875)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest179534179542_))
                            (let ((_hd179539179559_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest179534179542_)))
                                  (_tl179540179561_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest179534179542_))))
                              (let* ((_hd179564_ _hd179539179559_)
                                     (_rest179566_ _tl179540179561_))
                                (declare (not safe))
                                (_K179538179556_ _rest179566_ _hd179564_)))
                            (let ()
                              (declare (not safe))
                              (_else179536179550_)))))))
                 (_generate-clause178975_
                  (lambda (_target179391_ _ids179392_ _clause179393_ _E179394_)
                    (letrec ((_generate1179396_
                              (lambda (_hd179483_ _fender179484_ _body179485_)
                                (let ((_g184877_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause178977_
                                          _hd179483_
                                          _ids179392_))))
                                  (begin
                                    (let ((_g184878_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184877_)
                                                 (##vector-length _g184877_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184878_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184878_)))
                                    (let ((_e179487_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184877_ 0)))
                                          (_mvars179488_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184877_ 1))))
                                      (let* ((_pvars179490_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars179488_))))
                                             (_E179492_
                                              (let ((__tmp184879
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179391_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E179394_ __tmp184879)))
                                             (_K179525_
                                              (let ((__tmp184880
                                                     (let ((__tmp184882
                                                            (map (lambda (_mvar179494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar179495_)
                           (let* ((_mvar179496179503_ _mvar179494_)
                                  (_E179498179507_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar179496179503_)))
                                  (_K179499179513_
                                   (lambda (_depth179510_ _id179511_)
                                     (let ((__tmp184883
                                            (let ((__tmp184884
                                                   (let ((__tmp184886
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id179511_)))
                                                         (__tmp184885
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar179495_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp184886
                                                      __tmp184885
                                                      _depth179510_))))
                                              (declare (not safe))
                                              (cons __tmp184884 '()))))
                                       (declare (not safe))
                                       (cons _id179511_ __tmp184883)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar179496179503_))
                                 (let ((_hd179500179516_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar179496179503_)))
                                       (_tl179501179518_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar179496179503_))))
                                   (let* ((_id179521_ _hd179500179516_)
                                          (_depth179523_ _tl179501179518_))
                                     (declare (not safe))
                                     (_K179499179513_
                                      _depth179523_
                                      _id179521_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E179498179507_)))))
                         _mvars179488_
                         _pvars179490_))
                   (__tmp184881
                    (if (let () (declare (not safe)) (eq? _fender179484_ '#t))
                        _body179485_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender179484_
                           _body179485_
                           _E179492_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp184882 __tmp184881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars179490_
                                                 __tmp184880))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match178976_
                                           _hd179483_
                                           _target179391_
                                           _e179487_
                                           _mvars179488_
                                           _K179525_
                                           _E179492_)))))))))
                      (let* ((_e179397179417_ _clause179393_)
                             (_E179406179421_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e179397179417_))))
                             (_E179399179455_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179397179417_))
                                    (let ((_e179407179425_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179397179417_))))
                                      (let ((_hd179408179428_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179407179425_)))
                                            (_tl179409179430_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179407179425_))))
                                        (let ((_hd179433_ _hd179408179428_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179409179430_))
                                              (let ((_e179410179435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179409179430_))))
                                                (let ((_hd179411179438_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179410179435_)))
                                                      (_tl179412179440_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179410179435_))))
                                                  (let ((_fender179443_
                                                         _hd179411179438_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl179412179440_))
                                                        (let ((_e179413179445_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl179412179440_))))
                  (let ((_hd179414179448_
                         (let () (declare (not safe)) (##car _e179413179445_)))
                        (_tl179415179450_
                         (let ()
                           (declare (not safe))
                           (##cdr _e179413179445_))))
                    (let ((_body179453_ _hd179414179448_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl179415179450_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1179396_
                                 _hd179433_
                                 _fender179443_
                                 _body179453_))
                              (let () (declare (not safe)) (_E179406179421_)))
                          (let () (declare (not safe)) (_E179406179421_))))))
                (let () (declare (not safe)) (_E179406179421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E179406179421_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179406179421_)))))
                             (_E179398179479_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179397179417_))
                                    (let ((_e179400179459_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179397179417_))))
                                      (let ((_hd179401179462_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179400179459_)))
                                            (_tl179402179464_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179400179459_))))
                                        (let ((_hd179467_ _hd179401179462_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179402179464_))
                                              (let ((_e179403179469_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179402179464_))))
                                                (let ((_hd179404179472_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179403179469_)))
                                                      (_tl179405179474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179403179469_))))
                                                  (let ((_body179477_
                                                         _hd179404179472_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl179405179474_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1179396_
                                                               _hd179467_
                                                               '#t
                                                               _body179477_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E179399179455_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E179399179455_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E179399179455_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179399179455_))))))
                        (let () (declare (not safe)) (_E179398179479_))))))
                 (_generate-match178976_
                  (lambda (_where179140_
                           _target179141_
                           _hd179142_
                           _mvars179143_
                           _K179144_
                           _E179145_)
                    (letrec ((_BUG179147_
                              (lambda (_q179389_)
                                (error '"BUG: syntax-case; generate"
                                       _stx178968_
                                       _hd179142_
                                       _q179389_)))
                             (_recur179148_
                              (lambda (_e179239_
                                       _vars179240_
                                       _target179241_
                                       _E179242_
                                       _k179243_)
                                (let* ((_e179244179251_ _e179239_)
                                       (_E179246179255_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e179244179251_)))
                                       (_K179247179377_
                                        (lambda (_body179258_ _tag179259_)
                                          (let ((_$e179261_ _tag179259_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e179261_))
                                                (_k179243_ _vars179240_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e179261_))
                                                    (let ((__tmp184993
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target179241_)))
                                                          (__tmp184989
                                                           (let ((__tmp184991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184992
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e178971_
                                    _body179258_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?178969_
                             __tmp184992
                             _target179241_)))
                         (__tmp184990 (_k179243_ _vars179240_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp184991 __tmp184990 _E179242_))))
              (declare (not safe))
              (gx#core-list 'if __tmp184993 __tmp184989 _E179242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e179261_))
                                                        (_k179243_
                                                         (let ((__tmp184988
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body179258_ _target179241_))))
                   (declare (not safe))
                   (cons __tmp184988 _vars179240_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e179261_))
                    (let ((_$e179264_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd179265_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl179266_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp184987
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target179241_)))
                            (__tmp184968
                             (let ((__tmp184982
                                    (let ((__tmp184983
                                           (let ((__tmp184986
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e179264_ '())))
                                                 (__tmp184984
                                                  (let ((__tmp184985
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e178970_
                                                            _target179241_))))
                                                    (declare (not safe))
                                                    (cons __tmp184985 '()))))
                                             (declare (not safe))
                                             (cons __tmp184986 __tmp184984))))
                                      (declare (not safe))
                                      (cons __tmp184983 '())))
                                   (__tmp184969
                                    (let ((__tmp184972
                                           (let ((__tmp184978
                                                  (let ((__tmp184981
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd179265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp184979
                 (let ((__tmp184980
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e179264_))))
                   (declare (not safe))
                   (cons __tmp184980 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184981
                                                          __tmp184979)))
                                                 (__tmp184973
                                                  (let ((__tmp184974
                                                         (let ((__tmp184977
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl179266_ '())))
                       (__tmp184975
                        (let ((__tmp184976
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e179264_))))
                          (declare (not safe))
                          (cons __tmp184976 '()))))
                   (declare (not safe))
                   (cons __tmp184977 __tmp184975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184974 '()))))
                                             (declare (not safe))
                                             (cons __tmp184978 __tmp184973)))
                                          (__tmp184970
                                           (let* ((_body179267179274_
                                                   _body179258_)
                                                  (_E179269179278_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body179267179274_)))
                                                  (_K179270179286_
                                                   (lambda (_tl179281_
                                                            _hd179282_)
                                                     (let ((__tmp184971
                                                            (lambda (_vars179284_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur179148_
                         _tl179281_
                         _vars179284_
                         _$tl179266_
                         _E179242_
                         _k179243_)))))
               (declare (not safe))
               (_recur179148_
                _hd179282_
                _vars179240_
                _$hd179265_
                _E179242_
                __tmp184971)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body179267179274_))
                                                 (let ((_hd179271179289_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body179267179274_)))
                                                       (_tl179272179291_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body179267179274_))))
                                                   (let* ((_hd179294_
                                                           _hd179271179289_)
                                                          (_tl179296_
                                                           _tl179272179291_))
                                                     (declare (not safe))
                                                     (_K179270179286_
                                                      _tl179296_
                                                      _hd179294_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E179269179278_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp184972
                                       __tmp184970))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp184982
                                __tmp184969))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp184987 __tmp184968 _E179242_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e179261_))
                        (let* ((_body179297179304_ _body179258_)
                               (_E179299179308_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body179297179304_)))
                               (_K179300179359_
                                (lambda (_tl179311_ _hd179312_)
                                  (let* ((_rlen179314_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen179149_ _tl179311_)))
                                         (_$target179316_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd179318_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl179320_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp179322_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e179324_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd179326_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl179328_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars179330_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars179150_ _hd179312_)))
                                         (_lvars179332_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179330_)))
                                         (_tlvars179334_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179330_)))
                                         (_linit179338_
                                          (map (lambda (_var179336_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars179332_)))
                                    (letrec ((_make-loop179341_
                                              (lambda (_vars179345_)
                                                (let ((__tmp184919
                                                       (let ((__tmp184920
                                                              (let ((__tmp184956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp179322_ '())))
                            (__tmp184921
                             (let ((__tmp184922
                                    (let ((__tmp184955
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd179318_ _lvars179332_)))
                                          (__tmp184923
                                           (let ((__tmp184954
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd179318_)))
                                                 (__tmp184932
                                                  (let ((__tmp184949
                                                         (let ((__tmp184950
                                                                (let ((__tmp184953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e179324_ '())))
                              (__tmp184951
                               (let ((__tmp184952
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e178970_
                                         _$hd179318_))))
                                 (declare (not safe))
                                 (cons __tmp184952 '()))))
                          (declare (not safe))
                          (cons __tmp184953 __tmp184951))))
                   (declare (not safe))
                   (cons __tmp184950 '())))
                (__tmp184933
                 (let ((__tmp184939
                        (let ((__tmp184945
                               (let ((__tmp184948
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd179326_ '())))
                                     (__tmp184946
                                      (let ((__tmp184947
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e179324_))))
                                        (declare (not safe))
                                        (cons __tmp184947 '()))))
                                 (declare (not safe))
                                 (cons __tmp184948 __tmp184946)))
                              (__tmp184940
                               (let ((__tmp184941
                                      (let ((__tmp184944
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl179328_ '())))
                                            (__tmp184942
                                             (let ((__tmp184943
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e179324_))))
                                               (declare (not safe))
                                               (cons __tmp184943 '()))))
                                        (declare (not safe))
                                        (cons __tmp184944 __tmp184942))))
                                 (declare (not safe))
                                 (cons __tmp184941 '()))))
                          (declare (not safe))
                          (cons __tmp184945 __tmp184940)))
                       (__tmp184934
                        (let ((__tmp184935
                               (lambda (_hdvars179347_)
                                 (let ((__tmp184936
                                        (let ((__tmp184937
                                               (map (lambda (_svar179349_
                                                             _lvar179350_)
                                                      (let ((__tmp184938
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar179349_ _hdvars179347_ _BUG179147_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp184938 _lvar179350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars179330_
                                                    _lvars179332_)))
                                          (declare (not safe))
                                          (cons _$lp-tl179328_ __tmp184937))))
                                   (declare (not safe))
                                   (cons _$lp179322_ __tmp184936)))))
                          (declare (not safe))
                          (_recur179148_
                           _hd179312_
                           '()
                           _$lp-hd179326_
                           _E179242_
                           __tmp184935))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp184939 __tmp184934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184949
                                                     __tmp184933)))
                                                 (__tmp184924
                                                  (let ((__tmp184928
                                                         (map (lambda (_lvar179352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar179353_)
                        (let ((__tmp184931
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar179353_ '())))
                              (__tmp184929
                               (let ((__tmp184930
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar179352_))))
                                 (declare (not safe))
                                 (cons __tmp184930 '()))))
                          (declare (not safe))
                          (cons __tmp184931 __tmp184929)))
                      _lvars179332_
                      _tlvars179334_))
                (__tmp184925
                 (_k179243_
                  (let ((__tmp184926
                         (lambda (_svar179355_ _tlvar179356_ _r179357_)
                           (let ((__tmp184927
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar179355_ _tlvar179356_))))
                             (declare (not safe))
                             (cons __tmp184927 _r179357_)))))
                    (declare (not safe))
                    (foldl2 __tmp184926
                            _vars179345_
                            _svars179330_
                            _tlvars179334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184928
                                                     __tmp184925))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp184954
                                              __tmp184932
                                              __tmp184924))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp184955
                                       __tmp184923))))
                               (declare (not safe))
                               (cons __tmp184922 '()))))
                        (declare (not safe))
                        (cons __tmp184956 __tmp184921))))
                 (declare (not safe))
                 (cons __tmp184920 '())))
              (__tmp184917
               (let ((__tmp184918
                      (let ()
                        (declare (not safe))
                        (cons _$target179316_ _linit179338_))))
                 (declare (not safe))
                 (cons _$lp179322_ __tmp184918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp184919
                                                   __tmp184917)))))
                                      (let ((_body179343_
                                             (let ((__tmp184958
                                                    (let ((__tmp184959
                                                           (let ((__tmp184962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184963
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl179320_ '()))))
                            (declare (not safe))
                            (cons _$target179316_ __tmp184963)))
                         (__tmp184960
                          (let ((__tmp184961
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target179241_
                                    _rlen179314_))))
                            (declare (not safe))
                            (cons __tmp184961 '()))))
                     (declare (not safe))
                     (cons __tmp184962 __tmp184960))))
              (declare (not safe))
              (cons __tmp184959 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184957
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179148_
                                                       _tl179311_
                                                       _vars179240_
                                                       _$tl179320_
                                                       _E179242_
                                                       _make-loop179341_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184958
                                                __tmp184957))))
                                        (let ((__tmp184967
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target179241_)))
                                              (__tmp184964
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen179314_))
                                                   _body179343_
                                                   (let ((__tmp184965
                                                          (let ((__tmp184966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target179241_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp184966 _rlen179314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp184965
                                                      _body179343_
                                                      _E179242_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp184967
                                           __tmp184964
                                           _E179242_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body179297179304_))
                              (let ((_hd179301179362_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body179297179304_)))
                                    (_tl179302179364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body179297179304_))))
                                (let* ((_hd179367_ _hd179301179362_)
                                       (_tl179369_ _tl179302179364_))
                                  (declare (not safe))
                                  (_K179300179359_ _tl179369_ _hd179367_)))
                              (let () (declare (not safe)) (_E179299179308_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e179261_))
                            (let ((__tmp184916
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target179241_)))
                                  (__tmp184915 (_k179243_ _vars179240_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp184916
                               __tmp184915
                               _E179242_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e179261_))
                                (let ((_$e179371_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp184914
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target179241_)))
                                        (__tmp184906
                                         (let ((__tmp184908
                                                (let ((__tmp184909
                                                       (let ((__tmp184913
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e179371_ '())))
                     (__tmp184910
                      (let ((__tmp184911
                             (let ((__tmp184912
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e178970_
                                       _target179241_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp184912))))
                        (declare (not safe))
                        (cons __tmp184911 '()))))
                 (declare (not safe))
                 (cons __tmp184913 __tmp184910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp184909 '())))
                                               (__tmp184907
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur179148_
                                                   _body179258_
                                                   _vars179240_
                                                   _$e179371_
                                                   _E179242_
                                                   _k179243_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp184908
                                            __tmp184907))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp184914
                                     __tmp184906
                                     _E179242_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e179261_))
                                    (let ((_$e179373_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp184905
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target179241_)))
                                            (__tmp184897
                                             (let ((__tmp184899
                                                    (let ((__tmp184900
                                                           (let ((__tmp184904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e179373_ '())))
                         (__tmp184901
                          (let ((__tmp184902
                                 (let ((__tmp184903
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e178970_
                                           _target179241_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp184903))))
                            (declare (not safe))
                            (cons __tmp184902 '()))))
                     (declare (not safe))
                     (cons __tmp184904 __tmp184901))))
              (declare (not safe))
              (cons __tmp184900 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184898
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179148_
                                                       _body179258_
                                                       _vars179240_
                                                       _$e179373_
                                                       _E179242_
                                                       _k179243_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184899
                                                __tmp184898))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp184905
                                         __tmp184897
                                         _E179242_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179261_))
                                        (let ((_$e179375_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp184896
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target179241_)))
                                                (__tmp184887
                                                 (let ((__tmp184891
                                                        (let ((__tmp184892
                                                               (let ((__tmp184895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e179375_ '())))
                             (__tmp184893
                              (let ((__tmp184894
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target179241_))))
                                (declare (not safe))
                                (cons __tmp184894 '()))))
                         (declare (not safe))
                         (cons __tmp184895 __tmp184893))))
                  (declare (not safe))
                  (cons __tmp184892 '())))
               (__tmp184888
                (let ((__tmp184890
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e179375_ _body179258_)))
                      (__tmp184889 (_k179243_ _vars179240_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp184890 __tmp184889 _E179242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp184891
                                                    __tmp184888))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp184896
                                             __tmp184887
                                             _E179242_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG179147_ _e179239_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e179244179251_))
                                      (let ((_hd179248179380_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179244179251_)))
                                            (_tl179249179382_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179244179251_))))
                                        (let* ((_tag179385_ _hd179248179380_)
                                               (_body179387_ _tl179249179382_))
                                          (declare (not safe))
                                          (_K179247179377_
                                           _body179387_
                                           _tag179385_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179246179255_))))))
                             (_splice-rlen179149_
                              (lambda (_e179201_)
                                (let _lp179203_ ((_e179205_ _e179201_)
                                                 (_n179206_ '0))
                                  (let* ((_e179207179214_ _e179205_)
                                         (_E179209179218_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179207179214_)))
                                         (_K179210179227_
                                          (lambda (_body179221_ _tag179222_)
                                            (let ((_$e179224_ _tag179222_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e179224_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx178968_
                                                     _where179140_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e179224_))
                                                      (let ((__tmp184995
                                                             (cdr _body179221_))
                                                            (__tmp184994
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n179206_ '1))))
                (declare (not safe))
                (_lp179203_ __tmp184995 __tmp184994))
              _n179206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179207179214_))
                                        (let ((_hd179211179230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179207179214_)))
                                              (_tl179212179232_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179207179214_))))
                                          (let* ((_tag179235_ _hd179211179230_)
                                                 (_body179237_
                                                  _tl179212179232_))
                                            (declare (not safe))
                                            (_K179210179227_
                                             _body179237_
                                             _tag179235_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179209179218_)))))))
                             (_splice-vars179150_
                              (lambda (_e179157_)
                                (let _recur179159_ ((_e179161_ _e179157_)
                                                    (_vars179162_ '()))
                                  (let* ((_e179163179170_ _e179161_)
                                         (_E179165179174_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179163179170_)))
                                         (_K179166179189_
                                          (lambda (_body179177_ _tag179178_)
                                            (let ((_$e179180_ _tag179178_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e179180_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body179177_
                                                          _vars179162_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e179180_))
                  (let () (declare (not safe)) (eq? 'splice _$e179180_)))
              (let ((__tmp184998 (cdr _body179177_))
                    (__tmp184996
                     (let ((__tmp184997 (car _body179177_)))
                       (declare (not safe))
                       (_recur179159_ __tmp184997 _vars179162_))))
                (declare (not safe))
                (_recur179159_ __tmp184998 __tmp184996))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e179180_))
                      (let () (declare (not safe)) (eq? 'box _$e179180_)))
                  (let ()
                    (declare (not safe))
                    (_recur179159_ _body179177_ _vars179162_))
                  _vars179162_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179163179170_))
                                        (let ((_hd179167179192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179163179170_)))
                                              (_tl179168179194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179163179170_))))
                                          (let* ((_tag179197_ _hd179167179192_)
                                                 (_body179199_
                                                  _tl179168179194_))
                                            (declare (not safe))
                                            (_K179166179189_
                                             _body179199_
                                             _tag179197_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179165179174_)))))))
                             (_make-body179151_
                              (lambda (_vars179153_)
                                (let ((__tmp184999
                                       (map (lambda (_mvar179155_)
                                              (let ((__tmp185000
                                                     (car _mvar179155_)))
                                                (declare (not safe))
                                                (assgetq __tmp185000
                                                         _vars179153_
                                                         _BUG179147_)))
                                            _mvars179143_)))
                                  (declare (not safe))
                                  (cons _K179144_ __tmp184999)))))
                      (let ()
                        (declare (not safe))
                        (_recur179148_
                         _hd179142_
                         '()
                         _target179141_
                         _E179145_
                         _make-body179151_)))))
                 (_parse-clause178977_
                  (lambda (_hd179046_ _ids179047_)
                    (let _recur179049_ ((_e179051_ _hd179046_)
                                        (_vars179052_ '())
                                        (_depth179053_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e179051_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e179051_))
                              (values '(any) _vars179052_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e179051_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx178968_
                                     _hd179046_))
                                  (if (let ((__tmp185016
                                             (lambda (_id179055_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e179051_
                                                  _id179055_)))))
                                        (declare (not safe))
                                        (find __tmp185016 _ids179047_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e179051_))
                                              _vars179052_)
                                      (if (let ((__tmp185014
                                                 (lambda (_var179057_)
                                                   (let ((__tmp185015
                                                          (car _var179057_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e179051_
                                                      __tmp185015)))))
                                            (declare (not safe))
                                            (find __tmp185014 _vars179052_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx178968_
                                             _e179051_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e179051_))
                                                  (let ((__tmp185013
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e179051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth179053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185013
                                                          _vars179052_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e179051_))
                              (let* ((_e179058179065_ _e179051_)
                                     (_E179060179069_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e179058179065_))))
                                     (_E179059179130_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e179058179065_))
                                            (let ((_e179061179073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e179058179065_))))
                                              (let ((_hd179062179076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e179061179073_)))
                                                    (_tl179063179078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e179061179073_))))
                                                (let* ((_hd179081_
                                                        _hd179062179076_)
                                                       (_rest179083_
                                                        _tl179063179078_))
                                                  (if '#t
                                                      (let* ((_make-pair179098_
                                                              (lambda (_tag179085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd179086_
                               _tl179087_)
                        (let* ((_hd-depth179089_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag179085_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth179053_ '1))
                                    _depth179053_))
                               (_g185008_
                                (let ()
                                  (declare (not safe))
                                  (_recur179049_
                                   _hd179086_
                                   _vars179052_
                                   _hd-depth179089_))))
                          (begin
                            (let ((_g185009_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185008_)
                                         (##vector-length _g185008_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185009_ 2)))
                                  (error "Context expects 2 values"
                                         _g185009_)))
                            (let ((_hd179091_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185008_ 0)))
                                  (_vars179092_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185008_ 1))))
                              (let ((_g185010_
                                     (let ()
                                       (declare (not safe))
                                       (_recur179049_
                                        _tl179087_
                                        _vars179092_
                                        _depth179053_))))
                                (begin
                                  (let ((_g185011_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g185010_)
                                               (##vector-length _g185010_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g185011_ 2)))
                                        (error "Context expects 2 values"
                                               _g185011_)))
                                  (let ((_tl179094_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185010_ 0)))
                                        (_vars179095_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185010_ 1))))
                                    (let ()
                                      (values (let ((__tmp185012
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd179091_
                                                             _tl179094_))))
                                                (declare (not safe))
                                                (cons _tag179085_ __tmp185012))
                                              _vars179095_))))))))))
                     (_e179099179106_ _rest179083_)
                     (_E179101179110_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair179098_ 'cons _hd179081_ _rest179083_))))
                     (_E179100179126_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e179099179106_))
                            (let ((_e179102179114_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e179099179106_))))
                              (let ((_hd179103179117_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179102179114_)))
                                    (_tl179104179119_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179102179114_))))
                                (let* ((_rest-hd179122_ _hd179103179117_)
                                       (_rest-tl179124_ _tl179104179119_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd179122_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179098_
                                             'splice
                                             _hd179081_
                                             _rest-tl179124_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179098_
                                             'cons
                                             _hd179081_
                                             _rest179083_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179101179110_))))))
                            (let () (declare (not safe)) (_E179101179110_))))))
                (let () (declare (not safe)) (_E179100179126_)))
              (let () (declare (not safe)) (_E179060179069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E179060179069_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179059179130_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e179051_))
                                  (values '(null) _vars179052_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e179051_))
                                      (let ((_g185005_
                                             (let ((__tmp185007
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e179051_)))))
                                               (declare (not safe))
                                               (_recur179049_
                                                __tmp185007
                                                _vars179052_
                                                _depth179053_))))
                                        (begin
                                          (let ((_g185006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185005_)
                                                       (##vector-length
                                                        _g185005_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185006_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185006_)))
                                          (let ((_e179134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185005_ 0)))
                                                (_vars179135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185005_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e179134_))
                                                    _vars179135_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e179051_))
                                          (let ((_g185002_
                                                 (let ((__tmp185004
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e179051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur179049_
                                                    __tmp185004
                                                    _vars179052_
                                                    _depth179053_))))
                                            (begin
                                              (let ((_g185003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g185002_)
                                                           (##vector-length
                                                            _g185002_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g185003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g185003_)))
                                              (let ((_e179137_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185002_
                                                        0)))
                                                    (_vars179138_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185002_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e179137_))
                                                        _vars179138_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e179051_))
                                              (values (let ((__tmp185001
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e179051_))))
                (declare (not safe))
                (cons 'datum __tmp185001))
              _vars179052_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx178968_
                                                 _e179051_))))))))))))
          (let* ((_e178978178991_ _stx178968_)
                 (_E178980178995_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e178978178991_))))
                 (_E178979179042_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e178978178991_))
                        (let ((_e178981178999_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e178978178991_))))
                          (let ((_hd178982179002_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e178981178999_)))
                                (_tl178983179004_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e178981178999_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl178983179004_))
                                (let ((_e178984179007_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl178983179004_))))
                                  (let ((_hd178985179010_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e178984179007_)))
                                        (_tl178986179012_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e178984179007_))))
                                    (let ((_expr179015_ _hd178985179010_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl178986179012_))
                                          (let ((_e178987179017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl178986179012_))))
                                            (let ((_hd178988179020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e178987179017_)))
                                                  (_tl178989179022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e178987179017_))))
                                              (let* ((_ids179025_
                                                      _hd178988179020_)
                                                     (_clauses179027_
                                                      _tl178989179022_))
                                                (if '#t
                                                    (if (let ((__tmp185034
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids179025_))))
                  (declare (not safe))
                  (not __tmp185034))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx178968_
                   _ids179025_))
                (if (let ((__tmp185033
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses179027_))))
                      (declare (not safe))
                      (not __tmp185033))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx178968_))
                    (let* ((_ids179029_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids179025_)))
                           (_clauses179031_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses179027_)))
                           (_clause-ids179033_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses179031_)))
                           (_E179035_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target179037_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first179039_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses179031_))
                                _E179035_
                                (car _clause-ids179033_))))
                      (let ((__tmp185018
                             (let ((__tmp185019
                                    (let ((__tmp185021
                                           (let ((__tmp185026
                                                  (let ((__tmp185027
                                                         (let ((__tmp185032
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E179035_ '())))
                       (__tmp185028
                        (let ((__tmp185029
                               (let ((__tmp185031
                                      (let ()
                                        (declare (not safe))
                                        (cons _target179037_ '())))
                                     (__tmp185030
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target179037_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp185031
                                  __tmp185030))))
                          (declare (not safe))
                          (cons __tmp185029 '()))))
                   (declare (not safe))
                   (cons __tmp185032 __tmp185028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185027 '())))
                                                 (__tmp185022
                                                  (let ((__tmp185025
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings178973_
                                                            _target179037_
                                                            _ids179029_
                                                            _clauses179031_
                                                            _clause-ids179033_
                                                            _E179035_)))
                                                        (__tmp185023
                                                         (let ((__tmp185024
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr179015_ '()))))
                   (declare (not safe))
                   (cons _first179039_ __tmp185024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body178974_
                                                     __tmp185025
                                                     __tmp185023))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp185026
                                              __tmp185022)))
                                          (__tmp185020
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx178968_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp185021
                                       __tmp185020))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp185019)))
                            (__tmp185017
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx178968_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp185018 __tmp185017)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178980178995_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178980178995_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E178980178995_)))))
                        (let () (declare (not safe)) (_E178980178995_))))))
            (let () (declare (not safe)) (_E178979179042_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx179678_)
        (let* ((_identifier=?179680_ 'free-identifier=?)
               (_unwrap-e179682_ 'syntax-e)
               (_wrap-e179684_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179678_
           _identifier=?179680_
           _unwrap-e179682_
           _wrap-e179684_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx179686_ _identifier=?179687_)
        (let* ((_unwrap-e179689_ 'syntax-e) (_wrap-e179691_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179686_
           _identifier=?179687_
           _unwrap-e179689_
           _wrap-e179691_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx179693_ _identifier=?179694_ _unwrap-e179695_)
        (let ((_wrap-e179697_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179693_
           _identifier=?179694_
           _unwrap-e179695_
           _wrap-e179697_))))
    (define gx#macro-expand-syntax-case
      (lambda _g185036_
        (let ((_g185035_ (let () (declare (not safe)) (##length _g185036_))))
          (cond ((let () (declare (not safe)) (##fx= _g185035_ 1))
                 (apply (lambda (_stx179678_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx179678_)))
                        _g185036_))
                ((let () (declare (not safe)) (##fx= _g185035_ 2))
                 (apply (lambda (_stx179686_ _identifier=?179687_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx179686_
                             _identifier=?179687_)))
                        _g185036_))
                ((let () (declare (not safe)) (##fx= _g185035_ 3))
                 (apply (lambda (_stx179693_
                                 _identifier=?179694_
                                 _unwrap-e179695_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx179693_
                             _identifier=?179694_
                             _unwrap-e179695_)))
                        _g185036_))
                ((let () (declare (not safe)) (##fx= _g185035_ 4))
                 (apply (lambda (_stx179699_
                                 _identifier=?179700_
                                 _unwrap-e179701_
                                 _wrap-e179702_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx179699_
                             _identifier=?179700_
                             _unwrap-e179701_
                             _wrap-e179702_)))
                        _g185036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g185036_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx178965_)
        (if (let () (declare (not safe)) (gx#identifier? _stx178965_))
            (let ((__tmp185037
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx178965_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp185037 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd178923_ . _rest178924_)
        (let ((_len178926_ (length _hd178923_)))
          (let _lp178928_ ((_rest178930_ _rest178924_))
            (let* ((_rest178931178939_ _rest178930_)
                   (_else178933178947_ (lambda () '#!void))
                   (_K178935178953_
                    (lambda (_rest178950_ _hd178951_)
                      (if (fx= _len178926_ (length _hd178951_))
                          (let ()
                            (declare (not safe))
                            (_lp178928_ _rest178950_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd178951_))))))
              (if (let () (declare (not safe)) (##pair? _rest178931178939_))
                  (let ((_hd178936178956_
                         (let ()
                           (declare (not safe))
                           (##car _rest178931178939_)))
                        (_tl178937178958_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest178931178939_))))
                    (let* ((_hd178961_ _hd178936178956_)
                           (_rest178963_ _tl178937178958_))
                      (declare (not safe))
                      (_K178935178953_ _rest178963_ _hd178961_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx178881_ _n178882_)
        (let _lp178884_ ((_rest178886_ _stx178881_) (_r178887_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest178886_))
              (let* ((_g178888178895_
                      (let () (declare (not safe)) (gx#syntax-e _rest178886_)))
                     (_E178890178899_
                      (lambda ()
                        (error '"No clause matching" _g178888178895_)))
                     (_K178891178905_
                      (lambda (_rest178902_ _hd178903_)
                        (let ((__tmp185042
                               (let ()
                                 (declare (not safe))
                                 (cons _hd178903_ _r178887_))))
                          (declare (not safe))
                          (_lp178884_ _rest178902_ __tmp185042)))))
                (if (let () (declare (not safe)) (##pair? _g178888178895_))
                    (let ((_hd178892178908_
                           (let ()
                             (declare (not safe))
                             (##car _g178888178895_)))
                          (_tl178893178910_
                           (let ()
                             (declare (not safe))
                             (##cdr _g178888178895_))))
                      (let* ((_hd178913_ _hd178892178908_)
                             (_rest178915_ _tl178893178910_))
                        (declare (not safe))
                        (_K178891178905_ _rest178915_ _hd178913_)))
                    (let () (declare (not safe)) (_E178890178899_))))
              (let _lp178917_ ((_n178919_ _n178882_)
                               (_l178920_ _r178887_)
                               (_r178921_ _rest178886_))
                (if (let () (declare (not safe)) (null? _l178920_))
                    (values _l178920_ _r178921_)
                    (if (fxpositive? _n178919_)
                        (let ((__tmp185041
                               (let ()
                                 (declare (not safe))
                                 (fx- _n178919_ '1)))
                              (__tmp185040 (cdr _l178920_))
                              (__tmp185038
                               (let ((__tmp185039 (car _l178920_)))
                                 (declare (not safe))
                                 (cons __tmp185039 _r178921_))))
                          (declare (not safe))
                          (_lp178917_ __tmp185041 __tmp185040 __tmp185038))
                        (values (reverse _l178920_) _r178921_))))))))))
