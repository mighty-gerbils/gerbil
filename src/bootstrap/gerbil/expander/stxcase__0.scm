(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f
     '(id depth)))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args18374_
      (apply make-struct-instance gx#syntax-pattern::t _$args18374_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self18371_ _stx18372_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx18372_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17853_)
      (letrec ((_generate17855_
                (lambda (_e18082_)
                  (letrec ((_BUG18084_
                            (lambda (_q18246_)
                              (error '"BUG: syntax; generate"
                                     _stx17853_
                                     _e18082_
                                     _q18246_)))
                           (_local-pattern-e18085_
                            (lambda (_pat18244_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat18244_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar18086_
                            (lambda (_q18241_ _vars18242_)
                              (assgetq _q18241_ _vars18242_ _BUG18084_)))
                           (_getarg18087_
                            (lambda (_arg18207_ _vars18208_)
                              (let* ((_arg1820918216_ _arg18207_)
                                     (_E1821118220_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1820918216_)))
                                     (_K1821218229_
                                      (lambda (_e18223_ _tag18224_)
                                        (let ((_$e18226_ _tag18224_))
                                          (if (eq? 'ref _$e18226_)
                                              (_getvar18086_
                                               _e18223_
                                               _vars18208_)
                                              (if (eq? 'pattern _$e18226_)
                                                  (_local-pattern-e18085_
                                                   _e18223_)
                                                  (_BUG18084_ _arg18207_)))))))
                                (if (##pair? _arg1820918216_)
                                    (let ((_hd1821318232_
                                           (##car _arg1820918216_))
                                          (_tl1821418234_
                                           (##cdr _arg1820918216_)))
                                      (let* ((_tag18237_ _hd1821318232_)
                                             (_e18239_ _tl1821418234_))
                                        (_K1821218229_ _e18239_ _tag18237_)))
                                    (_E1821118220_))))))
                    (let _recur18089_ ((_e18091_ _e18082_) (_vars18092_ '()))
                      (let* ((_e1809318100_ _e18091_)
                             (_E1809518104_
                              (lambda ()
                                (error '"No clause matching" _e1809318100_)))
                             (_K1809618195_
                              (lambda (_body18107_ _tag18108_)
                                (let ((_$e18110_ _tag18108_))
                                  (if (eq? 'datum _$e18110_)
                                      (gx#core-list 'quote _body18107_)
                                      (if (eq? 'term _$e18110_)
                                          (let ((_id18113_
                                                 (gx#syntax-local-unwrap
                                                  _body18107_)))
                                            (if (##structure-direct-instance-of?
                                                 _id18113_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks18115_
                                                       (##direct-structure-ref
                                                        _id18113_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks18115_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body18107_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body18107_)
                                                       (gx#core-list
                                                        'quote
                                                        _body18107_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id18113_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body18107_)
                                                    (_BUG18084_ _e18091_))))
                                          (if (eq? 'pattern _$e18110_)
                                              (_local-pattern-e18085_
                                               _body18107_)
                                              (if (eq? 'ref _$e18110_)
                                                  (_getvar18086_
                                                   _body18107_
                                                   _vars18092_)
                                                  (if (eq? 'cons _$e18110_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur18089_
                                                        (car _body18107_)
                                                        _vars18092_)
                                                       (_recur18089_
                                                        (cdr _body18107_)
                                                        _vars18092_))
                                                      (if (eq? 'vector
                                                               _$e18110_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur18089_
                                                            _body18107_
                                                            _vars18092_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e18110_)
                      (gx#core-list
                       'box
                       (_recur18089_ _body18107_ _vars18092_))
                      (if (eq? 'splice _$e18110_)
                          (let* ((_body1811618127_ _body18107_)
                                 (_E1811818131_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1811618127_)))
                                 (_K1811918169_
                                  (lambda (_args18134_
                                           _iv18135_
                                           _hd18136_
                                           _depth18137_)
                                    (let* ((_targets18143_
                                            (map (lambda (_g1813818140_)
                                                   (_getarg18087_
                                                    _g1813818140_
                                                    _vars18092_))
                                                 _args18134_))
                                           (_fold-in18145_
                                            (gx#gentemps _args18134_))
                                           (_fold-out18147_ (gx#genident__0))
                                           (_lambda-args18149_
                                            (foldr1 cons
                                                    (cons _fold-out18147_ '())
                                                    _fold-in18145_))
                                           (_lambda-body18166_
                                            (if (fx> _depth18137_ '1)
                                                (let ((_r-args18157_
                                                       (map (lambda (_arg18151_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg18151_)))
                    _args18134_))
              (_r-vars18158_
               (foldr2 (lambda (_arg18153_ _var18154_ _r18155_)
                         (cons (cons (cdr _arg18153_) _var18154_) _r18155_))
                       _vars18092_
                       _args18134_
                       _fold-in18145_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur18089_
                                                   (cons 'splice
                                                         (cons (fx- _depth18137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd18136_
                             (cons (cons 'var _fold-out18147_)
                                   _r-args18157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars18158_))
                                                (let ((_hd-vars18164_
                                                       (foldr2 (lambda (_arg18160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var18161_
                                _r18162_)
                         (cons (cons (cdr _arg18160_) _var18161_) _r18162_))
                       _vars18092_
                       _args18134_
                       _fold-in18145_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur18089_
                                                    _hd18136_
                                                    _hd-vars18164_)
                                                   _fold-out18147_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets18143_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets18143_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args18149_
                                         _lambda-body18166_)
                                        (_recur18089_ _iv18135_ _vars18092_)
                                        _targets18143_))))))
                            (if (##pair? _body1811618127_)
                                (let ((_hd1812018172_ (##car _body1811618127_))
                                      (_tl1812118174_
                                       (##cdr _body1811618127_)))
                                  (let ((_depth18177_ _hd1812018172_))
                                    (if (##pair? _tl1812118174_)
                                        (let ((_hd1812218179_
                                               (##car _tl1812118174_))
                                              (_tl1812318181_
                                               (##cdr _tl1812118174_)))
                                          (let ((_hd18184_ _hd1812218179_))
                                            (if (##pair? _tl1812318181_)
                                                (let ((_hd1812418186_
                                                       (##car _tl1812318181_))
                                                      (_tl1812518188_
                                                       (##cdr _tl1812318181_)))
                                                  (let* ((_iv18191_
                                                          _hd1812418186_)
                                                         (_args18193_
                                                          _tl1812518188_))
                                                    (_K1811918169_
                                                     _args18193_
                                                     _iv18191_
                                                     _hd18184_
                                                     _depth18177_)))
                                                (_E1811818131_))))
                                        (_E1811818131_))))
                                (_E1811818131_)))
                          (if (eq? 'var _$e18110_)
                              _body18107_
                              (_BUG18084_ _e18091_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1809318100_)
                            (let ((_hd1809718198_ (##car _e1809318100_))
                                  (_tl1809818200_ (##cdr _e1809318100_)))
                              (let* ((_tag18203_ _hd1809718198_)
                                     (_body18205_ _tl1809818200_))
                                (_K1809618195_ _body18205_ _tag18203_)))
                            (_E1809518104_)))))))
               (_parse17856_
                (lambda (_e17897_)
                  (letrec ((_make-cons17899_
                            (lambda (_hd18074_ _tl18075_)
                              (let ((_g18376_ _hd18074_) (_g18378_ _tl18075_))
                                (begin
                                  (let ((_g18377_
                                         (if (##values? _g18376_)
                                             (##vector-length _g18376_)
                                             1)))
                                    (if (not (##fx= _g18377_ 2))
                                        (error "Context expects 2 values"
                                               _g18377_)))
                                  (let ((_g18379_
                                         (if (##values? _g18378_)
                                             (##vector-length _g18378_)
                                             1)))
                                    (if (not (##fx= _g18379_ 2))
                                        (error "Context expects 2 values"
                                               _g18379_)))
                                  (let ((_hd-e18077_ (##vector-ref _g18376_ 0))
                                        (_hd-vars18078_
                                         (##vector-ref _g18376_ 1)))
                                    (let ((_tl-e18079_
                                           (##vector-ref _g18378_ 0))
                                          (_tl-vars18080_
                                           (##vector-ref _g18378_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e18077_
                                                          _tl-e18079_))
                                              (append _hd-vars18078_
                                                      _tl-vars18080_))))))))
                           (_make-splice17900_
                            (lambda (_where18013_
                                     _depth18014_
                                     _hd18015_
                                     _tl18016_)
                              (let ((_g18380_ _hd18015_) (_g18382_ _tl18016_))
                                (begin
                                  (let ((_g18381_
                                         (if (##values? _g18380_)
                                             (##vector-length _g18380_)
                                             1)))
                                    (if (not (##fx= _g18381_ 2))
                                        (error "Context expects 2 values"
                                               _g18381_)))
                                  (let ((_g18383_
                                         (if (##values? _g18382_)
                                             (##vector-length _g18382_)
                                             1)))
                                    (if (not (##fx= _g18383_ 2))
                                        (error "Context expects 2 values"
                                               _g18383_)))
                                  (let ((_hd-e18018_ (##vector-ref _g18380_ 0))
                                        (_hd-vars18019_
                                         (##vector-ref _g18380_ 1)))
                                    (let ((_tl-e18020_
                                           (##vector-ref _g18382_ 0))
                                          (_tl-vars18021_
                                           (##vector-ref _g18382_ 1)))
                                      (let _lp18023_ ((_rest18025_
                                                       _hd-vars18019_)
                                                      (_targets18026_ '())
                                                      (_vars18027_
                                                       _tl-vars18021_))
                                        (let* ((_rest1802818038_ _rest18025_)
                                               (_else1803018046_
                                                (lambda ()
                                                  (if (null? _targets18026_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17853_
                                                       _where18013_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth18014_
                                  (cons _hd-e18018_
                                        (cons _tl-e18020_ _targets18026_))))
                      _vars18027_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1803218055_
                                                (lambda (_rest18049_
                                                         _hd-pat18050_
                                                         _hd-depth*18051_)
                                                  (let ((_hd-depth18053_
                                                         (fx- _hd-depth*18051_
                                                              _depth18014_)))
                                                    (if (fxpositive?
                                                         _hd-depth18053_)
                                                        (_lp18023_
                                                         _rest18049_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat18050_)
                       _targets18026_)
                 (cons (cons _hd-depth18053_ _hd-pat18050_) _vars18027_))
                (if (fxzero? _hd-depth18053_)
                    (_lp18023_
                     _rest18049_
                     (cons (cons 'pattern _hd-pat18050_) _targets18026_)
                     _vars18027_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17853_
                     _where18013_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1802818038_)
                                              (let ((_hd1803318058_
                                                     (##car _rest1802818038_))
                                                    (_tl1803418060_
                                                     (##cdr _rest1802818038_)))
                                                (if (##pair? _hd1803318058_)
                                                    (let ((_hd1803518063_
                                                           (##car _hd1803318058_))
                                                          (_tl1803618065_
                                                           (##cdr _hd1803318058_)))
                                                      (let* ((_hd-depth*18068_
                                                              _hd1803518063_)
                                                             (_hd-pat18070_
                                                              _tl1803618065_)
                                                             (_rest18072_
                                                              _tl1803418060_))
                                                        (_K1803218055_
                                                         _rest18072_
                                                         _hd-pat18070_
                                                         _hd-depth*18068_)))
                                                    (_else1803018046_)))
                                              (_else1803018046_))))))))))
                           (_recur17901_
                            (lambda (_e17906_ _is-e?17907_)
                              (if (_is-e?17907_ _e17906_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17853_)
                                  (if (gx#syntax-local-pattern? _e17906_)
                                      (let* ((_pat17909_
                                              (gx#syntax-local-e__0 _e17906_))
                                             (_depth17911_
                                              (##structure-ref
                                               _pat17909_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17911_)
                                            (values (cons 'ref _pat17909_)
                                                    (cons (cons _depth17911_
                                                                _pat17909_)
                                                          '()))
                                            (values (cons 'pattern _pat17909_)
                                                    '())))
                                      (if (gx#identifier? _e17906_)
                                          (values (cons 'term _e17906_) '())
                                          (if (gx#stx-pair? _e17906_)
                                              (let* ((_e1791317920_ _e17906_)
                                                     (_E1791517924_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1791317920_)))
                                                     (_E1791418003_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1791317920_)
                                                            (let ((_e1791617928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1791317920_)))
                      (let ((_hd1791717931_ (##car _e1791617928_))
                            (_tl1791817933_ (##cdr _e1791617928_)))
                        (let* ((_hd17936_ _hd1791717931_)
                               (_rest17938_ _tl1791817933_))
                          (if '#t
                              (if (_is-e?17907_ _hd17936_)
                                  (let* ((_e1793917946_ _rest17938_)
                                         (_E1794117950_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17853_
                                             _e17906_)))
                                         (_E1794017964_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1793917946_)
                                                (let ((_e1794217954_
                                                       (gx#syntax-e
                                                        _e1793917946_)))
                                                  (let ((_hd1794317957_
                                                         (##car _e1794217954_))
                                                        (_tl1794417959_
                                                         (##cdr _e1794217954_)))
                                                    (let ((_rest17962_
                                                           _hd1794317957_))
                                                      (if (gx#stx-null?
                                                           _tl1794417959_)
                                                          (if '#t
                                                              (_recur17901_
                                                               _rest17962_
                                                               false)
                                                              (_E1794117950_))
                                                          (_E1794117950_)))))
                                                (_E1794117950_)))))
                                    (_E1794017964_))
                                  (let _lp17968_ ((_rest17970_ _rest17938_)
                                                  (_depth17971_ '0))
                                    (let* ((_e1797217979_ _rest17970_)
                                           (_E1797417983_
                                            (lambda ()
                                              (if (fxpositive? _depth17971_)
                                                  (_make-splice17900_
                                                   _e17906_
                                                   _depth17971_
                                                   (_recur17901_
                                                    _hd17936_
                                                    _is-e?17907_)
                                                   (_recur17901_
                                                    _rest17970_
                                                    _is-e?17907_))
                                                  (_make-cons17899_
                                                   (_recur17901_
                                                    _hd17936_
                                                    _is-e?17907_)
                                                   (_recur17901_
                                                    _rest17970_
                                                    _is-e?17907_)))))
                                           (_E1797317999_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1797217979_)
                                                  (let ((_e1797517987_
                                                         (gx#syntax-e
                                                          _e1797217979_)))
                                                    (let ((_hd1797617990_
                                                           (##car _e1797517987_))
                                                          (_tl1797717992_
                                                           (##cdr _e1797517987_)))
                                                      (let* ((_rest-hd17995_
                                                              _hd1797617990_)
                                                             (_rest-tl17997_
                                                              _tl1797717992_))
                                                        (if '#t
                                                            (if (_is-e?17907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17995_)
                        (_lp17968_ _rest-tl17997_ (fx+ _depth17971_ '1))
                        (if (fxpositive? _depth17971_)
                            (_make-splice17900_
                             _e17906_
                             _depth17971_
                             (_recur17901_ _hd17936_ _is-e?17907_)
                             (_recur17901_ _rest17970_ _is-e?17907_))
                            (_make-cons17899_
                             (_recur17901_ _hd17936_ _is-e?17907_)
                             (_recur17901_ _rest17970_ _is-e?17907_))))
                    (_E1797417983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1797417983_)))))
                                      (_E1797317999_))))
                              (_E1791517924_)))))
                    (_E1791517924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1791418003_))
                                              (if (gx#stx-vector? _e17906_)
                                                  (let ((_g18384_
                                                         (_recur17901_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17906_))
                                                          _is-e?17907_)))
                                                    (begin
                                                      (let ((_g18385_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g18384_)
                         (##vector-length _g18384_)
                         1)))
                (if (not (##fx= _g18385_ 2))
                    (error "Context expects 2 values" _g18385_)))
              (let ((_e18007_ (##vector-ref _g18384_ 0))
                    (_vars18008_ (##vector-ref _g18384_ 1)))
                (values (cons 'vector _e18007_) _vars18008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17906_)
                                                      (let ((_g18386_
                                                             (_recur17901_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17906_))
                      _is-e?17907_)))
                (begin
                  (let ((_g18387_
                         (if (##values? _g18386_)
                             (##vector-length _g18386_)
                             1)))
                    (if (not (##fx= _g18387_ 2))
                        (error "Context expects 2 values" _g18387_)))
                  (let ((_e18010_ (##vector-ref _g18386_ 0))
                        (_vars18011_ (##vector-ref _g18386_ 1)))
                    (values (cons 'box _e18010_) _vars18011_))))
              (values (cons 'datum _e17906_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g18388_ (_recur17901_ _e17897_ gx#ellipsis?)))
                      (begin
                        (let ((_g18389_
                               (if (##values? _g18388_)
                                   (##vector-length _g18388_)
                                   1)))
                          (if (not (##fx= _g18389_ 2))
                              (error "Context expects 2 values" _g18389_)))
                        (let ((_tree17903_ (##vector-ref _g18388_ 0))
                              (_vars17904_ (##vector-ref _g18388_ 1)))
                          (if (null? _vars17904_)
                              _tree17903_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17853_
                               _vars17904_)))))))))
        (let* ((_e1785717867_ _stx17853_)
               (_E1785917871_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17853_)))
               (_E1785817893_
                (lambda ()
                  (if (gx#stx-pair? _e1785717867_)
                      (let ((_e1786017875_ (gx#syntax-e _e1785717867_)))
                        (let ((_hd1786117878_ (##car _e1786017875_))
                              (_tl1786217880_ (##cdr _e1786017875_)))
                          (if (gx#stx-pair? _tl1786217880_)
                              (let ((_e1786317883_
                                     (gx#syntax-e _tl1786217880_)))
                                (let ((_hd1786417886_ (##car _e1786317883_))
                                      (_tl1786517888_ (##cdr _e1786317883_)))
                                  (let ((_form17891_ _hd1786417886_))
                                    (if (gx#stx-null? _tl1786517888_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17855_
                                              (_parse17856_ _form17891_))
                                             (gx#stx-source _stx17853_))
                                            (_E1785917871_))
                                        (_E1785917871_)))))
                              (_E1785917871_))))
                      (_E1785917871_)))))
          (_E1785817893_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx17117_ _identifier=?17118_ _unwrap-e17119_ _wrap-e17120_)
        (letrec ((_generate-bindings17122_
                  (lambda (_target17717_
                           _ids17718_
                           _clauses17719_
                           _clause-ids17720_
                           _E17721_)
                    (letrec ((_generate117723_
                              (lambda (_clause17820_ _clause-id17821_ _E17822_)
                                (cons (cons _clause-id17821_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17717_ '())
                                             (_generate-clause17124_
                                              _target17717_
                                              _ids17718_
                                              _clause17820_
                                              _E17822_))
                                            '())))))
                      (let _lp17725_ ((_rest17727_ _clauses17719_)
                                      (_rest-ids17728_ _clause-ids17720_)
                                      (_bindings17729_ '()))
                        (let* ((_rest1773017738_ _rest17727_)
                               (_else1773217746_ (lambda () _bindings17729_))
                               (_K1773417808_
                                (lambda (_rest17749_ _clause17750_)
                                  (let* ((_rest-ids1775117758_ _rest-ids17728_)
                                         (_E1775317762_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1775117758_)))
                                         (_K1775417796_
                                          (lambda (_rest-ids17765_
                                                   _clause-id17766_)
                                            (let* ((_rest-ids1776717775_
                                                    _rest-ids17765_)
                                                   (_else1776917783_
                                                    (lambda ()
                                                      (cons (_generate117723_
                                                             _clause17750_
                                                             _clause-id17766_
                                                             _E17721_)
                                                            _bindings17729_)))
                                                   (_K1777117788_
                                                    (lambda (_next-clause-id17786_)
                                                      (_lp17725_
                                                       _rest17749_
                                                       _rest-ids17765_
                                                       (cons (_generate117723_
                                                              _clause17750_
                                                              _clause-id17766_
                                                              _next-clause-id17786_)
                                                             _bindings17729_)))))
                                              (if (##pair? _rest-ids1776717775_)
                                                  (let* ((_hd1777217791_
                                                          (##car _rest-ids1776717775_))
                                                         (_next-clause-id17794_
                                                          _hd1777217791_))
                                                    (_K1777117788_
                                                     _next-clause-id17794_))
                                                  (_else1776917783_))))))
                                    (if (##pair? _rest-ids1775117758_)
                                        (let ((_hd1775517799_
                                               (##car _rest-ids1775117758_))
                                              (_tl1775617801_
                                               (##cdr _rest-ids1775117758_)))
                                          (let* ((_clause-id17804_
                                                  _hd1775517799_)
                                                 (_rest-ids17806_
                                                  _tl1775617801_))
                                            (_K1775417796_
                                             _rest-ids17806_
                                             _clause-id17804_)))
                                        (_E1775317762_))))))
                          (if (##pair? _rest1773017738_)
                              (let ((_hd1773517811_ (##car _rest1773017738_))
                                    (_tl1773617813_ (##cdr _rest1773017738_)))
                                (let* ((_clause17816_ _hd1773517811_)
                                       (_rest17818_ _tl1773617813_))
                                  (_K1773417808_ _rest17818_ _clause17816_)))
                              (_else1773217746_)))))))
                 (_generate-body17123_
                  (lambda (_bindings17677_ _body17678_)
                    (let _recur17680_ ((_rest17682_ _bindings17677_))
                      (let* ((_rest1768317691_ _rest17682_)
                             (_else1768517699_ (lambda () _body17678_))
                             (_K1768717705_
                              (lambda (_rest17702_ _hd17703_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17703_ '())
                                 (_recur17680_ _rest17702_)))))
                        (if (##pair? _rest1768317691_)
                            (let ((_hd1768817708_ (##car _rest1768317691_))
                                  (_tl1768917710_ (##cdr _rest1768317691_)))
                              (let* ((_hd17713_ _hd1768817708_)
                                     (_rest17715_ _tl1768917710_))
                                (_K1768717705_ _rest17715_ _hd17713_)))
                            (_else1768517699_))))))
                 (_generate-clause17124_
                  (lambda (_target17540_ _ids17541_ _clause17542_ _E17543_)
                    (letrec ((_generate117545_
                              (lambda (_hd17632_ _fender17633_ _body17634_)
                                (let ((_g18390_
                                       (_parse-clause17126_
                                        _hd17632_
                                        _ids17541_)))
                                  (begin
                                    (let ((_g18391_
                                           (if (##values? _g18390_)
                                               (##vector-length _g18390_)
                                               1)))
                                      (if (not (##fx= _g18391_ 2))
                                          (error "Context expects 2 values"
                                                 _g18391_)))
                                    (let ((_e17636_ (##vector-ref _g18390_ 0))
                                          (_mvars17637_
                                           (##vector-ref _g18390_ 1)))
                                      (let* ((_pvars17639_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17637_)))
                                             (_E17641_
                                              (cons _E17543_
                                                    (cons _target17540_ '())))
                                             (_K17674_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17639_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17643_
                                                              _pvar17644_)
                                                       (let* ((_mvar1764517652_
                                                               _mvar17643_)
                                                              (_E1764717656_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1764517652_)))
                      (_K1764817662_
                       (lambda (_depth17659_ _id17660_)
                         (cons _id17660_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17660_)
                                      (gx#core-list 'quote _pvar17644_)
                                      _depth17659_)
                                     '())))))
                 (if (##pair? _mvar1764517652_)
                     (let ((_hd1764917665_ (##car _mvar1764517652_))
                           (_tl1765017667_ (##cdr _mvar1764517652_)))
                       (let* ((_id17670_ _hd1764917665_)
                              (_depth17672_ _tl1765017667_))
                         (_K1764817662_ _depth17672_ _id17670_)))
                     (_E1764717656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17637_
                                                     _pvars17639_)
                                                (if (eq? _fender17633_ '#t)
                                                    _body17634_
                                                    (gx#core-list
                                                     'if
                                                     _fender17633_
                                                     _body17634_
                                                     _E17641_))))))
                                        (_generate-match17125_
                                         _hd17632_
                                         _target17540_
                                         _e17636_
                                         _mvars17637_
                                         _K17674_
                                         _E17641_))))))))
                      (let* ((_e1754617566_ _clause17542_)
                             (_E1755517570_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1754617566_)))
                             (_E1754817604_
                              (lambda ()
                                (if (gx#stx-pair? _e1754617566_)
                                    (let ((_e1755617574_
                                           (gx#syntax-e _e1754617566_)))
                                      (let ((_hd1755717577_
                                             (##car _e1755617574_))
                                            (_tl1755817579_
                                             (##cdr _e1755617574_)))
                                        (let ((_hd17582_ _hd1755717577_))
                                          (if (gx#stx-pair? _tl1755817579_)
                                              (let ((_e1755917584_
                                                     (gx#syntax-e
                                                      _tl1755817579_)))
                                                (let ((_hd1756017587_
                                                       (##car _e1755917584_))
                                                      (_tl1756117589_
                                                       (##cdr _e1755917584_)))
                                                  (let ((_fender17592_
                                                         _hd1756017587_))
                                                    (if (gx#stx-pair?
                                                         _tl1756117589_)
                                                        (let ((_e1756217594_
                                                               (gx#syntax-e
                                                                _tl1756117589_)))
                                                          (let ((_hd1756317597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1756217594_))
                        (_tl1756417599_ (##cdr _e1756217594_)))
                    (let ((_body17602_ _hd1756317597_))
                      (if (gx#stx-null? _tl1756417599_)
                          (if '#t
                              (_generate117545_
                               _hd17582_
                               _fender17592_
                               _body17602_)
                              (_E1755517570_))
                          (_E1755517570_)))))
                (_E1755517570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1755517570_)))))
                                    (_E1755517570_))))
                             (_E1754717628_
                              (lambda ()
                                (if (gx#stx-pair? _e1754617566_)
                                    (let ((_e1754917608_
                                           (gx#syntax-e _e1754617566_)))
                                      (let ((_hd1755017611_
                                             (##car _e1754917608_))
                                            (_tl1755117613_
                                             (##cdr _e1754917608_)))
                                        (let ((_hd17616_ _hd1755017611_))
                                          (if (gx#stx-pair? _tl1755117613_)
                                              (let ((_e1755217618_
                                                     (gx#syntax-e
                                                      _tl1755117613_)))
                                                (let ((_hd1755317621_
                                                       (##car _e1755217618_))
                                                      (_tl1755417623_
                                                       (##cdr _e1755217618_)))
                                                  (let ((_body17626_
                                                         _hd1755317621_))
                                                    (if (gx#stx-null?
                                                         _tl1755417623_)
                                                        (if '#t
                                                            (_generate117545_
                                                             _hd17616_
                                                             '#t
                                                             _body17626_)
                                                            (_E1754817604_))
                                                        (_E1754817604_)))))
                                              (_E1754817604_)))))
                                    (_E1754817604_)))))
                        (_E1754717628_)))))
                 (_generate-match17125_
                  (lambda (_where17289_
                           _target17290_
                           _hd17291_
                           _mvars17292_
                           _K17293_
                           _E17294_)
                    (letrec ((_BUG17296_
                              (lambda (_q17538_)
                                (error '"BUG: syntax-case; generate"
                                       _stx17117_
                                       _hd17291_
                                       _q17538_)))
                             (_recur17297_
                              (lambda (_e17388_
                                       _vars17389_
                                       _target17390_
                                       _E17391_
                                       _k17392_)
                                (let* ((_e1739317400_ _e17388_)
                                       (_E1739517404_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1739317400_)))
                                       (_K1739617526_
                                        (lambda (_body17407_ _tag17408_)
                                          (let ((_$e17410_ _tag17408_))
                                            (if (eq? 'any _$e17410_)
                                                (_k17392_ _vars17389_)
                                                (if (eq? 'id _$e17410_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target17390_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?17118_
                                                       (gx#core-list
                                                        _wrap-e17120_
                                                        _body17407_)
                                                       _target17390_)
                                                      (_k17392_ _vars17389_)
                                                      _E17391_)
                                                     _E17391_)
                                                    (if (eq? 'var _$e17410_)
                                                        (_k17392_
                                                         (cons (cons _body17407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target17390_)
                       _vars17389_))
                (if (eq? 'cons _$e17410_)
                    (let ((_$e17413_ (gx#genident__1 'e))
                          (_$hd17414_ (gx#genident__1 'hd))
                          (_$tl17415_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target17390_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e17413_ '())
                                    (cons (gx#core-list
                                           _unwrap-e17119_
                                           _target17390_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd17414_ '())
                                     (cons (gx#core-list '##car _$e17413_)
                                           '()))
                               (cons (cons (cons _$tl17415_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e17413_)
                                                 '()))
                                     '()))
                         (let* ((_body1741617423_ _body17407_)
                                (_E1741817427_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1741617423_)))
                                (_K1741917435_
                                 (lambda (_tl17430_ _hd17431_)
                                   (_recur17297_
                                    _hd17431_
                                    _vars17389_
                                    _$hd17414_
                                    _E17391_
                                    (lambda (_vars17433_)
                                      (_recur17297_
                                       _tl17430_
                                       _vars17433_
                                       _$tl17415_
                                       _E17391_
                                       _k17392_))))))
                           (if (##pair? _body1741617423_)
                               (let ((_hd1742017438_ (##car _body1741617423_))
                                     (_tl1742117440_ (##cdr _body1741617423_)))
                                 (let* ((_hd17443_ _hd1742017438_)
                                        (_tl17445_ _tl1742117440_))
                                   (_K1741917435_ _tl17445_ _hd17443_)))
                               (_E1741817427_)))))
                       _E17391_))
                    (if (eq? 'splice _$e17410_)
                        (let* ((_body1744617453_ _body17407_)
                               (_E1744817457_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1744617453_)))
                               (_K1744917508_
                                (lambda (_tl17460_ _hd17461_)
                                  (let* ((_rlen17463_
                                          (_splice-rlen17298_ _tl17460_))
                                         (_$target17465_
                                          (gx#genident__1 'target))
                                         (_$hd17467_ (gx#genident__1 'hd))
                                         (_$tl17469_ (gx#genident__1 'tl))
                                         (_$lp17471_ (gx#genident__1 'loop))
                                         (_$lp-e17473_ (gx#genident__1 'e))
                                         (_$lp-hd17475_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl17477_
                                          (gx#genident__1 'lp-tl))
                                         (_svars17479_
                                          (_splice-vars17299_ _hd17461_))
                                         (_lvars17481_
                                          (gx#gentemps _svars17479_))
                                         (_tlvars17483_
                                          (gx#gentemps _svars17479_))
                                         (_linit17487_
                                          (map (lambda (_var17485_)
                                                 (gx#core-list 'quote '()))
                                               _lvars17481_)))
                                    (letrec ((_make-loop17490_
                                              (lambda (_vars17494_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp17471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd17467_ _lvars17481_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd17467_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e17473_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e17119_
                                                 _$hd17467_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd17475_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e17473_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl17477_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e17473_)
                                                       '()))
                                           '()))
                               (_recur17297_
                                _hd17461_
                                '()
                                _$lp-hd17475_
                                _E17391_
                                (lambda (_hdvars17496_)
                                  (cons _$lp17471_
                                        (cons _$lp-tl17477_
                                              (map (lambda (_svar17498_
                                                            _lvar17499_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar17498_
                                                               _hdvars17496_
                                                               _BUG17296_)
                                                      _lvar17499_))
                                                   _svars17479_
                                                   _lvars17481_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar17501_ _tlvar17502_)
                                     (cons (cons _tlvar17502_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar17501_)
                                                 '())))
                                   _lvars17481_
                                   _tlvars17483_)
                              (_k17392_
                               (foldl2 (lambda (_svar17504_
                                                _tlvar17505_
                                                _r17506_)
                                         (cons (cons _svar17504_ _tlvar17505_)
                                               _r17506_))
                                       _vars17494_
                                       _svars17479_
                                       _tlvars17483_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp17471_
                                                       (cons _$target17465_
                                                             _linit17487_))))))
                                      (let ((_body17492_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target17465_
                                                                (cons _$tl17469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target17390_
                         _rlen17463_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur17297_
                                               _tl17460_
                                               _vars17389_
                                               _$tl17469_
                                               _E17391_
                                               _make-loop17490_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target17390_)
                                         (if (zero? _rlen17463_)
                                             _body17492_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target17390_)
                                               _rlen17463_)
                                              _body17492_
                                              _E17391_))
                                         _E17391_)))))))
                          (if (##pair? _body1744617453_)
                              (let ((_hd1745017511_ (##car _body1744617453_))
                                    (_tl1745117513_ (##cdr _body1744617453_)))
                                (let* ((_hd17516_ _hd1745017511_)
                                       (_tl17518_ _tl1745117513_))
                                  (_K1744917508_ _tl17518_ _hd17516_)))
                              (_E1744817457_)))
                        (if (eq? 'null _$e17410_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target17390_)
                             (_k17392_ _vars17389_)
                             _E17391_)
                            (if (eq? 'vector _$e17410_)
                                (let ((_$e17520_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target17390_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e17520_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e17119_
                                                        _target17390_))
                                                      '()))
                                          '())
                                    (_recur17297_
                                     _body17407_
                                     _vars17389_
                                     _$e17520_
                                     _E17391_
                                     _k17392_))
                                   _E17391_))
                                (if (eq? 'box _$e17410_)
                                    (let ((_$e17522_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target17390_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e17522_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e17119_
                                                            _target17390_))
                                                          '()))
                                              '())
                                        (_recur17297_
                                         _body17407_
                                         _vars17389_
                                         _$e17522_
                                         _E17391_
                                         _k17392_))
                                       _E17391_))
                                    (if (eq? 'datum _$e17410_)
                                        (let ((_$e17524_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target17390_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e17524_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target17390_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e17524_
                                              _body17407_)
                                             (_k17392_ _vars17389_)
                                             _E17391_))
                                           _E17391_))
                                        (_BUG17296_ _e17388_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1739317400_)
                                      (let ((_hd1739717529_
                                             (##car _e1739317400_))
                                            (_tl1739817531_
                                             (##cdr _e1739317400_)))
                                        (let* ((_tag17534_ _hd1739717529_)
                                               (_body17536_ _tl1739817531_))
                                          (_K1739617526_
                                           _body17536_
                                           _tag17534_)))
                                      (_E1739517404_)))))
                             (_splice-rlen17298_
                              (lambda (_e17350_)
                                (let _lp17352_ ((_e17354_ _e17350_)
                                                (_n17355_ '0))
                                  (let* ((_e1735617363_ _e17354_)
                                         (_E1735817367_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1735617363_)))
                                         (_K1735917376_
                                          (lambda (_body17370_ _tag17371_)
                                            (let ((_$e17373_ _tag17371_))
                                              (if (eq? 'splice _$e17373_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx17117_
                                                   _where17289_)
                                                  (if (eq? 'cons _$e17373_)
                                                      (_lp17352_
                                                       (cdr _body17370_)
                                                       (fx+ _n17355_ '1))
                                                      _n17355_))))))
                                    (if (##pair? _e1735617363_)
                                        (let ((_hd1736017379_
                                               (##car _e1735617363_))
                                              (_tl1736117381_
                                               (##cdr _e1735617363_)))
                                          (let* ((_tag17384_ _hd1736017379_)
                                                 (_body17386_ _tl1736117381_))
                                            (_K1735917376_
                                             _body17386_
                                             _tag17384_)))
                                        (_E1735817367_))))))
                             (_splice-vars17299_
                              (lambda (_e17306_)
                                (let _recur17308_ ((_e17310_ _e17306_)
                                                   (_vars17311_ '()))
                                  (let* ((_e1731217319_ _e17310_)
                                         (_E1731417323_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1731217319_)))
                                         (_K1731517338_
                                          (lambda (_body17326_ _tag17327_)
                                            (let ((_$e17329_ _tag17327_))
                                              (if (eq? 'var _$e17329_)
                                                  (cons _body17326_
                                                        _vars17311_)
                                                  (if (let ((_$e17332_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e17329_)))
                (if _$e17332_ _$e17332_ (eq? 'splice _$e17329_)))
              (_recur17308_
               (cdr _body17326_)
               (_recur17308_ (car _body17326_) _vars17311_))
              (if (let ((_$e17335_ (eq? 'vector _$e17329_)))
                    (if _$e17335_ _$e17335_ (eq? 'box _$e17329_)))
                  (_recur17308_ _body17326_ _vars17311_)
                  _vars17311_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1731217319_)
                                        (let ((_hd1731617341_
                                               (##car _e1731217319_))
                                              (_tl1731717343_
                                               (##cdr _e1731217319_)))
                                          (let* ((_tag17346_ _hd1731617341_)
                                                 (_body17348_ _tl1731717343_))
                                            (_K1731517338_
                                             _body17348_
                                             _tag17346_)))
                                        (_E1731417323_))))))
                             (_make-body17300_
                              (lambda (_vars17302_)
                                (cons _K17293_
                                      (map (lambda (_mvar17304_)
                                             (assgetq (car _mvar17304_)
                                                      _vars17302_
                                                      _BUG17296_))
                                           _mvars17292_)))))
                      (_recur17297_
                       _hd17291_
                       '()
                       _target17290_
                       _E17294_
                       _make-body17300_))))
                 (_parse-clause17126_
                  (lambda (_hd17195_ _ids17196_)
                    (let _recur17198_ ((_e17200_ _hd17195_)
                                       (_vars17201_ '())
                                       (_depth17202_ '0))
                      (if (gx#identifier? _e17200_)
                          (if (gx#underscore? _e17200_)
                              (values '(any) _vars17201_)
                              (if (gx#ellipsis? _e17200_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx17117_
                                   _hd17195_)
                                  (if (find (lambda (_id17204_)
                                              (gx#bound-identifier=?
                                               _e17200_
                                               _id17204_))
                                            _ids17196_)
                                      (values (cons 'id _e17200_) _vars17201_)
                                      (if (find (lambda (_var17206_)
                                                  (gx#bound-identifier=?
                                                   _e17200_
                                                   (car _var17206_)))
                                                _vars17201_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx17117_
                                           _e17200_)
                                          (values (cons 'var _e17200_)
                                                  (cons (cons _e17200_
                                                              _depth17202_)
                                                        _vars17201_))))))
                          (if (gx#stx-pair? _e17200_)
                              (let* ((_e1720717214_ _e17200_)
                                     (_E1720917218_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1720717214_)))
                                     (_E1720817279_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1720717214_)
                                            (let ((_e1721017222_
                                                   (gx#syntax-e
                                                    _e1720717214_)))
                                              (let ((_hd1721117225_
                                                     (##car _e1721017222_))
                                                    (_tl1721217227_
                                                     (##cdr _e1721017222_)))
                                                (let* ((_hd17230_
                                                        _hd1721117225_)
                                                       (_rest17232_
                                                        _tl1721217227_))
                                                  (if '#t
                                                      (let* ((_make-pair17247_
                                                              (lambda (_tag17234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd17235_
                               _tl17236_)
                        (let* ((_hd-depth17238_
                                (if (eq? _tag17234_ 'splice)
                                    (fx+ _depth17202_ '1)
                                    _depth17202_))
                               (_g18392_
                                (_recur17198_
                                 _hd17235_
                                 _vars17201_
                                 _hd-depth17238_)))
                          (begin
                            (let ((_g18393_
                                   (if (##values? _g18392_)
                                       (##vector-length _g18392_)
                                       1)))
                              (if (not (##fx= _g18393_ 2))
                                  (error "Context expects 2 values" _g18393_)))
                            (let ((_hd17240_ (##vector-ref _g18392_ 0))
                                  (_vars17241_ (##vector-ref _g18392_ 1)))
                              (let ((_g18394_
                                     (_recur17198_
                                      _tl17236_
                                      _vars17241_
                                      _depth17202_)))
                                (begin
                                  (let ((_g18395_
                                         (if (##values? _g18394_)
                                             (##vector-length _g18394_)
                                             1)))
                                    (if (not (##fx= _g18395_ 2))
                                        (error "Context expects 2 values"
                                               _g18395_)))
                                  (let ((_tl17243_ (##vector-ref _g18394_ 0))
                                        (_vars17244_
                                         (##vector-ref _g18394_ 1)))
                                    (let ()
                                      (values (cons _tag17234_
                                                    (cons _hd17240_ _tl17243_))
                                              _vars17244_))))))))))
                     (_e1724817255_ _rest17232_)
                     (_E1725017259_
                      (lambda ()
                        (_make-pair17247_ 'cons _hd17230_ _rest17232_)))
                     (_E1724917275_
                      (lambda ()
                        (if (gx#stx-pair? _e1724817255_)
                            (let ((_e1725117263_ (gx#syntax-e _e1724817255_)))
                              (let ((_hd1725217266_ (##car _e1725117263_))
                                    (_tl1725317268_ (##cdr _e1725117263_)))
                                (let* ((_rest-hd17271_ _hd1725217266_)
                                       (_rest-tl17273_ _tl1725317268_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd17271_)
                                          (_make-pair17247_
                                           'splice
                                           _hd17230_
                                           _rest-tl17273_)
                                          (_make-pair17247_
                                           'cons
                                           _hd17230_
                                           _rest17232_))
                                      (_E1725017259_)))))
                            (_E1725017259_)))))
                (_E1724917275_))
              (_E1720917218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1720917218_)))))
                                (_E1720817279_))
                              (if (gx#stx-null? _e17200_)
                                  (values '(null) _vars17201_)
                                  (if (gx#stx-vector? _e17200_)
                                      (let ((_g18396_
                                             (_recur17198_
                                              (vector->list
                                               (gx#syntax-e _e17200_))
                                              _vars17201_
                                              _depth17202_)))
                                        (begin
                                          (let ((_g18397_
                                                 (if (##values? _g18396_)
                                                     (##vector-length _g18396_)
                                                     1)))
                                            (if (not (##fx= _g18397_ 2))
                                                (error "Context expects 2 values"
                                                       _g18397_)))
                                          (let ((_e17283_
                                                 (##vector-ref _g18396_ 0))
                                                (_vars17284_
                                                 (##vector-ref _g18396_ 1)))
                                            (values (cons 'vector _e17283_)
                                                    _vars17284_))))
                                      (if (gx#stx-box? _e17200_)
                                          (let ((_g18398_
                                                 (_recur17198_
                                                  (unbox (gx#syntax-e
                                                          _e17200_))
                                                  _vars17201_
                                                  _depth17202_)))
                                            (begin
                                              (let ((_g18399_
                                                     (if (##values? _g18398_)
                                                         (##vector-length
                                                          _g18398_)
                                                         1)))
                                                (if (not (##fx= _g18399_ 2))
                                                    (error "Context expects 2 values"
                                                           _g18399_)))
                                              (let ((_e17286_
                                                     (##vector-ref _g18398_ 0))
                                                    (_vars17287_
                                                     (##vector-ref
                                                      _g18398_
                                                      1)))
                                                (values (cons 'box _e17286_)
                                                        _vars17287_))))
                                          (if (gx#stx-datum? _e17200_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e17200_))
                                                      _vars17201_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx17117_
                                               _e17200_)))))))))))
          (let* ((_e1712717140_ _stx17117_)
                 (_E1712917144_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1712717140_)))
                 (_E1712817191_
                  (lambda ()
                    (if (gx#stx-pair? _e1712717140_)
                        (let ((_e1713017148_ (gx#syntax-e _e1712717140_)))
                          (let ((_hd1713117151_ (##car _e1713017148_))
                                (_tl1713217153_ (##cdr _e1713017148_)))
                            (if (gx#stx-pair? _tl1713217153_)
                                (let ((_e1713317156_
                                       (gx#syntax-e _tl1713217153_)))
                                  (let ((_hd1713417159_ (##car _e1713317156_))
                                        (_tl1713517161_ (##cdr _e1713317156_)))
                                    (let ((_expr17164_ _hd1713417159_))
                                      (if (gx#stx-pair? _tl1713517161_)
                                          (let ((_e1713617166_
                                                 (gx#syntax-e _tl1713517161_)))
                                            (let ((_hd1713717169_
                                                   (##car _e1713617166_))
                                                  (_tl1713817171_
                                                   (##cdr _e1713617166_)))
                                              (let* ((_ids17174_
                                                      _hd1713717169_)
                                                     (_clauses17176_
                                                      _tl1713817171_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids17174_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx17117_
                                                         _ids17174_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses17176_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx17117_)
                    (let* ((_ids17178_ (gx#syntax->list _ids17174_))
                           (_clauses17180_ (gx#syntax->list _clauses17176_))
                           (_clause-ids17182_ (gx#gentemps _clauses17180_))
                           (_E17184_ (gx#genident__0))
                           (_target17186_ (gx#genident__0))
                           (_first17188_
                            (if (null? _clauses17180_)
                                _E17184_
                                (car _clause-ids17182_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E17184_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17186_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target17186_))
                                            '()))
                                '())
                          (_generate-body17123_
                           (_generate-bindings17122_
                            _target17186_
                            _ids17178_
                            _clauses17180_
                            _clause-ids17182_
                            _E17184_)
                           (cons _first17188_ (cons _expr17164_ '()))))
                         (gx#stx-source _stx17117_)))
                       (gx#stx-source _stx17117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1712917144_)))))
                                          (_E1712917144_)))))
                                (_E1712917144_))))
                        (_E1712917144_)))))
            (_E1712817191_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17827_)
          (let* ((_identifier=?17829_ 'free-identifier=?)
                 (_unwrap-e17831_ 'syntax-e)
                 (_wrap-e17833_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17827_
             _identifier=?17829_
             _unwrap-e17831_
             _wrap-e17833_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17835_ _identifier=?17836_)
          (let* ((_unwrap-e17838_ 'syntax-e) (_wrap-e17840_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17835_
             _identifier=?17836_
             _unwrap-e17838_
             _wrap-e17840_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17842_ _identifier=?17843_ _unwrap-e17844_)
          (let ((_wrap-e17846_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17842_
             _identifier=?17843_
             _unwrap-e17844_
             _wrap-e17846_))))
      (define gx#macro-expand-syntax-case
        (lambda _g18401_
          (let ((_g18400_ (length _g18401_)))
            (cond ((##fx= _g18400_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g18401_))
                  ((##fx= _g18400_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g18401_))
                  ((##fx= _g18400_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g18401_))
                  ((##fx= _g18400_ 4)
                   (apply gx#macro-expand-syntax-case__% _g18401_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g18401_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx17114_)
      (if (gx#identifier? _stx17114_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx17114_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd17072_ . _rest17073_)
      (let ((_len17075_ (length _hd17072_)))
        (let _lp17077_ ((_rest17079_ _rest17073_))
          (let* ((_rest1708017088_ _rest17079_)
                 (_else1708217096_ (lambda () '#!void))
                 (_K1708417102_
                  (lambda (_rest17099_ _hd17100_)
                    (if (fx= _len17075_ (length _hd17100_))
                        (_lp17077_ _rest17099_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd17100_)))))
            (if (##pair? _rest1708017088_)
                (let ((_hd1708517105_ (##car _rest1708017088_))
                      (_tl1708617107_ (##cdr _rest1708017088_)))
                  (let* ((_hd17110_ _hd1708517105_)
                         (_rest17112_ _tl1708617107_))
                    (_K1708417102_ _rest17112_ _hd17110_)))
                (_else1708217096_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx17030_ _n17031_)
      (let _lp17033_ ((_rest17035_ _stx17030_) (_r17036_ '()))
        (if (gx#stx-pair? _rest17035_)
            (let* ((_g1703717044_ (gx#syntax-e _rest17035_))
                   (_E1703917048_
                    (lambda () (error '"No clause matching" _g1703717044_)))
                   (_K1704017054_
                    (lambda (_rest17051_ _hd17052_)
                      (_lp17033_ _rest17051_ (cons _hd17052_ _r17036_)))))
              (if (##pair? _g1703717044_)
                  (let ((_hd1704117057_ (##car _g1703717044_))
                        (_tl1704217059_ (##cdr _g1703717044_)))
                    (let* ((_hd17062_ _hd1704117057_)
                           (_rest17064_ _tl1704217059_))
                      (_K1704017054_ _rest17064_ _hd17062_)))
                  (_E1703917048_)))
            (let _lp17066_ ((_n17068_ _n17031_)
                            (_l17069_ _r17036_)
                            (_r17070_ _rest17035_))
              (if (null? _l17069_)
                  (values _l17069_ _r17070_)
                  (if (fxpositive? _n17068_)
                      (_lp17066_
                       (fx- _n17068_ '1)
                       (cdr _l17069_)
                       (cons (car _l17069_) _r17070_))
                      (values (reverse _l17069_) _r17070_)))))))))
