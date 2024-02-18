(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708289482)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp195219 (list gx#expander::t))
            (__tmp195217
             (let ((__tmp195218
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp195218 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp195219
         '(id depth)
         __tmp195217
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args191147_
        (apply make-instance gx#syntax-pattern::t _$args191147_)))
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
      (lambda (_self191144_ _stx191145_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx191145_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx190626_)
        (letrec ((_generate190628_
                  (lambda (_e190855_)
                    (letrec ((_BUG190857_
                              (lambda (_q191019_)
                                (error '"BUG: syntax; generate"
                                       _stx190626_
                                       _e190855_
                                       _q191019_)))
                             (_local-pattern-e190858_
                              (lambda (_pat191017_)
                                (let ((__tmp195220
                                       (##structure-ref
                                        _pat191017_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp195220))))
                             (_getvar190859_
                              (lambda (_q191014_ _vars191015_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q191014_
                                           _vars191015_
                                           _BUG190857_))))
                             (_getarg190860_
                              (lambda (_arg190980_ _vars190981_)
                                (let* ((_arg190982190989_ _arg190980_)
                                       (_E190984190993_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg190982190989_)))
                                       (_K190985191002_
                                        (lambda (_e190996_ _tag190997_)
                                          (let ((_$e190999_ _tag190997_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e190999_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar190859_
                                                   _e190996_
                                                   _vars190981_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e190999_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e190858_
                                                       _e190996_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG190857_
                                                       _arg190980_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg190982190989_))
                                      (let ((_hd190986191005_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg190982190989_)))
                                            (_tl190987191007_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg190982190989_))))
                                        (let* ((_tag191010_ _hd190986191005_)
                                               (_e191012_ _tl190987191007_))
                                          (declare (not safe))
                                          (_K190985191002_
                                           _e191012_
                                           _tag191010_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E190984190993_)))))))
                      (let _recur190862_ ((_e190864_ _e190855_)
                                          (_vars190865_ '()))
                        (let* ((_e190866190873_ _e190864_)
                               (_E190868190877_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e190866190873_)))
                               (_K190869190968_
                                (lambda (_body190880_ _tag190881_)
                                  (let ((_$e190883_ _tag190881_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e190883_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body190880_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e190883_))
                                            (let ((_id190886_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body190880_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id190886_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks190888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id190886_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks190888_))
                                                        (let ((__tmp195248
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body190880_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp195248))
                (let ((__tmp195247
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body190880_)))
                      (__tmp195246
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body190880_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp195247
                   __tmp195246
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id190886_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body190880_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG190857_
                                                         _e190864_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e190883_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e190858_
                                                   _body190880_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e190883_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar190859_
                                                       _body190880_
                                                       _vars190865_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e190883_))
                                                        (let ((__tmp195244
                                                               (let ((__tmp195245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body190880_)))
                         (declare (not safe))
                         (_recur190862_ __tmp195245 _vars190865_)))
                      (__tmp195242
                       (let ((__tmp195243 (cdr _body190880_)))
                         (declare (not safe))
                         (_recur190862_ __tmp195243 _vars190865_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp195244 __tmp195242))
                (if (let () (declare (not safe)) (eq? 'vector _$e190883_))
                    (let ((__tmp195241
                           (let ()
                             (declare (not safe))
                             (_recur190862_ _body190880_ _vars190865_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp195241))
                    (if (let () (declare (not safe)) (eq? 'box _$e190883_))
                        (let ((__tmp195240
                               (let ()
                                 (declare (not safe))
                                 (_recur190862_ _body190880_ _vars190865_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp195240))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e190883_))
                            (let* ((_body190889190900_ _body190880_)
                                   (_E190891190904_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body190889190900_)))
                                   (_K190892190942_
                                    (lambda (_args190907_
                                             _iv190908_
                                             _hd190909_
                                             _depth190910_)
                                      (let* ((_targets190916_
                                              (map (lambda (_g190911190913_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg190860_
                                                        _g190911190913_
                                                        _vars190865_)))
                                                   _args190907_))
                                             (_fold-in190918_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args190907_)))
                                             (_fold-out190920_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args190922_
                                              (let ((__tmp195221
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out190920_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp195221
                                                        _fold-in190918_)))
                                             (_lambda-body190939_
                                              (if (fx> _depth190910_ '1)
                                                  (let ((_r-args190930_
                                                         (map (lambda (_arg190924_)
                                                                (let ((__tmp195226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg190924_)))
                          (declare (not safe))
                          (cons 'ref __tmp195226)))
                      _args190907_))
                (_r-vars190931_
                 (let ((__tmp195227
                        (lambda (_arg190926_ _var190927_ _r190928_)
                          (let ((__tmp195228
                                 (let ((__tmp195229 (cdr _arg190926_)))
                                   (declare (not safe))
                                   (cons __tmp195229 _var190927_))))
                            (declare (not safe))
                            (cons __tmp195228 _r190928_)))))
                   (declare (not safe))
                   (foldr2 __tmp195227
                           _vars190865_
                           _args190907_
                           _fold-in190918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp195230
                                                           (let ((__tmp195231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195235
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth190910_ '1)))
                                (__tmp195232
                                 (let ((__tmp195233
                                        (let ((__tmp195234
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out190920_))))
                                          (declare (not safe))
                                          (cons __tmp195234 _r-args190930_))))
                                   (declare (not safe))
                                   (cons _hd190909_ __tmp195233))))
                            (declare (not safe))
                            (cons __tmp195235 __tmp195232))))
                     (declare (not safe))
                     (cons 'splice __tmp195231))))
              (declare (not safe))
              (_recur190862_ __tmp195230 _r-vars190931_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars190937_
                                                          (let ((__tmp195222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg190933_ _var190934_ _r190935_)
                           (let ((__tmp195223
                                  (let ((__tmp195224 (cdr _arg190933_)))
                                    (declare (not safe))
                                    (cons __tmp195224 _var190934_))))
                             (declare (not safe))
                             (cons __tmp195223 _r190935_)))))
                    (declare (not safe))
                    (foldr2 __tmp195222
                            _vars190865_
                            _args190907_
                            _fold-in190918_)))
                 (__tmp195225
                  (let ()
                    (declare (not safe))
                    (_recur190862_ _hd190909_ _hd-vars190937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp195225
                                                     _fold-out190920_)))))
                                        (let ((__tmp195239
                                               (if (fx> (length _targets190916_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets190916_))
                                                   '#!void))
                                              (__tmp195236
                                               (let ((__tmp195238
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args190922_
                                                         _lambda-body190939_)))
                                                     (__tmp195237
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur190862_
                                                         _iv190908_
                                                         _vars190865_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp195238
                                                  __tmp195237
                                                  _targets190916_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp195239
                                           __tmp195236))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body190889190900_))
                                  (let ((_hd190893190945_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body190889190900_)))
                                        (_tl190894190947_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body190889190900_))))
                                    (let ((_depth190950_ _hd190893190945_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl190894190947_))
                                          (let ((_hd190895190952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl190894190947_)))
                                                (_tl190896190954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl190894190947_))))
                                            (let ((_hd190957_
                                                   _hd190895190952_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl190896190954_))
                                                  (let ((_hd190897190959_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl190896190954_)))
                                                        (_tl190898190961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl190896190954_))))
                                                    (let* ((_iv190964_
                                                            _hd190897190959_)
                                                           (_args190966_
                                                            _tl190898190961_))
                                                      (declare (not safe))
                                                      (_K190892190942_
                                                       _args190966_
                                                       _iv190964_
                                                       _hd190957_
                                                       _depth190950_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E190891190904_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E190891190904_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E190891190904_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e190883_))
                                _body190880_
                                (let ()
                                  (declare (not safe))
                                  (_BUG190857_ _e190864_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e190866190873_))
                              (let ((_hd190870190971_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e190866190873_)))
                                    (_tl190871190973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e190866190873_))))
                                (let* ((_tag190976_ _hd190870190971_)
                                       (_body190978_ _tl190871190973_))
                                  (declare (not safe))
                                  (_K190869190968_ _body190978_ _tag190976_)))
                              (let ()
                                (declare (not safe))
                                (_E190868190877_))))))))
                 (_parse190629_
                  (lambda (_e190670_)
                    (letrec ((_make-cons190672_
                              (lambda (_hd190847_ _tl190848_)
                                (let ((_g195249_ _hd190847_)
                                      (_g195251_ _tl190848_))
                                  (begin
                                    (let ((_g195250_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195249_)
                                                 (##vector-length _g195249_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195250_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195250_)))
                                    (let ((_g195252_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195251_)
                                                 (##vector-length _g195251_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195252_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195252_)))
                                    (let ((_hd-e190850_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195249_ 0)))
                                          (_hd-vars190851_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195249_ 1))))
                                      (let ((_tl-e190852_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195251_ 0)))
                                            (_tl-vars190853_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195251_ 1))))
                                        (values (let ((__tmp195253
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e190850_
                                                               _tl-e190852_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp195253))
                                                (append _hd-vars190851_
                                                        _tl-vars190853_))))))))
                             (_make-splice190673_
                              (lambda (_where190786_
                                       _depth190787_
                                       _hd190788_
                                       _tl190789_)
                                (let ((_g195254_ _hd190788_)
                                      (_g195256_ _tl190789_))
                                  (begin
                                    (let ((_g195255_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195254_)
                                                 (##vector-length _g195254_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195255_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195255_)))
                                    (let ((_g195257_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195256_)
                                                 (##vector-length _g195256_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195257_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195257_)))
                                    (let ((_hd-e190791_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195254_ 0)))
                                          (_hd-vars190792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195254_ 1))))
                                      (let ((_tl-e190793_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195256_ 0)))
                                            (_tl-vars190794_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g195256_ 1))))
                                        (let _lp190796_ ((_rest190798_
                                                          _hd-vars190792_)
                                                         (_targets190799_ '())
                                                         (_vars190800_
                                                          _tl-vars190794_))
                                          (let* ((_rest190801190811_
                                                  _rest190798_)
                                                 (_else190803190819_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets190799_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx190626_
                                                           _where190786_))
                                                        (values (let ((__tmp195258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195259
                                      (let ((__tmp195260
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e190793_
                                                     _targets190799_))))
                                        (declare (not safe))
                                        (cons _hd-e190791_ __tmp195260))))
                                 (declare (not safe))
                                 (cons _depth190787_ __tmp195259))))
                          (declare (not safe))
                          (cons 'splice __tmp195258))
                        _vars190800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K190805190828_
                                                  (lambda (_rest190822_
                                                           _hd-pat190823_
                                                           _hd-depth*190824_)
                                                    (let ((_hd-depth190826_
                                                           (fx- _hd-depth*190824_
                                                                _depth190787_)))
                                                      (if (fxpositive?
                                                           _hd-depth190826_)
                                                          (let ((__tmp195265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195266
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat190823_))))
                           (declare (not safe))
                           (cons __tmp195266 _targets190799_)))
                        (__tmp195263
                         (let ((__tmp195264
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth190826_ _hd-pat190823_))))
                           (declare (not safe))
                           (cons __tmp195264 _vars190800_))))
                    (declare (not safe))
                    (_lp190796_ _rest190822_ __tmp195265 __tmp195263))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth190826_))
                      (let ((__tmp195261
                             (let ((__tmp195262
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat190823_))))
                               (declare (not safe))
                               (cons __tmp195262 _targets190799_))))
                        (declare (not safe))
                        (_lp190796_ _rest190822_ __tmp195261 _vars190800_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx190626_
                         _where190786_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest190801190811_))
                                                (let ((_hd190806190831_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest190801190811_)))
                                                      (_tl190807190833_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest190801190811_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd190806190831_))
                                                      (let ((_hd190808190836_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd190806190831_)))
                    (_tl190809190838_
                     (let () (declare (not safe)) (##cdr _hd190806190831_))))
                (let* ((_hd-depth*190841_ _hd190808190836_)
                       (_hd-pat190843_ _tl190809190838_)
                       (_rest190845_ _tl190807190833_))
                  (declare (not safe))
                  (_K190805190828_
                   _rest190845_
                   _hd-pat190843_
                   _hd-depth*190841_)))
              (let () (declare (not safe)) (_else190803190819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else190803190819_)))))))))))
                             (_recur190674_
                              (lambda (_e190679_ _is-e?190680_)
                                (if (_is-e?190680_ _e190679_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx190626_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e190679_))
                                        (let* ((_pat190682_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e190679_)))
                                               (_depth190684_
                                                (##structure-ref
                                                 _pat190682_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth190684_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat190682_))
                                                      (let ((__tmp195282
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth190684_ _pat190682_))))
                (declare (not safe))
                (cons __tmp195282 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat190682_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e190679_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e190679_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e190679_))
                                                (let* ((_e190686190693_
                                                        _e190679_)
                                                       (_E190688190697_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e190686190693_))))
                                                       (_E190687190776_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e190686190693_))
                      (let ((_e190689190701_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e190686190693_))))
                        (let ((_hd190690190704_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190689190701_)))
                              (_tl190691190706_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190689190701_))))
                          (let* ((_hd190709_ _hd190690190704_)
                                 (_rest190711_ _tl190691190706_))
                            (if '#t
                                (if (_is-e?190680_ _hd190709_)
                                    (let* ((_e190712190719_ _rest190711_)
                                           (_E190714190723_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx190626_
                                                 _e190679_))))
                                           (_E190713190737_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e190712190719_))
                                                  (let ((_e190715190727_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e190712190719_))))
                                                    (let ((_hd190716190730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e190715190727_)))
                                                          (_tl190717190732_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e190715190727_))))
                                                      (let ((_rest190735_
                                                             _hd190716190730_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl190717190732_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur190674_ _rest190735_ false))
                        (let () (declare (not safe)) (_E190714190723_)))
                    (let () (declare (not safe)) (_E190714190723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E190714190723_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E190713190737_)))
                                    (let _lp190741_ ((_rest190743_
                                                      _rest190711_)
                                                     (_depth190744_ '0))
                                      (let* ((_e190745190752_ _rest190743_)
                                             (_E190747190756_
                                              (lambda ()
                                                (if (fxpositive? _depth190744_)
                                                    (let ((__tmp195276
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190674_
                                                              _hd190709_
                                                              _is-e?190680_)))
                                                          (__tmp195275
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190674_
                                                              _rest190743_
                                                              _is-e?190680_))))
                                                      (declare (not safe))
                                                      (_make-splice190673_
                                                       _e190679_
                                                       _depth190744_
                                                       __tmp195276
                                                       __tmp195275))
                                                    (let ((__tmp195274
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190674_
                                                              _hd190709_
                                                              _is-e?190680_)))
                                                          (__tmp195273
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur190674_
                                                              _rest190743_
                                                              _is-e?190680_))))
                                                      (declare (not safe))
                                                      (_make-cons190672_
                                                       __tmp195274
                                                       __tmp195273)))))
                                             (_E190746190772_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e190745190752_))
                                                    (let ((_e190748190760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e190745190752_))))
                                                      (let ((_hd190749190763_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e190748190760_)))
                    (_tl190750190765_
                     (let () (declare (not safe)) (##cdr _e190748190760_))))
                (let* ((_rest-hd190768_ _hd190749190763_)
                       (_rest-tl190770_ _tl190750190765_))
                  (if '#t
                      (if (_is-e?190680_ _rest-hd190768_)
                          (let ((__tmp195281
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth190744_ '1))))
                            (declare (not safe))
                            (_lp190741_ _rest-tl190770_ __tmp195281))
                          (if (fxpositive? _depth190744_)
                              (let ((__tmp195280
                                     (let ()
                                       (declare (not safe))
                                       (_recur190674_
                                        _hd190709_
                                        _is-e?190680_)))
                                    (__tmp195279
                                     (let ()
                                       (declare (not safe))
                                       (_recur190674_
                                        _rest190743_
                                        _is-e?190680_))))
                                (declare (not safe))
                                (_make-splice190673_
                                 _e190679_
                                 _depth190744_
                                 __tmp195280
                                 __tmp195279))
                              (let ((__tmp195278
                                     (let ()
                                       (declare (not safe))
                                       (_recur190674_
                                        _hd190709_
                                        _is-e?190680_)))
                                    (__tmp195277
                                     (let ()
                                       (declare (not safe))
                                       (_recur190674_
                                        _rest190743_
                                        _is-e?190680_))))
                                (declare (not safe))
                                (_make-cons190672_ __tmp195278 __tmp195277))))
                      (let () (declare (not safe)) (_E190747190756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E190747190756_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E190746190772_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E190688190697_))))))
                      (let () (declare (not safe)) (_E190688190697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E190687190776_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e190679_))
                                                    (let ((_g195270_
                                                           (let ((__tmp195272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e190679_)))))
                     (declare (not safe))
                     (_recur190674_ __tmp195272 _is-e?190680_))))
              (begin
                (let ((_g195271_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g195270_)
                             (##vector-length _g195270_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g195271_ 2)))
                      (error "Context expects 2 values" _g195271_)))
                (let ((_e190780_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g195270_ 0)))
                      (_vars190781_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g195270_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e190780_))
                          _vars190781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e190679_))
                                                        (let ((_g195267_
                                                               (let ((__tmp195269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e190679_)))))
                         (declare (not safe))
                         (_recur190674_ __tmp195269 _is-e?190680_))))
                  (begin
                    (let ((_g195268_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g195267_)
                                 (##vector-length _g195267_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g195268_ 2)))
                          (error "Context expects 2 values" _g195268_)))
                    (let ((_e190783_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g195267_ 0)))
                          (_vars190784_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g195267_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e190783_))
                              _vars190784_))))
                (values (let () (declare (not safe)) (cons 'datum _e190679_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g195283_
                             (let ()
                               (declare (not safe))
                               (_recur190674_ _e190670_ gx#ellipsis?))))
                        (begin
                          (let ((_g195284_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g195283_)
                                       (##vector-length _g195283_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g195284_ 2)))
                                (error "Context expects 2 values" _g195284_)))
                          (let ((_tree190676_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g195283_ 0)))
                                (_vars190677_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g195283_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars190677_))
                                _tree190676_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx190626_
                                   _vars190677_))))))))))
          (let* ((_e190630190640_ _stx190626_)
                 (_E190632190644_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx190626_))))
                 (_E190631190666_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e190630190640_))
                        (let ((_e190633190648_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e190630190640_))))
                          (let ((_hd190634190651_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e190633190648_)))
                                (_tl190635190653_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e190633190648_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl190635190653_))
                                (let ((_e190636190656_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl190635190653_))))
                                  (let ((_hd190637190659_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e190636190656_)))
                                        (_tl190638190661_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e190636190656_))))
                                    (let ((_form190664_ _hd190637190659_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl190638190661_))
                                          (if '#t
                                              (let ((__tmp195286
                                                     (let ((__tmp195287
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse190629_
                                                               _form190664_))))
                                                       (declare (not safe))
                                                       (_generate190628_
                                                        __tmp195287)))
                                                    (__tmp195285
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx190626_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp195286
                                                 __tmp195285))
                                              (let ()
                                                (declare (not safe))
                                                (_E190632190644_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E190632190644_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E190632190644_)))))
                        (let () (declare (not safe)) (_E190632190644_))))))
            (let () (declare (not safe)) (_E190631190666_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx189890_
               _identifier=?189891_
               _unwrap-e189892_
               _wrap-e189893_)
        (letrec ((_generate-bindings189895_
                  (lambda (_target190490_
                           _ids190491_
                           _clauses190492_
                           _clause-ids190493_
                           _E190494_)
                    (letrec ((_generate1190496_
                              (lambda (_clause190593_
                                       _clause-id190594_
                                       _E190595_)
                                (let ((__tmp195292
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id190594_ '())))
                                      (__tmp195288
                                       (let ((__tmp195289
                                              (let ((__tmp195291
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target190490_
                                                             '())))
                                                    (__tmp195290
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause189897_
                                                        _target190490_
                                                        _ids190491_
                                                        _clause190593_
                                                        _E190595_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp195291
                                                 __tmp195290))))
                                         (declare (not safe))
                                         (cons __tmp195289 '()))))
                                  (declare (not safe))
                                  (cons __tmp195292 __tmp195288)))))
                      (let _lp190498_ ((_rest190500_ _clauses190492_)
                                       (_rest-ids190501_ _clause-ids190493_)
                                       (_bindings190502_ '()))
                        (let* ((_rest190503190511_ _rest190500_)
                               (_else190505190519_
                                (lambda () _bindings190502_))
                               (_K190507190581_
                                (lambda (_rest190522_ _clause190523_)
                                  (let* ((_rest-ids190524190531_
                                          _rest-ids190501_)
                                         (_E190526190535_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids190524190531_)))
                                         (_K190527190569_
                                          (lambda (_rest-ids190538_
                                                   _clause-id190539_)
                                            (let* ((_rest-ids190540190548_
                                                    _rest-ids190538_)
                                                   (_else190542190556_
                                                    (lambda ()
                                                      (let ((__tmp195293
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1190496_
                        _clause190523_
                        _clause-id190539_
                        _E190494_))))
                (declare (not safe))
                (cons __tmp195293 _bindings190502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K190544190561_
                                                    (lambda (_next-clause-id190559_)
                                                      (let ((__tmp195294
                                                             (let ((__tmp195295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1190496_
                               _clause190523_
                               _clause-id190539_
                               _next-clause-id190559_))))
                       (declare (not safe))
                       (cons __tmp195295 _bindings190502_))))
                (declare (not safe))
                (_lp190498_ _rest190522_ _rest-ids190538_ __tmp195294)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids190540190548_))
                                                  (let* ((_hd190545190564_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids190540190548_)))
                                                         (_next-clause-id190567_
                                                          _hd190545190564_))
                                                    (declare (not safe))
                                                    (_K190544190561_
                                                     _next-clause-id190567_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else190542190556_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids190524190531_))
                                        (let ((_hd190528190572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids190524190531_)))
                                              (_tl190529190574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids190524190531_))))
                                          (let* ((_clause-id190577_
                                                  _hd190528190572_)
                                                 (_rest-ids190579_
                                                  _tl190529190574_))
                                            (declare (not safe))
                                            (_K190527190569_
                                             _rest-ids190579_
                                             _clause-id190577_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E190526190535_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest190503190511_))
                              (let ((_hd190508190584_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest190503190511_)))
                                    (_tl190509190586_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest190503190511_))))
                                (let* ((_clause190589_ _hd190508190584_)
                                       (_rest190591_ _tl190509190586_))
                                  (declare (not safe))
                                  (_K190507190581_
                                   _rest190591_
                                   _clause190589_)))
                              (let ()
                                (declare (not safe))
                                (_else190505190519_))))))))
                 (_generate-body189896_
                  (lambda (_bindings190450_ _body190451_)
                    (let _recur190453_ ((_rest190455_ _bindings190450_))
                      (let* ((_rest190456190464_ _rest190455_)
                             (_else190458190472_ (lambda () _body190451_))
                             (_K190460190478_
                              (lambda (_rest190475_ _hd190476_)
                                (let ((__tmp195297
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd190476_ '())))
                                      (__tmp195296
                                       (let ()
                                         (declare (not safe))
                                         (_recur190453_ _rest190475_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp195297
                                   __tmp195296)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest190456190464_))
                            (let ((_hd190461190481_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest190456190464_)))
                                  (_tl190462190483_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest190456190464_))))
                              (let* ((_hd190486_ _hd190461190481_)
                                     (_rest190488_ _tl190462190483_))
                                (declare (not safe))
                                (_K190460190478_ _rest190488_ _hd190486_)))
                            (let ()
                              (declare (not safe))
                              (_else190458190472_)))))))
                 (_generate-clause189897_
                  (lambda (_target190313_ _ids190314_ _clause190315_ _E190316_)
                    (letrec ((_generate1190318_
                              (lambda (_hd190405_ _fender190406_ _body190407_)
                                (let ((_g195298_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause189899_
                                          _hd190405_
                                          _ids190314_))))
                                  (begin
                                    (let ((_g195299_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195298_)
                                                 (##vector-length _g195298_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195299_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195299_)))
                                    (let ((_e190409_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195298_ 0)))
                                          (_mvars190410_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195298_ 1))))
                                      (let* ((_pvars190412_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars190410_))))
                                             (_E190414_
                                              (let ((__tmp195300
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target190313_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E190316_ __tmp195300)))
                                             (_K190447_
                                              (let ((__tmp195301
                                                     (let ((__tmp195303
                                                            (map (lambda (_mvar190416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar190417_)
                           (let* ((_mvar190418190425_ _mvar190416_)
                                  (_E190420190429_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar190418190425_)))
                                  (_K190421190435_
                                   (lambda (_depth190432_ _id190433_)
                                     (let ((__tmp195304
                                            (let ((__tmp195305
                                                   (let ((__tmp195307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id190433_)))
                                                         (__tmp195306
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar190417_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp195307
                                                      __tmp195306
                                                      _depth190432_))))
                                              (declare (not safe))
                                              (cons __tmp195305 '()))))
                                       (declare (not safe))
                                       (cons _id190433_ __tmp195304)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar190418190425_))
                                 (let ((_hd190422190438_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar190418190425_)))
                                       (_tl190423190440_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar190418190425_))))
                                   (let* ((_id190443_ _hd190422190438_)
                                          (_depth190445_ _tl190423190440_))
                                     (declare (not safe))
                                     (_K190421190435_
                                      _depth190445_
                                      _id190443_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E190420190429_)))))
                         _mvars190410_
                         _pvars190412_))
                   (__tmp195302
                    (if (let () (declare (not safe)) (eq? _fender190406_ '#t))
                        _body190407_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender190406_
                           _body190407_
                           _E190414_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp195303 __tmp195302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars190412_
                                                 __tmp195301))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match189898_
                                           _hd190405_
                                           _target190313_
                                           _e190409_
                                           _mvars190410_
                                           _K190447_
                                           _E190414_)))))))))
                      (let* ((_e190319190339_ _clause190315_)
                             (_E190328190343_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e190319190339_))))
                             (_E190321190377_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e190319190339_))
                                    (let ((_e190329190347_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e190319190339_))))
                                      (let ((_hd190330190350_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e190329190347_)))
                                            (_tl190331190352_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e190329190347_))))
                                        (let ((_hd190355_ _hd190330190350_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl190331190352_))
                                              (let ((_e190332190357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl190331190352_))))
                                                (let ((_hd190333190360_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e190332190357_)))
                                                      (_tl190334190362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e190332190357_))))
                                                  (let ((_fender190365_
                                                         _hd190333190360_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl190334190362_))
                                                        (let ((_e190335190367_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl190334190362_))))
                  (let ((_hd190336190370_
                         (let () (declare (not safe)) (##car _e190335190367_)))
                        (_tl190337190372_
                         (let ()
                           (declare (not safe))
                           (##cdr _e190335190367_))))
                    (let ((_body190375_ _hd190336190370_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl190337190372_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1190318_
                                 _hd190355_
                                 _fender190365_
                                 _body190375_))
                              (let () (declare (not safe)) (_E190328190343_)))
                          (let () (declare (not safe)) (_E190328190343_))))))
                (let () (declare (not safe)) (_E190328190343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E190328190343_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E190328190343_)))))
                             (_E190320190401_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e190319190339_))
                                    (let ((_e190322190381_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e190319190339_))))
                                      (let ((_hd190323190384_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e190322190381_)))
                                            (_tl190324190386_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e190322190381_))))
                                        (let ((_hd190389_ _hd190323190384_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl190324190386_))
                                              (let ((_e190325190391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl190324190386_))))
                                                (let ((_hd190326190394_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e190325190391_)))
                                                      (_tl190327190396_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e190325190391_))))
                                                  (let ((_body190399_
                                                         _hd190326190394_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl190327190396_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1190318_
                                                               _hd190389_
                                                               '#t
                                                               _body190399_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E190321190377_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E190321190377_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E190321190377_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E190321190377_))))))
                        (let () (declare (not safe)) (_E190320190401_))))))
                 (_generate-match189898_
                  (lambda (_where190062_
                           _target190063_
                           _hd190064_
                           _mvars190065_
                           _K190066_
                           _E190067_)
                    (letrec ((_BUG190069_
                              (lambda (_q190311_)
                                (error '"BUG: syntax-case; generate"
                                       _stx189890_
                                       _hd190064_
                                       _q190311_)))
                             (_recur190070_
                              (lambda (_e190161_
                                       _vars190162_
                                       _target190163_
                                       _E190164_
                                       _k190165_)
                                (let* ((_e190166190173_ _e190161_)
                                       (_E190168190177_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e190166190173_)))
                                       (_K190169190299_
                                        (lambda (_body190180_ _tag190181_)
                                          (let ((_$e190183_ _tag190181_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e190183_))
                                                (_k190165_ _vars190162_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e190183_))
                                                    (let ((__tmp195414
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target190163_)))
                                                          (__tmp195410
                                                           (let ((__tmp195412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195413
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e189893_
                                    _body190180_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?189891_
                             __tmp195413
                             _target190163_)))
                         (__tmp195411 (_k190165_ _vars190162_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp195412 __tmp195411 _E190164_))))
              (declare (not safe))
              (gx#core-list 'if __tmp195414 __tmp195410 _E190164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e190183_))
                                                        (_k190165_
                                                         (let ((__tmp195409
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body190180_ _target190163_))))
                   (declare (not safe))
                   (cons __tmp195409 _vars190162_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e190183_))
                    (let ((_$e190186_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd190187_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl190188_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp195408
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target190163_)))
                            (__tmp195389
                             (let ((__tmp195403
                                    (let ((__tmp195404
                                           (let ((__tmp195407
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e190186_ '())))
                                                 (__tmp195405
                                                  (let ((__tmp195406
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e189892_
                                                            _target190163_))))
                                                    (declare (not safe))
                                                    (cons __tmp195406 '()))))
                                             (declare (not safe))
                                             (cons __tmp195407 __tmp195405))))
                                      (declare (not safe))
                                      (cons __tmp195404 '())))
                                   (__tmp195390
                                    (let ((__tmp195393
                                           (let ((__tmp195399
                                                  (let ((__tmp195402
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd190187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp195400
                 (let ((__tmp195401
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e190186_))))
                   (declare (not safe))
                   (cons __tmp195401 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195402
                                                          __tmp195400)))
                                                 (__tmp195394
                                                  (let ((__tmp195395
                                                         (let ((__tmp195398
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl190188_ '())))
                       (__tmp195396
                        (let ((__tmp195397
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e190186_))))
                          (declare (not safe))
                          (cons __tmp195397 '()))))
                   (declare (not safe))
                   (cons __tmp195398 __tmp195396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195395 '()))))
                                             (declare (not safe))
                                             (cons __tmp195399 __tmp195394)))
                                          (__tmp195391
                                           (let* ((_body190189190196_
                                                   _body190180_)
                                                  (_E190191190200_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body190189190196_)))
                                                  (_K190192190208_
                                                   (lambda (_tl190203_
                                                            _hd190204_)
                                                     (let ((__tmp195392
                                                            (lambda (_vars190206_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur190070_
                         _tl190203_
                         _vars190206_
                         _$tl190188_
                         _E190164_
                         _k190165_)))))
               (declare (not safe))
               (_recur190070_
                _hd190204_
                _vars190162_
                _$hd190187_
                _E190164_
                __tmp195392)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body190189190196_))
                                                 (let ((_hd190193190211_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body190189190196_)))
                                                       (_tl190194190213_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body190189190196_))))
                                                   (let* ((_hd190216_
                                                           _hd190193190211_)
                                                          (_tl190218_
                                                           _tl190194190213_))
                                                     (declare (not safe))
                                                     (_K190192190208_
                                                      _tl190218_
                                                      _hd190216_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E190191190200_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp195393
                                       __tmp195391))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp195403
                                __tmp195390))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp195408 __tmp195389 _E190164_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e190183_))
                        (let* ((_body190219190226_ _body190180_)
                               (_E190221190230_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body190219190226_)))
                               (_K190222190281_
                                (lambda (_tl190233_ _hd190234_)
                                  (let* ((_rlen190236_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen190071_ _tl190233_)))
                                         (_$target190238_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd190240_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl190242_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp190244_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e190246_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd190248_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl190250_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars190252_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars190072_ _hd190234_)))
                                         (_lvars190254_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars190252_)))
                                         (_tlvars190256_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars190252_)))
                                         (_linit190260_
                                          (map (lambda (_var190258_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars190254_)))
                                    (letrec ((_make-loop190263_
                                              (lambda (_vars190267_)
                                                (let ((__tmp195340
                                                       (let ((__tmp195341
                                                              (let ((__tmp195377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp190244_ '())))
                            (__tmp195342
                             (let ((__tmp195343
                                    (let ((__tmp195376
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd190240_ _lvars190254_)))
                                          (__tmp195344
                                           (let ((__tmp195375
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd190240_)))
                                                 (__tmp195353
                                                  (let ((__tmp195370
                                                         (let ((__tmp195371
                                                                (let ((__tmp195374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e190246_ '())))
                              (__tmp195372
                               (let ((__tmp195373
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e189892_
                                         _$hd190240_))))
                                 (declare (not safe))
                                 (cons __tmp195373 '()))))
                          (declare (not safe))
                          (cons __tmp195374 __tmp195372))))
                   (declare (not safe))
                   (cons __tmp195371 '())))
                (__tmp195354
                 (let ((__tmp195360
                        (let ((__tmp195366
                               (let ((__tmp195369
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd190248_ '())))
                                     (__tmp195367
                                      (let ((__tmp195368
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e190246_))))
                                        (declare (not safe))
                                        (cons __tmp195368 '()))))
                                 (declare (not safe))
                                 (cons __tmp195369 __tmp195367)))
                              (__tmp195361
                               (let ((__tmp195362
                                      (let ((__tmp195365
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl190250_ '())))
                                            (__tmp195363
                                             (let ((__tmp195364
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e190246_))))
                                               (declare (not safe))
                                               (cons __tmp195364 '()))))
                                        (declare (not safe))
                                        (cons __tmp195365 __tmp195363))))
                                 (declare (not safe))
                                 (cons __tmp195362 '()))))
                          (declare (not safe))
                          (cons __tmp195366 __tmp195361)))
                       (__tmp195355
                        (let ((__tmp195356
                               (lambda (_hdvars190269_)
                                 (let ((__tmp195357
                                        (let ((__tmp195358
                                               (map (lambda (_svar190271_
                                                             _lvar190272_)
                                                      (let ((__tmp195359
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar190271_ _hdvars190269_ _BUG190069_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp195359 _lvar190272_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars190252_
                                                    _lvars190254_)))
                                          (declare (not safe))
                                          (cons _$lp-tl190250_ __tmp195358))))
                                   (declare (not safe))
                                   (cons _$lp190244_ __tmp195357)))))
                          (declare (not safe))
                          (_recur190070_
                           _hd190234_
                           '()
                           _$lp-hd190248_
                           _E190164_
                           __tmp195356))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp195360 __tmp195355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp195370
                                                     __tmp195354)))
                                                 (__tmp195345
                                                  (let ((__tmp195349
                                                         (map (lambda (_lvar190274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar190275_)
                        (let ((__tmp195352
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar190275_ '())))
                              (__tmp195350
                               (let ((__tmp195351
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar190274_))))
                                 (declare (not safe))
                                 (cons __tmp195351 '()))))
                          (declare (not safe))
                          (cons __tmp195352 __tmp195350)))
                      _lvars190254_
                      _tlvars190256_))
                (__tmp195346
                 (_k190165_
                  (let ((__tmp195347
                         (lambda (_svar190277_ _tlvar190278_ _r190279_)
                           (let ((__tmp195348
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar190277_ _tlvar190278_))))
                             (declare (not safe))
                             (cons __tmp195348 _r190279_)))))
                    (declare (not safe))
                    (foldl2 __tmp195347
                            _vars190267_
                            _svars190252_
                            _tlvars190256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp195349
                                                     __tmp195346))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp195375
                                              __tmp195353
                                              __tmp195345))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp195376
                                       __tmp195344))))
                               (declare (not safe))
                               (cons __tmp195343 '()))))
                        (declare (not safe))
                        (cons __tmp195377 __tmp195342))))
                 (declare (not safe))
                 (cons __tmp195341 '())))
              (__tmp195338
               (let ((__tmp195339
                      (let ()
                        (declare (not safe))
                        (cons _$target190238_ _linit190260_))))
                 (declare (not safe))
                 (cons _$lp190244_ __tmp195339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp195340
                                                   __tmp195338)))))
                                      (let ((_body190265_
                                             (let ((__tmp195379
                                                    (let ((__tmp195380
                                                           (let ((__tmp195383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195384
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl190242_ '()))))
                            (declare (not safe))
                            (cons _$target190238_ __tmp195384)))
                         (__tmp195381
                          (let ((__tmp195382
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target190163_
                                    _rlen190236_))))
                            (declare (not safe))
                            (cons __tmp195382 '()))))
                     (declare (not safe))
                     (cons __tmp195383 __tmp195381))))
              (declare (not safe))
              (cons __tmp195380 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195378
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur190070_
                                                       _tl190233_
                                                       _vars190162_
                                                       _$tl190242_
                                                       _E190164_
                                                       _make-loop190263_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp195379
                                                __tmp195378))))
                                        (let ((__tmp195388
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target190163_)))
                                              (__tmp195385
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen190236_))
                                                   _body190265_
                                                   (let ((__tmp195386
                                                          (let ((__tmp195387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target190163_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp195387 _rlen190236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp195386
                                                      _body190265_
                                                      _E190164_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp195388
                                           __tmp195385
                                           _E190164_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body190219190226_))
                              (let ((_hd190223190284_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body190219190226_)))
                                    (_tl190224190286_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body190219190226_))))
                                (let* ((_hd190289_ _hd190223190284_)
                                       (_tl190291_ _tl190224190286_))
                                  (declare (not safe))
                                  (_K190222190281_ _tl190291_ _hd190289_)))
                              (let () (declare (not safe)) (_E190221190230_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e190183_))
                            (let ((__tmp195337
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target190163_)))
                                  (__tmp195336 (_k190165_ _vars190162_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp195337
                               __tmp195336
                               _E190164_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e190183_))
                                (let ((_$e190293_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp195335
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target190163_)))
                                        (__tmp195327
                                         (let ((__tmp195329
                                                (let ((__tmp195330
                                                       (let ((__tmp195334
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e190293_ '())))
                     (__tmp195331
                      (let ((__tmp195332
                             (let ((__tmp195333
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e189892_
                                       _target190163_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp195333))))
                        (declare (not safe))
                        (cons __tmp195332 '()))))
                 (declare (not safe))
                 (cons __tmp195334 __tmp195331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp195330 '())))
                                               (__tmp195328
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur190070_
                                                   _body190180_
                                                   _vars190162_
                                                   _$e190293_
                                                   _E190164_
                                                   _k190165_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp195329
                                            __tmp195328))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp195335
                                     __tmp195327
                                     _E190164_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e190183_))
                                    (let ((_$e190295_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp195326
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target190163_)))
                                            (__tmp195318
                                             (let ((__tmp195320
                                                    (let ((__tmp195321
                                                           (let ((__tmp195325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e190295_ '())))
                         (__tmp195322
                          (let ((__tmp195323
                                 (let ((__tmp195324
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e189892_
                                           _target190163_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp195324))))
                            (declare (not safe))
                            (cons __tmp195323 '()))))
                     (declare (not safe))
                     (cons __tmp195325 __tmp195322))))
              (declare (not safe))
              (cons __tmp195321 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195319
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur190070_
                                                       _body190180_
                                                       _vars190162_
                                                       _$e190295_
                                                       _E190164_
                                                       _k190165_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp195320
                                                __tmp195319))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp195326
                                         __tmp195318
                                         _E190164_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e190183_))
                                        (let ((_$e190297_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp195317
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target190163_)))
                                                (__tmp195308
                                                 (let ((__tmp195312
                                                        (let ((__tmp195313
                                                               (let ((__tmp195316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e190297_ '())))
                             (__tmp195314
                              (let ((__tmp195315
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target190163_))))
                                (declare (not safe))
                                (cons __tmp195315 '()))))
                         (declare (not safe))
                         (cons __tmp195316 __tmp195314))))
                  (declare (not safe))
                  (cons __tmp195313 '())))
               (__tmp195309
                (let ((__tmp195311
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e190297_ _body190180_)))
                      (__tmp195310 (_k190165_ _vars190162_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp195311 __tmp195310 _E190164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp195312
                                                    __tmp195309))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp195317
                                             __tmp195308
                                             _E190164_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG190069_ _e190161_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e190166190173_))
                                      (let ((_hd190170190302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e190166190173_)))
                                            (_tl190171190304_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e190166190173_))))
                                        (let* ((_tag190307_ _hd190170190302_)
                                               (_body190309_ _tl190171190304_))
                                          (declare (not safe))
                                          (_K190169190299_
                                           _body190309_
                                           _tag190307_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E190168190177_))))))
                             (_splice-rlen190071_
                              (lambda (_e190123_)
                                (let _lp190125_ ((_e190127_ _e190123_)
                                                 (_n190128_ '0))
                                  (let* ((_e190129190136_ _e190127_)
                                         (_E190131190140_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e190129190136_)))
                                         (_K190132190149_
                                          (lambda (_body190143_ _tag190144_)
                                            (let ((_$e190146_ _tag190144_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e190146_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx189890_
                                                     _where190062_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e190146_))
                                                      (let ((__tmp195416
                                                             (cdr _body190143_))
                                                            (__tmp195415
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n190128_ '1))))
                (declare (not safe))
                (_lp190125_ __tmp195416 __tmp195415))
              _n190128_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e190129190136_))
                                        (let ((_hd190133190152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e190129190136_)))
                                              (_tl190134190154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e190129190136_))))
                                          (let* ((_tag190157_ _hd190133190152_)
                                                 (_body190159_
                                                  _tl190134190154_))
                                            (declare (not safe))
                                            (_K190132190149_
                                             _body190159_
                                             _tag190157_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E190131190140_)))))))
                             (_splice-vars190072_
                              (lambda (_e190079_)
                                (let _recur190081_ ((_e190083_ _e190079_)
                                                    (_vars190084_ '()))
                                  (let* ((_e190085190092_ _e190083_)
                                         (_E190087190096_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e190085190092_)))
                                         (_K190088190111_
                                          (lambda (_body190099_ _tag190100_)
                                            (let ((_$e190102_ _tag190100_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e190102_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body190099_
                                                          _vars190084_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e190102_))
                  (let () (declare (not safe)) (eq? 'splice _$e190102_)))
              (let ((__tmp195419 (cdr _body190099_))
                    (__tmp195417
                     (let ((__tmp195418 (car _body190099_)))
                       (declare (not safe))
                       (_recur190081_ __tmp195418 _vars190084_))))
                (declare (not safe))
                (_recur190081_ __tmp195419 __tmp195417))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e190102_))
                      (let () (declare (not safe)) (eq? 'box _$e190102_)))
                  (let ()
                    (declare (not safe))
                    (_recur190081_ _body190099_ _vars190084_))
                  _vars190084_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e190085190092_))
                                        (let ((_hd190089190114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e190085190092_)))
                                              (_tl190090190116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e190085190092_))))
                                          (let* ((_tag190119_ _hd190089190114_)
                                                 (_body190121_
                                                  _tl190090190116_))
                                            (declare (not safe))
                                            (_K190088190111_
                                             _body190121_
                                             _tag190119_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E190087190096_)))))))
                             (_make-body190073_
                              (lambda (_vars190075_)
                                (let ((__tmp195420
                                       (map (lambda (_mvar190077_)
                                              (let ((__tmp195421
                                                     (car _mvar190077_)))
                                                (declare (not safe))
                                                (assgetq __tmp195421
                                                         _vars190075_
                                                         _BUG190069_)))
                                            _mvars190065_)))
                                  (declare (not safe))
                                  (cons _K190066_ __tmp195420)))))
                      (let ()
                        (declare (not safe))
                        (_recur190070_
                         _hd190064_
                         '()
                         _target190063_
                         _E190067_
                         _make-body190073_)))))
                 (_parse-clause189899_
                  (lambda (_hd189968_ _ids189969_)
                    (let _recur189971_ ((_e189973_ _hd189968_)
                                        (_vars189974_ '())
                                        (_depth189975_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e189973_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e189973_))
                              (values '(any) _vars189974_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e189973_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx189890_
                                     _hd189968_))
                                  (if (let ((__tmp195437
                                             (lambda (_id189977_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e189973_
                                                  _id189977_)))))
                                        (declare (not safe))
                                        (find __tmp195437 _ids189969_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e189973_))
                                              _vars189974_)
                                      (if (let ((__tmp195435
                                                 (lambda (_var189979_)
                                                   (let ((__tmp195436
                                                          (car _var189979_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e189973_
                                                      __tmp195436)))))
                                            (declare (not safe))
                                            (find __tmp195435 _vars189974_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx189890_
                                             _e189973_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e189973_))
                                                  (let ((__tmp195434
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e189973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth189975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195434
                                                          _vars189974_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e189973_))
                              (let* ((_e189980189987_ _e189973_)
                                     (_E189982189991_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e189980189987_))))
                                     (_E189981190052_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e189980189987_))
                                            (let ((_e189983189995_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e189980189987_))))
                                              (let ((_hd189984189998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e189983189995_)))
                                                    (_tl189985190000_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e189983189995_))))
                                                (let* ((_hd190003_
                                                        _hd189984189998_)
                                                       (_rest190005_
                                                        _tl189985190000_))
                                                  (if '#t
                                                      (let* ((_make-pair190020_
                                                              (lambda (_tag190007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd190008_
                               _tl190009_)
                        (let* ((_hd-depth190011_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag190007_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth189975_ '1))
                                    _depth189975_))
                               (_g195429_
                                (let ()
                                  (declare (not safe))
                                  (_recur189971_
                                   _hd190008_
                                   _vars189974_
                                   _hd-depth190011_))))
                          (begin
                            (let ((_g195430_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g195429_)
                                         (##vector-length _g195429_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g195430_ 2)))
                                  (error "Context expects 2 values"
                                         _g195430_)))
                            (let ((_hd190013_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g195429_ 0)))
                                  (_vars190014_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g195429_ 1))))
                              (let ((_g195431_
                                     (let ()
                                       (declare (not safe))
                                       (_recur189971_
                                        _tl190009_
                                        _vars190014_
                                        _depth189975_))))
                                (begin
                                  (let ((_g195432_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195431_)
                                               (##vector-length _g195431_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195432_ 2)))
                                        (error "Context expects 2 values"
                                               _g195432_)))
                                  (let ((_tl190016_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g195431_ 0)))
                                        (_vars190017_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g195431_ 1))))
                                    (let ()
                                      (values (let ((__tmp195433
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd190013_
                                                             _tl190016_))))
                                                (declare (not safe))
                                                (cons _tag190007_ __tmp195433))
                                              _vars190017_))))))))))
                     (_e190021190028_ _rest190005_)
                     (_E190023190032_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair190020_ 'cons _hd190003_ _rest190005_))))
                     (_E190022190048_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e190021190028_))
                            (let ((_e190024190036_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e190021190028_))))
                              (let ((_hd190025190039_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e190024190036_)))
                                    (_tl190026190041_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e190024190036_))))
                                (let* ((_rest-hd190044_ _hd190025190039_)
                                       (_rest-tl190046_ _tl190026190041_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd190044_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair190020_
                                             'splice
                                             _hd190003_
                                             _rest-tl190046_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair190020_
                                             'cons
                                             _hd190003_
                                             _rest190005_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E190023190032_))))))
                            (let () (declare (not safe)) (_E190023190032_))))))
                (let () (declare (not safe)) (_E190022190048_)))
              (let () (declare (not safe)) (_E189982189991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E189982189991_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E189981190052_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e189973_))
                                  (values '(null) _vars189974_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e189973_))
                                      (let ((_g195426_
                                             (let ((__tmp195428
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e189973_)))))
                                               (declare (not safe))
                                               (_recur189971_
                                                __tmp195428
                                                _vars189974_
                                                _depth189975_))))
                                        (begin
                                          (let ((_g195427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195426_)
                                                       (##vector-length
                                                        _g195426_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195427_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195427_)))
                                          (let ((_e190056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g195426_ 0)))
                                                (_vars190057_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g195426_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e190056_))
                                                    _vars190057_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e189973_))
                                          (let ((_g195423_
                                                 (let ((__tmp195425
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e189973_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur189971_
                                                    __tmp195425
                                                    _vars189974_
                                                    _depth189975_))))
                                            (begin
                                              (let ((_g195424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g195423_)
                                                           (##vector-length
                                                            _g195423_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g195424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g195424_)))
                                              (let ((_e190059_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g195423_
                                                        0)))
                                                    (_vars190060_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g195423_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e190059_))
                                                        _vars190060_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e189973_))
                                              (values (let ((__tmp195422
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e189973_))))
                (declare (not safe))
                (cons 'datum __tmp195422))
              _vars189974_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx189890_
                                                 _e189973_))))))))))))
          (let* ((_e189900189913_ _stx189890_)
                 (_E189902189917_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e189900189913_))))
                 (_E189901189964_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e189900189913_))
                        (let ((_e189903189921_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e189900189913_))))
                          (let ((_hd189904189924_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189903189921_)))
                                (_tl189905189926_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189903189921_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl189905189926_))
                                (let ((_e189906189929_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl189905189926_))))
                                  (let ((_hd189907189932_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e189906189929_)))
                                        (_tl189908189934_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e189906189929_))))
                                    (let ((_expr189937_ _hd189907189932_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl189908189934_))
                                          (let ((_e189909189939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl189908189934_))))
                                            (let ((_hd189910189942_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e189909189939_)))
                                                  (_tl189911189944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e189909189939_))))
                                              (let* ((_ids189947_
                                                      _hd189910189942_)
                                                     (_clauses189949_
                                                      _tl189911189944_))
                                                (if '#t
                                                    (if (let ((__tmp195455
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids189947_))))
                  (declare (not safe))
                  (not __tmp195455))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx189890_
                   _ids189947_))
                (if (let ((__tmp195454
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses189949_))))
                      (declare (not safe))
                      (not __tmp195454))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx189890_))
                    (let* ((_ids189951_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids189947_)))
                           (_clauses189953_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses189949_)))
                           (_clause-ids189955_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses189953_)))
                           (_E189957_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target189959_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first189961_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses189953_))
                                _E189957_
                                (car _clause-ids189955_))))
                      (let ((__tmp195439
                             (let ((__tmp195440
                                    (let ((__tmp195442
                                           (let ((__tmp195447
                                                  (let ((__tmp195448
                                                         (let ((__tmp195453
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E189957_ '())))
                       (__tmp195449
                        (let ((__tmp195450
                               (let ((__tmp195452
                                      (let ()
                                        (declare (not safe))
                                        (cons _target189959_ '())))
                                     (__tmp195451
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target189959_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp195452
                                  __tmp195451))))
                          (declare (not safe))
                          (cons __tmp195450 '()))))
                   (declare (not safe))
                   (cons __tmp195453 __tmp195449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp195448 '())))
                                                 (__tmp195443
                                                  (let ((__tmp195446
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings189895_
                                                            _target189959_
                                                            _ids189951_
                                                            _clauses189953_
                                                            _clause-ids189955_
                                                            _E189957_)))
                                                        (__tmp195444
                                                         (let ((__tmp195445
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr189937_ '()))))
                   (declare (not safe))
                   (cons _first189961_ __tmp195445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body189896_
                                                     __tmp195446
                                                     __tmp195444))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp195447
                                              __tmp195443)))
                                          (__tmp195441
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx189890_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp195442
                                       __tmp195441))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp195440)))
                            (__tmp195438
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx189890_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp195439 __tmp195438)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E189902189917_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E189902189917_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E189902189917_)))))
                        (let () (declare (not safe)) (_E189902189917_))))))
            (let () (declare (not safe)) (_E189901189964_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx190600_)
        (let* ((_identifier=?190602_ 'free-identifier=?)
               (_unwrap-e190604_ 'syntax-e)
               (_wrap-e190606_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190600_
           _identifier=?190602_
           _unwrap-e190604_
           _wrap-e190606_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx190608_ _identifier=?190609_)
        (let* ((_unwrap-e190611_ 'syntax-e) (_wrap-e190613_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190608_
           _identifier=?190609_
           _unwrap-e190611_
           _wrap-e190613_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx190615_ _identifier=?190616_ _unwrap-e190617_)
        (let ((_wrap-e190619_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190615_
           _identifier=?190616_
           _unwrap-e190617_
           _wrap-e190619_))))
    (define gx#macro-expand-syntax-case
      (lambda _g195457_
        (let ((_g195456_ (let () (declare (not safe)) (##length _g195457_))))
          (cond ((let () (declare (not safe)) (##fx= _g195456_ 1))
                 (apply (lambda (_stx190600_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx190600_)))
                        _g195457_))
                ((let () (declare (not safe)) (##fx= _g195456_ 2))
                 (apply (lambda (_stx190608_ _identifier=?190609_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx190608_
                             _identifier=?190609_)))
                        _g195457_))
                ((let () (declare (not safe)) (##fx= _g195456_ 3))
                 (apply (lambda (_stx190615_
                                 _identifier=?190616_
                                 _unwrap-e190617_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx190615_
                             _identifier=?190616_
                             _unwrap-e190617_)))
                        _g195457_))
                ((let () (declare (not safe)) (##fx= _g195456_ 4))
                 (apply (lambda (_stx190621_
                                 _identifier=?190622_
                                 _unwrap-e190623_
                                 _wrap-e190624_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx190621_
                             _identifier=?190622_
                             _unwrap-e190623_
                             _wrap-e190624_)))
                        _g195457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g195457_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx189887_)
        (if (let () (declare (not safe)) (gx#identifier? _stx189887_))
            (let ((__tmp195458
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx189887_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp195458 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd189845_ . _rest189846_)
        (let ((_len189848_ (length _hd189845_)))
          (let _lp189850_ ((_rest189852_ _rest189846_))
            (let* ((_rest189853189861_ _rest189852_)
                   (_else189855189869_ (lambda () '#!void))
                   (_K189857189875_
                    (lambda (_rest189872_ _hd189873_)
                      (if (fx= _len189848_ (length _hd189873_))
                          (let ()
                            (declare (not safe))
                            (_lp189850_ _rest189872_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd189873_))))))
              (if (let () (declare (not safe)) (##pair? _rest189853189861_))
                  (let ((_hd189858189878_
                         (let ()
                           (declare (not safe))
                           (##car _rest189853189861_)))
                        (_tl189859189880_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest189853189861_))))
                    (let* ((_hd189883_ _hd189858189878_)
                           (_rest189885_ _tl189859189880_))
                      (declare (not safe))
                      (_K189857189875_ _rest189885_ _hd189883_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx189803_ _n189804_)
        (let _lp189806_ ((_rest189808_ _stx189803_) (_r189809_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest189808_))
              (let* ((_g189810189817_
                      (let () (declare (not safe)) (gx#syntax-e _rest189808_)))
                     (_E189812189821_
                      (lambda ()
                        (error '"No clause matching" _g189810189817_)))
                     (_K189813189827_
                      (lambda (_rest189824_ _hd189825_)
                        (let ((__tmp195463
                               (let ()
                                 (declare (not safe))
                                 (cons _hd189825_ _r189809_))))
                          (declare (not safe))
                          (_lp189806_ _rest189824_ __tmp195463)))))
                (if (let () (declare (not safe)) (##pair? _g189810189817_))
                    (let ((_hd189814189830_
                           (let ()
                             (declare (not safe))
                             (##car _g189810189817_)))
                          (_tl189815189832_
                           (let ()
                             (declare (not safe))
                             (##cdr _g189810189817_))))
                      (let* ((_hd189835_ _hd189814189830_)
                             (_rest189837_ _tl189815189832_))
                        (declare (not safe))
                        (_K189813189827_ _rest189837_ _hd189835_)))
                    (let () (declare (not safe)) (_E189812189821_))))
              (let _lp189839_ ((_n189841_ _n189804_)
                               (_l189842_ _r189809_)
                               (_r189843_ _rest189808_))
                (if (let () (declare (not safe)) (null? _l189842_))
                    (values _l189842_ _r189843_)
                    (if (fxpositive? _n189841_)
                        (let ((__tmp195462
                               (let ()
                                 (declare (not safe))
                                 (fx- _n189841_ '1)))
                              (__tmp195461 (cdr _l189842_))
                              (__tmp195459
                               (let ((__tmp195460 (car _l189842_)))
                                 (declare (not safe))
                                 (cons __tmp195460 _r189843_))))
                          (declare (not safe))
                          (_lp189839_ __tmp195462 __tmp195461 __tmp195459))
                        (values (reverse _l189842_) _r189843_))))))))))
