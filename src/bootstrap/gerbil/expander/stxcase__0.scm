(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707674932)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp184790 (list gx#expander::t))
            (__tmp184788
             (let ((__tmp184789
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp184789 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp184790
         '(id depth)
         __tmp184788
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args180217_
        (apply make-instance gx#syntax-pattern::t _$args180217_)))
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
      (lambda (_self180214_ _stx180215_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx180215_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx179696_)
        (letrec ((_generate179698_
                  (lambda (_e179925_)
                    (letrec ((_BUG179927_
                              (lambda (_q180089_)
                                (error '"BUG: syntax; generate"
                                       _stx179696_
                                       _e179925_
                                       _q180089_)))
                             (_local-pattern-e179928_
                              (lambda (_pat180087_)
                                (let ((__tmp184791
                                       (##structure-ref
                                        _pat180087_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp184791))))
                             (_getvar179929_
                              (lambda (_q180084_ _vars180085_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q180084_
                                           _vars180085_
                                           _BUG179927_))))
                             (_getarg179930_
                              (lambda (_arg180050_ _vars180051_)
                                (let* ((_arg180052180059_ _arg180050_)
                                       (_E180054180063_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg180052180059_)))
                                       (_K180055180072_
                                        (lambda (_e180066_ _tag180067_)
                                          (let ((_$e180069_ _tag180067_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e180069_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar179929_
                                                   _e180066_
                                                   _vars180051_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e180069_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e179928_
                                                       _e180066_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG179927_
                                                       _arg180050_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg180052180059_))
                                      (let ((_hd180056180075_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg180052180059_)))
                                            (_tl180057180077_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg180052180059_))))
                                        (let* ((_tag180080_ _hd180056180075_)
                                               (_e180082_ _tl180057180077_))
                                          (declare (not safe))
                                          (_K180055180072_
                                           _e180082_
                                           _tag180080_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180054180063_)))))))
                      (let _recur179932_ ((_e179934_ _e179925_)
                                          (_vars179935_ '()))
                        (let* ((_e179936179943_ _e179934_)
                               (_E179938179947_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e179936179943_)))
                               (_K179939180038_
                                (lambda (_body179950_ _tag179951_)
                                  (let ((_$e179953_ _tag179951_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179953_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body179950_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e179953_))
                                            (let ((_id179956_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body179950_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id179956_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks179958_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id179956_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks179958_))
                                                        (let ((__tmp184819
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body179950_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp184819))
                (let ((__tmp184818
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body179950_)))
                      (__tmp184817
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body179950_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp184818
                   __tmp184817
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id179956_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body179950_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG179927_
                                                         _e179934_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e179953_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e179928_
                                                   _body179950_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e179953_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar179929_
                                                       _body179950_
                                                       _vars179935_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e179953_))
                                                        (let ((__tmp184815
                                                               (let ((__tmp184816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body179950_)))
                         (declare (not safe))
                         (_recur179932_ __tmp184816 _vars179935_)))
                      (__tmp184813
                       (let ((__tmp184814 (cdr _body179950_)))
                         (declare (not safe))
                         (_recur179932_ __tmp184814 _vars179935_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp184815 __tmp184813))
                (if (let () (declare (not safe)) (eq? 'vector _$e179953_))
                    (let ((__tmp184812
                           (let ()
                             (declare (not safe))
                             (_recur179932_ _body179950_ _vars179935_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp184812))
                    (if (let () (declare (not safe)) (eq? 'box _$e179953_))
                        (let ((__tmp184811
                               (let ()
                                 (declare (not safe))
                                 (_recur179932_ _body179950_ _vars179935_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp184811))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e179953_))
                            (let* ((_body179959179970_ _body179950_)
                                   (_E179961179974_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body179959179970_)))
                                   (_K179962180012_
                                    (lambda (_args179977_
                                             _iv179978_
                                             _hd179979_
                                             _depth179980_)
                                      (let* ((_targets179986_
                                              (map (lambda (_g179981179983_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg179930_
                                                        _g179981179983_
                                                        _vars179935_)))
                                                   _args179977_))
                                             (_fold-in179988_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args179977_)))
                                             (_fold-out179990_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args179992_
                                              (let ((__tmp184792
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out179990_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp184792
                                                        _fold-in179988_)))
                                             (_lambda-body180009_
                                              (if (fx> _depth179980_ '1)
                                                  (let ((_r-args180000_
                                                         (map (lambda (_arg179994_)
                                                                (let ((__tmp184797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg179994_)))
                          (declare (not safe))
                          (cons 'ref __tmp184797)))
                      _args179977_))
                (_r-vars180001_
                 (let ((__tmp184798
                        (lambda (_arg179996_ _var179997_ _r179998_)
                          (let ((__tmp184799
                                 (let ((__tmp184800 (cdr _arg179996_)))
                                   (declare (not safe))
                                   (cons __tmp184800 _var179997_))))
                            (declare (not safe))
                            (cons __tmp184799 _r179998_)))))
                   (declare (not safe))
                   (foldr2 __tmp184798
                           _vars179935_
                           _args179977_
                           _fold-in179988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp184801
                                                           (let ((__tmp184802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184806
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth179980_ '1)))
                                (__tmp184803
                                 (let ((__tmp184804
                                        (let ((__tmp184805
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out179990_))))
                                          (declare (not safe))
                                          (cons __tmp184805 _r-args180000_))))
                                   (declare (not safe))
                                   (cons _hd179979_ __tmp184804))))
                            (declare (not safe))
                            (cons __tmp184806 __tmp184803))))
                     (declare (not safe))
                     (cons 'splice __tmp184802))))
              (declare (not safe))
              (_recur179932_ __tmp184801 _r-vars180001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars180007_
                                                          (let ((__tmp184793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg180003_ _var180004_ _r180005_)
                           (let ((__tmp184794
                                  (let ((__tmp184795 (cdr _arg180003_)))
                                    (declare (not safe))
                                    (cons __tmp184795 _var180004_))))
                             (declare (not safe))
                             (cons __tmp184794 _r180005_)))))
                    (declare (not safe))
                    (foldr2 __tmp184793
                            _vars179935_
                            _args179977_
                            _fold-in179988_)))
                 (__tmp184796
                  (let ()
                    (declare (not safe))
                    (_recur179932_ _hd179979_ _hd-vars180007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp184796
                                                     _fold-out179990_)))))
                                        (let ((__tmp184810
                                               (if (fx> (length _targets179986_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets179986_))
                                                   '#!void))
                                              (__tmp184807
                                               (let ((__tmp184809
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args179992_
                                                         _lambda-body180009_)))
                                                     (__tmp184808
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur179932_
                                                         _iv179978_
                                                         _vars179935_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp184809
                                                  __tmp184808
                                                  _targets179986_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp184810
                                           __tmp184807))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body179959179970_))
                                  (let ((_hd179963180015_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body179959179970_)))
                                        (_tl179964180017_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body179959179970_))))
                                    (let ((_depth180020_ _hd179963180015_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl179964180017_))
                                          (let ((_hd179965180022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl179964180017_)))
                                                (_tl179966180024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl179964180017_))))
                                            (let ((_hd180027_
                                                   _hd179965180022_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl179966180024_))
                                                  (let ((_hd179967180029_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl179966180024_)))
                                                        (_tl179968180031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl179966180024_))))
                                                    (let* ((_iv180034_
                                                            _hd179967180029_)
                                                           (_args180036_
                                                            _tl179968180031_))
                                                      (declare (not safe))
                                                      (_K179962180012_
                                                       _args180036_
                                                       _iv180034_
                                                       _hd180027_
                                                       _depth180020_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179961179974_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179961179974_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E179961179974_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e179953_))
                                _body179950_
                                (let ()
                                  (declare (not safe))
                                  (_BUG179927_ _e179934_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e179936179943_))
                              (let ((_hd179940180041_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179936179943_)))
                                    (_tl179941180043_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179936179943_))))
                                (let* ((_tag180046_ _hd179940180041_)
                                       (_body180048_ _tl179941180043_))
                                  (declare (not safe))
                                  (_K179939180038_ _body180048_ _tag180046_)))
                              (let ()
                                (declare (not safe))
                                (_E179938179947_))))))))
                 (_parse179699_
                  (lambda (_e179740_)
                    (letrec ((_make-cons179742_
                              (lambda (_hd179917_ _tl179918_)
                                (let ((_g184820_ _hd179917_)
                                      (_g184822_ _tl179918_))
                                  (begin
                                    (let ((_g184821_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184820_)
                                                 (##vector-length _g184820_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184821_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184821_)))
                                    (let ((_g184823_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184822_)
                                                 (##vector-length _g184822_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184823_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184823_)))
                                    (let ((_hd-e179920_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184820_ 0)))
                                          (_hd-vars179921_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184820_ 1))))
                                      (let ((_tl-e179922_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184822_ 0)))
                                            (_tl-vars179923_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184822_ 1))))
                                        (values (let ((__tmp184824
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e179920_
                                                               _tl-e179922_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp184824))
                                                (append _hd-vars179921_
                                                        _tl-vars179923_))))))))
                             (_make-splice179743_
                              (lambda (_where179856_
                                       _depth179857_
                                       _hd179858_
                                       _tl179859_)
                                (let ((_g184825_ _hd179858_)
                                      (_g184827_ _tl179859_))
                                  (begin
                                    (let ((_g184826_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184825_)
                                                 (##vector-length _g184825_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184826_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184826_)))
                                    (let ((_g184828_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184827_)
                                                 (##vector-length _g184827_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184828_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184828_)))
                                    (let ((_hd-e179861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184825_ 0)))
                                          (_hd-vars179862_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184825_ 1))))
                                      (let ((_tl-e179863_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184827_ 0)))
                                            (_tl-vars179864_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184827_ 1))))
                                        (let _lp179866_ ((_rest179868_
                                                          _hd-vars179862_)
                                                         (_targets179869_ '())
                                                         (_vars179870_
                                                          _tl-vars179864_))
                                          (let* ((_rest179871179881_
                                                  _rest179868_)
                                                 (_else179873179889_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets179869_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx179696_
                                                           _where179856_))
                                                        (values (let ((__tmp184829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp184830
                                      (let ((__tmp184831
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e179863_
                                                     _targets179869_))))
                                        (declare (not safe))
                                        (cons _hd-e179861_ __tmp184831))))
                                 (declare (not safe))
                                 (cons _depth179857_ __tmp184830))))
                          (declare (not safe))
                          (cons 'splice __tmp184829))
                        _vars179870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K179875179898_
                                                  (lambda (_rest179892_
                                                           _hd-pat179893_
                                                           _hd-depth*179894_)
                                                    (let ((_hd-depth179896_
                                                           (fx- _hd-depth*179894_
                                                                _depth179857_)))
                                                      (if (fxpositive?
                                                           _hd-depth179896_)
                                                          (let ((__tmp184836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp184837
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat179893_))))
                           (declare (not safe))
                           (cons __tmp184837 _targets179869_)))
                        (__tmp184834
                         (let ((__tmp184835
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth179896_ _hd-pat179893_))))
                           (declare (not safe))
                           (cons __tmp184835 _vars179870_))))
                    (declare (not safe))
                    (_lp179866_ _rest179892_ __tmp184836 __tmp184834))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth179896_))
                      (let ((__tmp184832
                             (let ((__tmp184833
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat179893_))))
                               (declare (not safe))
                               (cons __tmp184833 _targets179869_))))
                        (declare (not safe))
                        (_lp179866_ _rest179892_ __tmp184832 _vars179870_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx179696_
                         _where179856_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest179871179881_))
                                                (let ((_hd179876179901_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest179871179881_)))
                                                      (_tl179877179903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest179871179881_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd179876179901_))
                                                      (let ((_hd179878179906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd179876179901_)))
                    (_tl179879179908_
                     (let () (declare (not safe)) (##cdr _hd179876179901_))))
                (let* ((_hd-depth*179911_ _hd179878179906_)
                       (_hd-pat179913_ _tl179879179908_)
                       (_rest179915_ _tl179877179903_))
                  (declare (not safe))
                  (_K179875179898_
                   _rest179915_
                   _hd-pat179913_
                   _hd-depth*179911_)))
              (let () (declare (not safe)) (_else179873179889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else179873179889_)))))))))))
                             (_recur179744_
                              (lambda (_e179749_ _is-e?179750_)
                                (if (_is-e?179750_ _e179749_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx179696_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e179749_))
                                        (let* ((_pat179752_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e179749_)))
                                               (_depth179754_
                                                (##structure-ref
                                                 _pat179752_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth179754_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat179752_))
                                                      (let ((__tmp184853
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth179754_ _pat179752_))))
                (declare (not safe))
                (cons __tmp184853 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat179752_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e179749_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e179749_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e179749_))
                                                (let* ((_e179756179763_
                                                        _e179749_)
                                                       (_E179758179767_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e179756179763_))))
                                                       (_E179757179846_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e179756179763_))
                      (let ((_e179759179771_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e179756179763_))))
                        (let ((_hd179760179774_
                               (let ()
                                 (declare (not safe))
                                 (##car _e179759179771_)))
                              (_tl179761179776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e179759179771_))))
                          (let* ((_hd179779_ _hd179760179774_)
                                 (_rest179781_ _tl179761179776_))
                            (if '#t
                                (if (_is-e?179750_ _hd179779_)
                                    (let* ((_e179782179789_ _rest179781_)
                                           (_E179784179793_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx179696_
                                                 _e179749_))))
                                           (_E179783179807_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e179782179789_))
                                                  (let ((_e179785179797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e179782179789_))))
                                                    (let ((_hd179786179800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e179785179797_)))
                                                          (_tl179787179802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e179785179797_))))
                                                      (let ((_rest179805_
                                                             _hd179786179800_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl179787179802_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur179744_ _rest179805_ false))
                        (let () (declare (not safe)) (_E179784179793_)))
                    (let () (declare (not safe)) (_E179784179793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179784179793_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E179783179807_)))
                                    (let _lp179811_ ((_rest179813_
                                                      _rest179781_)
                                                     (_depth179814_ '0))
                                      (let* ((_e179815179822_ _rest179813_)
                                             (_E179817179826_
                                              (lambda ()
                                                (if (fxpositive? _depth179814_)
                                                    (let ((__tmp184847
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179744_
                                                              _hd179779_
                                                              _is-e?179750_)))
                                                          (__tmp184846
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179744_
                                                              _rest179813_
                                                              _is-e?179750_))))
                                                      (declare (not safe))
                                                      (_make-splice179743_
                                                       _e179749_
                                                       _depth179814_
                                                       __tmp184847
                                                       __tmp184846))
                                                    (let ((__tmp184845
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179744_
                                                              _hd179779_
                                                              _is-e?179750_)))
                                                          (__tmp184844
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179744_
                                                              _rest179813_
                                                              _is-e?179750_))))
                                                      (declare (not safe))
                                                      (_make-cons179742_
                                                       __tmp184845
                                                       __tmp184844)))))
                                             (_E179816179842_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e179815179822_))
                                                    (let ((_e179818179830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e179815179822_))))
                                                      (let ((_hd179819179833_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e179818179830_)))
                    (_tl179820179835_
                     (let () (declare (not safe)) (##cdr _e179818179830_))))
                (let* ((_rest-hd179838_ _hd179819179833_)
                       (_rest-tl179840_ _tl179820179835_))
                  (if '#t
                      (if (_is-e?179750_ _rest-hd179838_)
                          (let ((__tmp184852
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth179814_ '1))))
                            (declare (not safe))
                            (_lp179811_ _rest-tl179840_ __tmp184852))
                          (if (fxpositive? _depth179814_)
                              (let ((__tmp184851
                                     (let ()
                                       (declare (not safe))
                                       (_recur179744_
                                        _hd179779_
                                        _is-e?179750_)))
                                    (__tmp184850
                                     (let ()
                                       (declare (not safe))
                                       (_recur179744_
                                        _rest179813_
                                        _is-e?179750_))))
                                (declare (not safe))
                                (_make-splice179743_
                                 _e179749_
                                 _depth179814_
                                 __tmp184851
                                 __tmp184850))
                              (let ((__tmp184849
                                     (let ()
                                       (declare (not safe))
                                       (_recur179744_
                                        _hd179779_
                                        _is-e?179750_)))
                                    (__tmp184848
                                     (let ()
                                       (declare (not safe))
                                       (_recur179744_
                                        _rest179813_
                                        _is-e?179750_))))
                                (declare (not safe))
                                (_make-cons179742_ __tmp184849 __tmp184848))))
                      (let () (declare (not safe)) (_E179817179826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179817179826_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E179816179842_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E179758179767_))))))
                      (let () (declare (not safe)) (_E179758179767_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179757179846_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e179749_))
                                                    (let ((_g184841_
                                                           (let ((__tmp184843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e179749_)))))
                     (declare (not safe))
                     (_recur179744_ __tmp184843 _is-e?179750_))))
              (begin
                (let ((_g184842_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g184841_)
                             (##vector-length _g184841_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g184842_ 2)))
                      (error "Context expects 2 values" _g184842_)))
                (let ((_e179850_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184841_ 0)))
                      (_vars179851_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184841_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e179850_))
                          _vars179851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e179749_))
                                                        (let ((_g184838_
                                                               (let ((__tmp184840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e179749_)))))
                         (declare (not safe))
                         (_recur179744_ __tmp184840 _is-e?179750_))))
                  (begin
                    (let ((_g184839_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g184838_)
                                 (##vector-length _g184838_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g184839_ 2)))
                          (error "Context expects 2 values" _g184839_)))
                    (let ((_e179853_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184838_ 0)))
                          (_vars179854_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184838_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e179853_))
                              _vars179854_))))
                (values (let () (declare (not safe)) (cons 'datum _e179749_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g184854_
                             (let ()
                               (declare (not safe))
                               (_recur179744_ _e179740_ gx#ellipsis?))))
                        (begin
                          (let ((_g184855_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g184854_)
                                       (##vector-length _g184854_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g184855_ 2)))
                                (error "Context expects 2 values" _g184855_)))
                          (let ((_tree179746_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184854_ 0)))
                                (_vars179747_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184854_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars179747_))
                                _tree179746_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx179696_
                                   _vars179747_))))))))))
          (let* ((_e179700179710_ _stx179696_)
                 (_E179702179714_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx179696_))))
                 (_E179701179736_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179700179710_))
                        (let ((_e179703179718_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179700179710_))))
                          (let ((_hd179704179721_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179703179718_)))
                                (_tl179705179723_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179703179718_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179705179723_))
                                (let ((_e179706179726_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179705179723_))))
                                  (let ((_hd179707179729_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179706179726_)))
                                        (_tl179708179731_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179706179726_))))
                                    (let ((_form179734_ _hd179707179729_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl179708179731_))
                                          (if '#t
                                              (let ((__tmp184857
                                                     (let ((__tmp184858
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse179699_
                                                               _form179734_))))
                                                       (declare (not safe))
                                                       (_generate179698_
                                                        __tmp184858)))
                                                    (__tmp184856
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx179696_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp184857
                                                 __tmp184856))
                                              (let ()
                                                (declare (not safe))
                                                (_E179702179714_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E179702179714_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179702179714_)))))
                        (let () (declare (not safe)) (_E179702179714_))))))
            (let () (declare (not safe)) (_E179701179736_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx178960_
               _identifier=?178961_
               _unwrap-e178962_
               _wrap-e178963_)
        (letrec ((_generate-bindings178965_
                  (lambda (_target179560_
                           _ids179561_
                           _clauses179562_
                           _clause-ids179563_
                           _E179564_)
                    (letrec ((_generate1179566_
                              (lambda (_clause179663_
                                       _clause-id179664_
                                       _E179665_)
                                (let ((__tmp184863
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id179664_ '())))
                                      (__tmp184859
                                       (let ((__tmp184860
                                              (let ((__tmp184862
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179560_
                                                             '())))
                                                    (__tmp184861
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause178967_
                                                        _target179560_
                                                        _ids179561_
                                                        _clause179663_
                                                        _E179665_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp184862
                                                 __tmp184861))))
                                         (declare (not safe))
                                         (cons __tmp184860 '()))))
                                  (declare (not safe))
                                  (cons __tmp184863 __tmp184859)))))
                      (let _lp179568_ ((_rest179570_ _clauses179562_)
                                       (_rest-ids179571_ _clause-ids179563_)
                                       (_bindings179572_ '()))
                        (let* ((_rest179573179581_ _rest179570_)
                               (_else179575179589_
                                (lambda () _bindings179572_))
                               (_K179577179651_
                                (lambda (_rest179592_ _clause179593_)
                                  (let* ((_rest-ids179594179601_
                                          _rest-ids179571_)
                                         (_E179596179605_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids179594179601_)))
                                         (_K179597179639_
                                          (lambda (_rest-ids179608_
                                                   _clause-id179609_)
                                            (let* ((_rest-ids179610179618_
                                                    _rest-ids179608_)
                                                   (_else179612179626_
                                                    (lambda ()
                                                      (let ((__tmp184864
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1179566_
                        _clause179593_
                        _clause-id179609_
                        _E179564_))))
                (declare (not safe))
                (cons __tmp184864 _bindings179572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K179614179631_
                                                    (lambda (_next-clause-id179629_)
                                                      (let ((__tmp184865
                                                             (let ((__tmp184866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1179566_
                               _clause179593_
                               _clause-id179609_
                               _next-clause-id179629_))))
                       (declare (not safe))
                       (cons __tmp184866 _bindings179572_))))
                (declare (not safe))
                (_lp179568_ _rest179592_ _rest-ids179608_ __tmp184865)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids179610179618_))
                                                  (let* ((_hd179615179634_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids179610179618_)))
                                                         (_next-clause-id179637_
                                                          _hd179615179634_))
                                                    (declare (not safe))
                                                    (_K179614179631_
                                                     _next-clause-id179637_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else179612179626_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids179594179601_))
                                        (let ((_hd179598179642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids179594179601_)))
                                              (_tl179599179644_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids179594179601_))))
                                          (let* ((_clause-id179647_
                                                  _hd179598179642_)
                                                 (_rest-ids179649_
                                                  _tl179599179644_))
                                            (declare (not safe))
                                            (_K179597179639_
                                             _rest-ids179649_
                                             _clause-id179647_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179596179605_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest179573179581_))
                              (let ((_hd179578179654_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest179573179581_)))
                                    (_tl179579179656_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest179573179581_))))
                                (let* ((_clause179659_ _hd179578179654_)
                                       (_rest179661_ _tl179579179656_))
                                  (declare (not safe))
                                  (_K179577179651_
                                   _rest179661_
                                   _clause179659_)))
                              (let ()
                                (declare (not safe))
                                (_else179575179589_))))))))
                 (_generate-body178966_
                  (lambda (_bindings179520_ _body179521_)
                    (let _recur179523_ ((_rest179525_ _bindings179520_))
                      (let* ((_rest179526179534_ _rest179525_)
                             (_else179528179542_ (lambda () _body179521_))
                             (_K179530179548_
                              (lambda (_rest179545_ _hd179546_)
                                (let ((__tmp184868
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd179546_ '())))
                                      (__tmp184867
                                       (let ()
                                         (declare (not safe))
                                         (_recur179523_ _rest179545_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp184868
                                   __tmp184867)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest179526179534_))
                            (let ((_hd179531179551_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest179526179534_)))
                                  (_tl179532179553_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest179526179534_))))
                              (let* ((_hd179556_ _hd179531179551_)
                                     (_rest179558_ _tl179532179553_))
                                (declare (not safe))
                                (_K179530179548_ _rest179558_ _hd179556_)))
                            (let ()
                              (declare (not safe))
                              (_else179528179542_)))))))
                 (_generate-clause178967_
                  (lambda (_target179383_ _ids179384_ _clause179385_ _E179386_)
                    (letrec ((_generate1179388_
                              (lambda (_hd179475_ _fender179476_ _body179477_)
                                (let ((_g184869_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause178969_
                                          _hd179475_
                                          _ids179384_))))
                                  (begin
                                    (let ((_g184870_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184869_)
                                                 (##vector-length _g184869_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184870_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184870_)))
                                    (let ((_e179479_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184869_ 0)))
                                          (_mvars179480_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184869_ 1))))
                                      (let* ((_pvars179482_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars179480_))))
                                             (_E179484_
                                              (let ((__tmp184871
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179383_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E179386_ __tmp184871)))
                                             (_K179517_
                                              (let ((__tmp184872
                                                     (let ((__tmp184874
                                                            (map (lambda (_mvar179486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar179487_)
                           (let* ((_mvar179488179495_ _mvar179486_)
                                  (_E179490179499_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar179488179495_)))
                                  (_K179491179505_
                                   (lambda (_depth179502_ _id179503_)
                                     (let ((__tmp184875
                                            (let ((__tmp184876
                                                   (let ((__tmp184878
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id179503_)))
                                                         (__tmp184877
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar179487_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp184878
                                                      __tmp184877
                                                      _depth179502_))))
                                              (declare (not safe))
                                              (cons __tmp184876 '()))))
                                       (declare (not safe))
                                       (cons _id179503_ __tmp184875)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar179488179495_))
                                 (let ((_hd179492179508_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar179488179495_)))
                                       (_tl179493179510_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar179488179495_))))
                                   (let* ((_id179513_ _hd179492179508_)
                                          (_depth179515_ _tl179493179510_))
                                     (declare (not safe))
                                     (_K179491179505_
                                      _depth179515_
                                      _id179513_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E179490179499_)))))
                         _mvars179480_
                         _pvars179482_))
                   (__tmp184873
                    (if (let () (declare (not safe)) (eq? _fender179476_ '#t))
                        _body179477_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender179476_
                           _body179477_
                           _E179484_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp184874 __tmp184873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars179482_
                                                 __tmp184872))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match178968_
                                           _hd179475_
                                           _target179383_
                                           _e179479_
                                           _mvars179480_
                                           _K179517_
                                           _E179484_)))))))))
                      (let* ((_e179389179409_ _clause179385_)
                             (_E179398179413_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e179389179409_))))
                             (_E179391179447_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179389179409_))
                                    (let ((_e179399179417_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179389179409_))))
                                      (let ((_hd179400179420_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179399179417_)))
                                            (_tl179401179422_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179399179417_))))
                                        (let ((_hd179425_ _hd179400179420_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179401179422_))
                                              (let ((_e179402179427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179401179422_))))
                                                (let ((_hd179403179430_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179402179427_)))
                                                      (_tl179404179432_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179402179427_))))
                                                  (let ((_fender179435_
                                                         _hd179403179430_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl179404179432_))
                                                        (let ((_e179405179437_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl179404179432_))))
                  (let ((_hd179406179440_
                         (let () (declare (not safe)) (##car _e179405179437_)))
                        (_tl179407179442_
                         (let ()
                           (declare (not safe))
                           (##cdr _e179405179437_))))
                    (let ((_body179445_ _hd179406179440_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl179407179442_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1179388_
                                 _hd179425_
                                 _fender179435_
                                 _body179445_))
                              (let () (declare (not safe)) (_E179398179413_)))
                          (let () (declare (not safe)) (_E179398179413_))))))
                (let () (declare (not safe)) (_E179398179413_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E179398179413_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179398179413_)))))
                             (_E179390179471_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179389179409_))
                                    (let ((_e179392179451_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179389179409_))))
                                      (let ((_hd179393179454_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179392179451_)))
                                            (_tl179394179456_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179392179451_))))
                                        (let ((_hd179459_ _hd179393179454_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179394179456_))
                                              (let ((_e179395179461_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179394179456_))))
                                                (let ((_hd179396179464_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179395179461_)))
                                                      (_tl179397179466_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179395179461_))))
                                                  (let ((_body179469_
                                                         _hd179396179464_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl179397179466_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1179388_
                                                               _hd179459_
                                                               '#t
                                                               _body179469_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E179391179447_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E179391179447_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E179391179447_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179391179447_))))))
                        (let () (declare (not safe)) (_E179390179471_))))))
                 (_generate-match178968_
                  (lambda (_where179132_
                           _target179133_
                           _hd179134_
                           _mvars179135_
                           _K179136_
                           _E179137_)
                    (letrec ((_BUG179139_
                              (lambda (_q179381_)
                                (error '"BUG: syntax-case; generate"
                                       _stx178960_
                                       _hd179134_
                                       _q179381_)))
                             (_recur179140_
                              (lambda (_e179231_
                                       _vars179232_
                                       _target179233_
                                       _E179234_
                                       _k179235_)
                                (let* ((_e179236179243_ _e179231_)
                                       (_E179238179247_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e179236179243_)))
                                       (_K179239179369_
                                        (lambda (_body179250_ _tag179251_)
                                          (let ((_$e179253_ _tag179251_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e179253_))
                                                (_k179235_ _vars179232_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e179253_))
                                                    (let ((__tmp184985
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target179233_)))
                                                          (__tmp184981
                                                           (let ((__tmp184983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184984
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e178963_
                                    _body179250_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?178961_
                             __tmp184984
                             _target179233_)))
                         (__tmp184982 (_k179235_ _vars179232_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp184983 __tmp184982 _E179234_))))
              (declare (not safe))
              (gx#core-list 'if __tmp184985 __tmp184981 _E179234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e179253_))
                                                        (_k179235_
                                                         (let ((__tmp184980
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body179250_ _target179233_))))
                   (declare (not safe))
                   (cons __tmp184980 _vars179232_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e179253_))
                    (let ((_$e179256_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd179257_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl179258_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp184979
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target179233_)))
                            (__tmp184960
                             (let ((__tmp184974
                                    (let ((__tmp184975
                                           (let ((__tmp184978
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e179256_ '())))
                                                 (__tmp184976
                                                  (let ((__tmp184977
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e178962_
                                                            _target179233_))))
                                                    (declare (not safe))
                                                    (cons __tmp184977 '()))))
                                             (declare (not safe))
                                             (cons __tmp184978 __tmp184976))))
                                      (declare (not safe))
                                      (cons __tmp184975 '())))
                                   (__tmp184961
                                    (let ((__tmp184964
                                           (let ((__tmp184970
                                                  (let ((__tmp184973
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd179257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp184971
                 (let ((__tmp184972
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e179256_))))
                   (declare (not safe))
                   (cons __tmp184972 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184973
                                                          __tmp184971)))
                                                 (__tmp184965
                                                  (let ((__tmp184966
                                                         (let ((__tmp184969
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl179258_ '())))
                       (__tmp184967
                        (let ((__tmp184968
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e179256_))))
                          (declare (not safe))
                          (cons __tmp184968 '()))))
                   (declare (not safe))
                   (cons __tmp184969 __tmp184967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184966 '()))))
                                             (declare (not safe))
                                             (cons __tmp184970 __tmp184965)))
                                          (__tmp184962
                                           (let* ((_body179259179266_
                                                   _body179250_)
                                                  (_E179261179270_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body179259179266_)))
                                                  (_K179262179278_
                                                   (lambda (_tl179273_
                                                            _hd179274_)
                                                     (let ((__tmp184963
                                                            (lambda (_vars179276_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur179140_
                         _tl179273_
                         _vars179276_
                         _$tl179258_
                         _E179234_
                         _k179235_)))))
               (declare (not safe))
               (_recur179140_
                _hd179274_
                _vars179232_
                _$hd179257_
                _E179234_
                __tmp184963)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body179259179266_))
                                                 (let ((_hd179263179281_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body179259179266_)))
                                                       (_tl179264179283_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body179259179266_))))
                                                   (let* ((_hd179286_
                                                           _hd179263179281_)
                                                          (_tl179288_
                                                           _tl179264179283_))
                                                     (declare (not safe))
                                                     (_K179262179278_
                                                      _tl179288_
                                                      _hd179286_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E179261179270_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp184964
                                       __tmp184962))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp184974
                                __tmp184961))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp184979 __tmp184960 _E179234_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e179253_))
                        (let* ((_body179289179296_ _body179250_)
                               (_E179291179300_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body179289179296_)))
                               (_K179292179351_
                                (lambda (_tl179303_ _hd179304_)
                                  (let* ((_rlen179306_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen179141_ _tl179303_)))
                                         (_$target179308_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd179310_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl179312_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp179314_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e179316_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd179318_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl179320_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars179322_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars179142_ _hd179304_)))
                                         (_lvars179324_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179322_)))
                                         (_tlvars179326_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179322_)))
                                         (_linit179330_
                                          (map (lambda (_var179328_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars179324_)))
                                    (letrec ((_make-loop179333_
                                              (lambda (_vars179337_)
                                                (let ((__tmp184911
                                                       (let ((__tmp184912
                                                              (let ((__tmp184948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp179314_ '())))
                            (__tmp184913
                             (let ((__tmp184914
                                    (let ((__tmp184947
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd179310_ _lvars179324_)))
                                          (__tmp184915
                                           (let ((__tmp184946
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd179310_)))
                                                 (__tmp184924
                                                  (let ((__tmp184941
                                                         (let ((__tmp184942
                                                                (let ((__tmp184945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e179316_ '())))
                              (__tmp184943
                               (let ((__tmp184944
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e178962_
                                         _$hd179310_))))
                                 (declare (not safe))
                                 (cons __tmp184944 '()))))
                          (declare (not safe))
                          (cons __tmp184945 __tmp184943))))
                   (declare (not safe))
                   (cons __tmp184942 '())))
                (__tmp184925
                 (let ((__tmp184931
                        (let ((__tmp184937
                               (let ((__tmp184940
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd179318_ '())))
                                     (__tmp184938
                                      (let ((__tmp184939
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e179316_))))
                                        (declare (not safe))
                                        (cons __tmp184939 '()))))
                                 (declare (not safe))
                                 (cons __tmp184940 __tmp184938)))
                              (__tmp184932
                               (let ((__tmp184933
                                      (let ((__tmp184936
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl179320_ '())))
                                            (__tmp184934
                                             (let ((__tmp184935
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e179316_))))
                                               (declare (not safe))
                                               (cons __tmp184935 '()))))
                                        (declare (not safe))
                                        (cons __tmp184936 __tmp184934))))
                                 (declare (not safe))
                                 (cons __tmp184933 '()))))
                          (declare (not safe))
                          (cons __tmp184937 __tmp184932)))
                       (__tmp184926
                        (let ((__tmp184927
                               (lambda (_hdvars179339_)
                                 (let ((__tmp184928
                                        (let ((__tmp184929
                                               (map (lambda (_svar179341_
                                                             _lvar179342_)
                                                      (let ((__tmp184930
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar179341_ _hdvars179339_ _BUG179139_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp184930 _lvar179342_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars179322_
                                                    _lvars179324_)))
                                          (declare (not safe))
                                          (cons _$lp-tl179320_ __tmp184929))))
                                   (declare (not safe))
                                   (cons _$lp179314_ __tmp184928)))))
                          (declare (not safe))
                          (_recur179140_
                           _hd179304_
                           '()
                           _$lp-hd179318_
                           _E179234_
                           __tmp184927))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp184931 __tmp184926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184941
                                                     __tmp184925)))
                                                 (__tmp184916
                                                  (let ((__tmp184920
                                                         (map (lambda (_lvar179344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar179345_)
                        (let ((__tmp184923
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar179345_ '())))
                              (__tmp184921
                               (let ((__tmp184922
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar179344_))))
                                 (declare (not safe))
                                 (cons __tmp184922 '()))))
                          (declare (not safe))
                          (cons __tmp184923 __tmp184921)))
                      _lvars179324_
                      _tlvars179326_))
                (__tmp184917
                 (_k179235_
                  (let ((__tmp184918
                         (lambda (_svar179347_ _tlvar179348_ _r179349_)
                           (let ((__tmp184919
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar179347_ _tlvar179348_))))
                             (declare (not safe))
                             (cons __tmp184919 _r179349_)))))
                    (declare (not safe))
                    (foldl2 __tmp184918
                            _vars179337_
                            _svars179322_
                            _tlvars179326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184920
                                                     __tmp184917))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp184946
                                              __tmp184924
                                              __tmp184916))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp184947
                                       __tmp184915))))
                               (declare (not safe))
                               (cons __tmp184914 '()))))
                        (declare (not safe))
                        (cons __tmp184948 __tmp184913))))
                 (declare (not safe))
                 (cons __tmp184912 '())))
              (__tmp184909
               (let ((__tmp184910
                      (let ()
                        (declare (not safe))
                        (cons _$target179308_ _linit179330_))))
                 (declare (not safe))
                 (cons _$lp179314_ __tmp184910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp184911
                                                   __tmp184909)))))
                                      (let ((_body179335_
                                             (let ((__tmp184950
                                                    (let ((__tmp184951
                                                           (let ((__tmp184954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184955
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl179312_ '()))))
                            (declare (not safe))
                            (cons _$target179308_ __tmp184955)))
                         (__tmp184952
                          (let ((__tmp184953
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target179233_
                                    _rlen179306_))))
                            (declare (not safe))
                            (cons __tmp184953 '()))))
                     (declare (not safe))
                     (cons __tmp184954 __tmp184952))))
              (declare (not safe))
              (cons __tmp184951 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184949
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179140_
                                                       _tl179303_
                                                       _vars179232_
                                                       _$tl179312_
                                                       _E179234_
                                                       _make-loop179333_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184950
                                                __tmp184949))))
                                        (let ((__tmp184959
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target179233_)))
                                              (__tmp184956
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen179306_))
                                                   _body179335_
                                                   (let ((__tmp184957
                                                          (let ((__tmp184958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target179233_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp184958 _rlen179306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp184957
                                                      _body179335_
                                                      _E179234_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp184959
                                           __tmp184956
                                           _E179234_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body179289179296_))
                              (let ((_hd179293179354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body179289179296_)))
                                    (_tl179294179356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body179289179296_))))
                                (let* ((_hd179359_ _hd179293179354_)
                                       (_tl179361_ _tl179294179356_))
                                  (declare (not safe))
                                  (_K179292179351_ _tl179361_ _hd179359_)))
                              (let () (declare (not safe)) (_E179291179300_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e179253_))
                            (let ((__tmp184908
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target179233_)))
                                  (__tmp184907 (_k179235_ _vars179232_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp184908
                               __tmp184907
                               _E179234_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e179253_))
                                (let ((_$e179363_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp184906
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target179233_)))
                                        (__tmp184898
                                         (let ((__tmp184900
                                                (let ((__tmp184901
                                                       (let ((__tmp184905
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e179363_ '())))
                     (__tmp184902
                      (let ((__tmp184903
                             (let ((__tmp184904
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e178962_
                                       _target179233_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp184904))))
                        (declare (not safe))
                        (cons __tmp184903 '()))))
                 (declare (not safe))
                 (cons __tmp184905 __tmp184902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp184901 '())))
                                               (__tmp184899
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur179140_
                                                   _body179250_
                                                   _vars179232_
                                                   _$e179363_
                                                   _E179234_
                                                   _k179235_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp184900
                                            __tmp184899))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp184906
                                     __tmp184898
                                     _E179234_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e179253_))
                                    (let ((_$e179365_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp184897
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target179233_)))
                                            (__tmp184889
                                             (let ((__tmp184891
                                                    (let ((__tmp184892
                                                           (let ((__tmp184896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e179365_ '())))
                         (__tmp184893
                          (let ((__tmp184894
                                 (let ((__tmp184895
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e178962_
                                           _target179233_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp184895))))
                            (declare (not safe))
                            (cons __tmp184894 '()))))
                     (declare (not safe))
                     (cons __tmp184896 __tmp184893))))
              (declare (not safe))
              (cons __tmp184892 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184890
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179140_
                                                       _body179250_
                                                       _vars179232_
                                                       _$e179365_
                                                       _E179234_
                                                       _k179235_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184891
                                                __tmp184890))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp184897
                                         __tmp184889
                                         _E179234_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179253_))
                                        (let ((_$e179367_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp184888
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target179233_)))
                                                (__tmp184879
                                                 (let ((__tmp184883
                                                        (let ((__tmp184884
                                                               (let ((__tmp184887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e179367_ '())))
                             (__tmp184885
                              (let ((__tmp184886
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target179233_))))
                                (declare (not safe))
                                (cons __tmp184886 '()))))
                         (declare (not safe))
                         (cons __tmp184887 __tmp184885))))
                  (declare (not safe))
                  (cons __tmp184884 '())))
               (__tmp184880
                (let ((__tmp184882
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e179367_ _body179250_)))
                      (__tmp184881 (_k179235_ _vars179232_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp184882 __tmp184881 _E179234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp184883
                                                    __tmp184880))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp184888
                                             __tmp184879
                                             _E179234_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG179139_ _e179231_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e179236179243_))
                                      (let ((_hd179240179372_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179236179243_)))
                                            (_tl179241179374_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179236179243_))))
                                        (let* ((_tag179377_ _hd179240179372_)
                                               (_body179379_ _tl179241179374_))
                                          (declare (not safe))
                                          (_K179239179369_
                                           _body179379_
                                           _tag179377_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179238179247_))))))
                             (_splice-rlen179141_
                              (lambda (_e179193_)
                                (let _lp179195_ ((_e179197_ _e179193_)
                                                 (_n179198_ '0))
                                  (let* ((_e179199179206_ _e179197_)
                                         (_E179201179210_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179199179206_)))
                                         (_K179202179219_
                                          (lambda (_body179213_ _tag179214_)
                                            (let ((_$e179216_ _tag179214_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e179216_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx178960_
                                                     _where179132_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e179216_))
                                                      (let ((__tmp184987
                                                             (cdr _body179213_))
                                                            (__tmp184986
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n179198_ '1))))
                (declare (not safe))
                (_lp179195_ __tmp184987 __tmp184986))
              _n179198_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179199179206_))
                                        (let ((_hd179203179222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179199179206_)))
                                              (_tl179204179224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179199179206_))))
                                          (let* ((_tag179227_ _hd179203179222_)
                                                 (_body179229_
                                                  _tl179204179224_))
                                            (declare (not safe))
                                            (_K179202179219_
                                             _body179229_
                                             _tag179227_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179201179210_)))))))
                             (_splice-vars179142_
                              (lambda (_e179149_)
                                (let _recur179151_ ((_e179153_ _e179149_)
                                                    (_vars179154_ '()))
                                  (let* ((_e179155179162_ _e179153_)
                                         (_E179157179166_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179155179162_)))
                                         (_K179158179181_
                                          (lambda (_body179169_ _tag179170_)
                                            (let ((_$e179172_ _tag179170_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e179172_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body179169_
                                                          _vars179154_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e179172_))
                  (let () (declare (not safe)) (eq? 'splice _$e179172_)))
              (let ((__tmp184990 (cdr _body179169_))
                    (__tmp184988
                     (let ((__tmp184989 (car _body179169_)))
                       (declare (not safe))
                       (_recur179151_ __tmp184989 _vars179154_))))
                (declare (not safe))
                (_recur179151_ __tmp184990 __tmp184988))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e179172_))
                      (let () (declare (not safe)) (eq? 'box _$e179172_)))
                  (let ()
                    (declare (not safe))
                    (_recur179151_ _body179169_ _vars179154_))
                  _vars179154_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179155179162_))
                                        (let ((_hd179159179184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179155179162_)))
                                              (_tl179160179186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179155179162_))))
                                          (let* ((_tag179189_ _hd179159179184_)
                                                 (_body179191_
                                                  _tl179160179186_))
                                            (declare (not safe))
                                            (_K179158179181_
                                             _body179191_
                                             _tag179189_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179157179166_)))))))
                             (_make-body179143_
                              (lambda (_vars179145_)
                                (let ((__tmp184991
                                       (map (lambda (_mvar179147_)
                                              (let ((__tmp184992
                                                     (car _mvar179147_)))
                                                (declare (not safe))
                                                (assgetq __tmp184992
                                                         _vars179145_
                                                         _BUG179139_)))
                                            _mvars179135_)))
                                  (declare (not safe))
                                  (cons _K179136_ __tmp184991)))))
                      (let ()
                        (declare (not safe))
                        (_recur179140_
                         _hd179134_
                         '()
                         _target179133_
                         _E179137_
                         _make-body179143_)))))
                 (_parse-clause178969_
                  (lambda (_hd179038_ _ids179039_)
                    (let _recur179041_ ((_e179043_ _hd179038_)
                                        (_vars179044_ '())
                                        (_depth179045_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e179043_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e179043_))
                              (values '(any) _vars179044_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e179043_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx178960_
                                     _hd179038_))
                                  (if (let ((__tmp185008
                                             (lambda (_id179047_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e179043_
                                                  _id179047_)))))
                                        (declare (not safe))
                                        (find __tmp185008 _ids179039_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e179043_))
                                              _vars179044_)
                                      (if (let ((__tmp185006
                                                 (lambda (_var179049_)
                                                   (let ((__tmp185007
                                                          (car _var179049_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e179043_
                                                      __tmp185007)))))
                                            (declare (not safe))
                                            (find __tmp185006 _vars179044_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx178960_
                                             _e179043_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e179043_))
                                                  (let ((__tmp185005
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e179043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth179045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185005
                                                          _vars179044_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e179043_))
                              (let* ((_e179050179057_ _e179043_)
                                     (_E179052179061_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e179050179057_))))
                                     (_E179051179122_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e179050179057_))
                                            (let ((_e179053179065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e179050179057_))))
                                              (let ((_hd179054179068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e179053179065_)))
                                                    (_tl179055179070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e179053179065_))))
                                                (let* ((_hd179073_
                                                        _hd179054179068_)
                                                       (_rest179075_
                                                        _tl179055179070_))
                                                  (if '#t
                                                      (let* ((_make-pair179090_
                                                              (lambda (_tag179077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd179078_
                               _tl179079_)
                        (let* ((_hd-depth179081_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag179077_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth179045_ '1))
                                    _depth179045_))
                               (_g185000_
                                (let ()
                                  (declare (not safe))
                                  (_recur179041_
                                   _hd179078_
                                   _vars179044_
                                   _hd-depth179081_))))
                          (begin
                            (let ((_g185001_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185000_)
                                         (##vector-length _g185000_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185001_ 2)))
                                  (error "Context expects 2 values"
                                         _g185001_)))
                            (let ((_hd179083_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185000_ 0)))
                                  (_vars179084_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185000_ 1))))
                              (let ((_g185002_
                                     (let ()
                                       (declare (not safe))
                                       (_recur179041_
                                        _tl179079_
                                        _vars179084_
                                        _depth179045_))))
                                (begin
                                  (let ((_g185003_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g185002_)
                                               (##vector-length _g185002_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g185003_ 2)))
                                        (error "Context expects 2 values"
                                               _g185003_)))
                                  (let ((_tl179086_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185002_ 0)))
                                        (_vars179087_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185002_ 1))))
                                    (let ()
                                      (values (let ((__tmp185004
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd179083_
                                                             _tl179086_))))
                                                (declare (not safe))
                                                (cons _tag179077_ __tmp185004))
                                              _vars179087_))))))))))
                     (_e179091179098_ _rest179075_)
                     (_E179093179102_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair179090_ 'cons _hd179073_ _rest179075_))))
                     (_E179092179118_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e179091179098_))
                            (let ((_e179094179106_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e179091179098_))))
                              (let ((_hd179095179109_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179094179106_)))
                                    (_tl179096179111_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179094179106_))))
                                (let* ((_rest-hd179114_ _hd179095179109_)
                                       (_rest-tl179116_ _tl179096179111_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd179114_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179090_
                                             'splice
                                             _hd179073_
                                             _rest-tl179116_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179090_
                                             'cons
                                             _hd179073_
                                             _rest179075_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179093179102_))))))
                            (let () (declare (not safe)) (_E179093179102_))))))
                (let () (declare (not safe)) (_E179092179118_)))
              (let () (declare (not safe)) (_E179052179061_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E179052179061_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179051179122_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e179043_))
                                  (values '(null) _vars179044_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e179043_))
                                      (let ((_g184997_
                                             (let ((__tmp184999
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e179043_)))))
                                               (declare (not safe))
                                               (_recur179041_
                                                __tmp184999
                                                _vars179044_
                                                _depth179045_))))
                                        (begin
                                          (let ((_g184998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g184997_)
                                                       (##vector-length
                                                        _g184997_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g184998_ 2)))
                                                (error "Context expects 2 values"
                                                       _g184998_)))
                                          (let ((_e179126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g184997_ 0)))
                                                (_vars179127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g184997_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e179126_))
                                                    _vars179127_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e179043_))
                                          (let ((_g184994_
                                                 (let ((__tmp184996
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e179043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur179041_
                                                    __tmp184996
                                                    _vars179044_
                                                    _depth179045_))))
                                            (begin
                                              (let ((_g184995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g184994_)
                                                           (##vector-length
                                                            _g184994_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g184995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g184995_)))
                                              (let ((_e179129_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g184994_
                                                        0)))
                                                    (_vars179130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g184994_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e179129_))
                                                        _vars179130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e179043_))
                                              (values (let ((__tmp184993
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e179043_))))
                (declare (not safe))
                (cons 'datum __tmp184993))
              _vars179044_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx178960_
                                                 _e179043_))))))))))))
          (let* ((_e178970178983_ _stx178960_)
                 (_E178972178987_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e178970178983_))))
                 (_E178971179034_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e178970178983_))
                        (let ((_e178973178991_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e178970178983_))))
                          (let ((_hd178974178994_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e178973178991_)))
                                (_tl178975178996_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e178973178991_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl178975178996_))
                                (let ((_e178976178999_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl178975178996_))))
                                  (let ((_hd178977179002_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e178976178999_)))
                                        (_tl178978179004_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e178976178999_))))
                                    (let ((_expr179007_ _hd178977179002_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl178978179004_))
                                          (let ((_e178979179009_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl178978179004_))))
                                            (let ((_hd178980179012_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e178979179009_)))
                                                  (_tl178981179014_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e178979179009_))))
                                              (let* ((_ids179017_
                                                      _hd178980179012_)
                                                     (_clauses179019_
                                                      _tl178981179014_))
                                                (if '#t
                                                    (if (let ((__tmp185026
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids179017_))))
                  (declare (not safe))
                  (not __tmp185026))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx178960_
                   _ids179017_))
                (if (let ((__tmp185025
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses179019_))))
                      (declare (not safe))
                      (not __tmp185025))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx178960_))
                    (let* ((_ids179021_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids179017_)))
                           (_clauses179023_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses179019_)))
                           (_clause-ids179025_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses179023_)))
                           (_E179027_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target179029_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first179031_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses179023_))
                                _E179027_
                                (car _clause-ids179025_))))
                      (let ((__tmp185010
                             (let ((__tmp185011
                                    (let ((__tmp185013
                                           (let ((__tmp185018
                                                  (let ((__tmp185019
                                                         (let ((__tmp185024
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E179027_ '())))
                       (__tmp185020
                        (let ((__tmp185021
                               (let ((__tmp185023
                                      (let ()
                                        (declare (not safe))
                                        (cons _target179029_ '())))
                                     (__tmp185022
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target179029_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp185023
                                  __tmp185022))))
                          (declare (not safe))
                          (cons __tmp185021 '()))))
                   (declare (not safe))
                   (cons __tmp185024 __tmp185020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185019 '())))
                                                 (__tmp185014
                                                  (let ((__tmp185017
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings178965_
                                                            _target179029_
                                                            _ids179021_
                                                            _clauses179023_
                                                            _clause-ids179025_
                                                            _E179027_)))
                                                        (__tmp185015
                                                         (let ((__tmp185016
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr179007_ '()))))
                   (declare (not safe))
                   (cons _first179031_ __tmp185016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body178966_
                                                     __tmp185017
                                                     __tmp185015))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp185018
                                              __tmp185014)))
                                          (__tmp185012
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx178960_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp185013
                                       __tmp185012))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp185011)))
                            (__tmp185009
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx178960_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp185010 __tmp185009)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178972178987_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178972178987_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E178972178987_)))))
                        (let () (declare (not safe)) (_E178972178987_))))))
            (let () (declare (not safe)) (_E178971179034_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx179670_)
        (let* ((_identifier=?179672_ 'free-identifier=?)
               (_unwrap-e179674_ 'syntax-e)
               (_wrap-e179676_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179670_
           _identifier=?179672_
           _unwrap-e179674_
           _wrap-e179676_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx179678_ _identifier=?179679_)
        (let* ((_unwrap-e179681_ 'syntax-e) (_wrap-e179683_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179678_
           _identifier=?179679_
           _unwrap-e179681_
           _wrap-e179683_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx179685_ _identifier=?179686_ _unwrap-e179687_)
        (let ((_wrap-e179689_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179685_
           _identifier=?179686_
           _unwrap-e179687_
           _wrap-e179689_))))
    (define gx#macro-expand-syntax-case
      (lambda _g185028_
        (let ((_g185027_ (let () (declare (not safe)) (##length _g185028_))))
          (cond ((let () (declare (not safe)) (##fx= _g185027_ 1))
                 (apply (lambda (_stx179670_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx179670_)))
                        _g185028_))
                ((let () (declare (not safe)) (##fx= _g185027_ 2))
                 (apply (lambda (_stx179678_ _identifier=?179679_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx179678_
                             _identifier=?179679_)))
                        _g185028_))
                ((let () (declare (not safe)) (##fx= _g185027_ 3))
                 (apply (lambda (_stx179685_
                                 _identifier=?179686_
                                 _unwrap-e179687_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx179685_
                             _identifier=?179686_
                             _unwrap-e179687_)))
                        _g185028_))
                ((let () (declare (not safe)) (##fx= _g185027_ 4))
                 (apply (lambda (_stx179691_
                                 _identifier=?179692_
                                 _unwrap-e179693_
                                 _wrap-e179694_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx179691_
                             _identifier=?179692_
                             _unwrap-e179693_
                             _wrap-e179694_)))
                        _g185028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g185028_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx178957_)
        (if (let () (declare (not safe)) (gx#identifier? _stx178957_))
            (let ((__tmp185029
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx178957_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp185029 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd178915_ . _rest178916_)
        (let ((_len178918_ (length _hd178915_)))
          (let _lp178920_ ((_rest178922_ _rest178916_))
            (let* ((_rest178923178931_ _rest178922_)
                   (_else178925178939_ (lambda () '#!void))
                   (_K178927178945_
                    (lambda (_rest178942_ _hd178943_)
                      (if (fx= _len178918_ (length _hd178943_))
                          (let ()
                            (declare (not safe))
                            (_lp178920_ _rest178942_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd178943_))))))
              (if (let () (declare (not safe)) (##pair? _rest178923178931_))
                  (let ((_hd178928178948_
                         (let ()
                           (declare (not safe))
                           (##car _rest178923178931_)))
                        (_tl178929178950_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest178923178931_))))
                    (let* ((_hd178953_ _hd178928178948_)
                           (_rest178955_ _tl178929178950_))
                      (declare (not safe))
                      (_K178927178945_ _rest178955_ _hd178953_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx178873_ _n178874_)
        (let _lp178876_ ((_rest178878_ _stx178873_) (_r178879_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest178878_))
              (let* ((_g178880178887_
                      (let () (declare (not safe)) (gx#syntax-e _rest178878_)))
                     (_E178882178891_
                      (lambda ()
                        (error '"No clause matching" _g178880178887_)))
                     (_K178883178897_
                      (lambda (_rest178894_ _hd178895_)
                        (let ((__tmp185034
                               (let ()
                                 (declare (not safe))
                                 (cons _hd178895_ _r178879_))))
                          (declare (not safe))
                          (_lp178876_ _rest178894_ __tmp185034)))))
                (if (let () (declare (not safe)) (##pair? _g178880178887_))
                    (let ((_hd178884178900_
                           (let ()
                             (declare (not safe))
                             (##car _g178880178887_)))
                          (_tl178885178902_
                           (let ()
                             (declare (not safe))
                             (##cdr _g178880178887_))))
                      (let* ((_hd178905_ _hd178884178900_)
                             (_rest178907_ _tl178885178902_))
                        (declare (not safe))
                        (_K178883178897_ _rest178907_ _hd178905_)))
                    (let () (declare (not safe)) (_E178882178891_))))
              (let _lp178909_ ((_n178911_ _n178874_)
                               (_l178912_ _r178879_)
                               (_r178913_ _rest178878_))
                (if (let () (declare (not safe)) (null? _l178912_))
                    (values _l178912_ _r178913_)
                    (if (fxpositive? _n178911_)
                        (let ((__tmp185033
                               (let ()
                                 (declare (not safe))
                                 (fx- _n178911_ '1)))
                              (__tmp185032 (cdr _l178912_))
                              (__tmp185030
                               (let ((__tmp185031 (car _l178912_)))
                                 (declare (not safe))
                                 (cons __tmp185031 _r178913_))))
                          (declare (not safe))
                          (_lp178909_ __tmp185033 __tmp185032 __tmp185030))
                        (values (reverse _l178912_) _r178913_))))))))))
