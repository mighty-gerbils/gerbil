(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g96081_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96083_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96085_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96087_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96088_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96090_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96091_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96093_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96094_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96096_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96097_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx95387_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx95387_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx95390_)
        (let* ((_g9539395417_
                (lambda (_g9539495413_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9539495413_))))
               (_g9539295720_
                (lambda (_g9539495421_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9539495421_))
                      (let ((_e9539995424_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9539495421_))))
                        (let ((_hd9539895428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9539995424_)))
                              (_tl9539795431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9539995424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9539795431_))
                              (let ((_e9540295434_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9539795431_))))
                                (let ((_hd9540195438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9540295434_)))
                                      (_tl9540095441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9540295434_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9540095441_))
                                      (let ((_g96072_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9540095441_
                                                '0))))
                                        (begin
                                          (let ((_g96073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96072_)
                                                       (##vector-length
                                                        _g96072_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96073_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96073_)))
                                          (let ((_target9540395444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96072_ 0)))
                                                (_tl9540595447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96072_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9540595447_))
                                                (letrec ((_loop9540695450_
                                                          (lambda (_hd9540495454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9541095457_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9540495454_))
                        (let ((_e9540795460_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9540495454_))))
                          (let ((_lp-hd9540895464_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9540795460_)))
                                (_lp-tl9540995467_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9540795460_))))
                            (_loop9540695450_
                             _lp-tl9540995467_
                             (cons _lp-hd9540895464_ _clause9541095457_))))
                        (let ((_clause9541195470_
                               (reverse _clause9541095457_)))
                          ((lambda (_L95474_ _L95476_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L95476_))
                                 (let* ((_g9549595512_
                                         (lambda (_g9549695508_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9549695508_))))
                                        (_g9549495573_
                                         (lambda (_g9549695516_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9549695516_))
                                               (let ((_g96074_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9549695516_
                                                         '0))))
                                                 (begin
                                                   (let ((_g96075_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g96074_)
                        (##vector-length _g96074_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g96075_ 2)))
                 (error "Context expects 2 values" _g96075_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9549895519_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g96074_
                                                             0)))
                                                         (_tl9550095522_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g96074_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9550095522_))
                                                         (letrec ((_loop9550195525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9549995529_ _clause9550595532_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9549995529_))
                                 (let ((_e9550295535_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9549995529_))))
                                   (let ((_lp-hd9550395539_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9550295535_)))
                                         (_lp-tl9550495542_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9550295535_))))
                                     (_loop9550195525_
                                      _lp-tl9550495542_
                                      (cons _lp-hd9550395539_
                                            _clause9550595532_))))
                                 (let ((_clause9550695545_
                                        (reverse _clause9550595532_)))
                                   ((lambda (_L95549_)
                                      (let ()
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'lambda))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '$stx))
                                                          '())
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'ast-case))
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '$stx))
                              (cons _L95476_
                                    (let ((__tmp96076
                                           (lambda (_g9556495567_
                                                    _g9556595570_)
                                             (cons _g9556495567_
                                                   _g9556595570_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp96076 '() _L95549_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause9550695545_))))))
                   (_loop9550195525_ _target9549895519_ '()))
                 (_g9549595512_ _g9549695516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9549595512_
                                                _g9549695516_)))))
                                   (_g9549495573_
                                    (let ((__tmp96079
                                           (lambda (_clause95577_)
                                             (let* ((___stx9601396014_
                                                     _clause95577_)
                                                    (_g9558195608_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9601396014_)))))
                                               (let ((___kont9601696017_
                                                      (lambda (_L95693_
                                                               _L95695_)
                                                        (cons _L95695_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _L95693_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9601896019_
                                                      (lambda (_L95645_
                                                               _L95647_
                                                               _L95648_)
                                                        (cons _L95648_
                                                              (cons _L95647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _L95645_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9601396014_))
                                                     (let ((_e9558795673_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9601396014_))))
                                                       (let ((_tl9558595680_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9558795673_)))
                     (_hd9558695677_
                      (let () (declare (not safe)) (##car _e9558795673_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9558595680_))
                     (let ((_e9559095683_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9558595680_))))
                       (let ((_tl9558895690_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9559095683_)))
                             (_hd9558995687_
                              (let ()
                                (declare (not safe))
                                (##car _e9559095683_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9558895690_))
                             (___kont9601696017_ _hd9558995687_ _hd9558695677_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9558895690_))
                                 (let ((_e9560295635_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9558895690_))))
                                   (let ((_tl9560095642_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9560295635_)))
                                         (_hd9560195639_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9560295635_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9560095642_))
                                         (___kont9601896019_
                                          _hd9560195639_
                                          _hd9558995687_
                                          _hd9558695677_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9558195608_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9558195608_))))))
                     (let () (declare (not safe)) (_g9558195608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9558195608_)))))))
                                          (__tmp96077
                                           (let ((__tmp96078
                                                  (lambda (_g9571195714_
                                                           _g9571295717_)
                                                    (cons _g9571195714_
                                                          _g9571295717_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp96078
                                              '()
                                              _L95474_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp96079 __tmp96077))))
                                 (_g9539395417_ _g9539495421_)))
                           _clause9541195470_
                           _hd9540195438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9540695450_
                                                   _target9540395444_
                                                   '()))
                                                (_g9539395417_
                                                 _g9539495421_)))))
                                      (_g9539395417_ _g9539495421_))))
                              (_g9539395417_ _g9539495421_))))
                      (_g9539395417_ _g9539495421_)))))
          (_g9539295720_ _stx95390_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj96063
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96063
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96063
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 '#t '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 '#f '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 ':init! '9 '#f '#f))
        (let ((__tmp96080 |gxc[1]#_g96081_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 __tmp96080 '10 '#f '#f))
        (let ((__tmp96082 |gxc[1]#_g96083_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 __tmp96082 '11 '#f '#f))
        (let ((__tmp96084 |gxc[1]#_g96085_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 __tmp96084 '12 '#f '#f))
        (let ((__tmp96086
               (cons (cons 'gensyms |gxc[1]#_g96087_|)
                     (cons (cons 'bindings |gxc[1]#_g96088_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 __tmp96086 '13 '#f '#f))
        (let ((__tmp96089
               (cons (cons 'gensyms |gxc[1]#_g96090_|)
                     (cons (cons 'bindings |gxc[1]#_g96091_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 __tmp96089 '14 '#f '#f))
        (let ((__tmp96092
               (cons (cons 'gensyms |gxc[1]#_g96093_|)
                     (cons (cons 'bindings |gxc[1]#_g96094_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 __tmp96092 '15 '#f '#f))
        (let ((__tmp96095
               (cons (cons 'gensyms |gxc[1]#_g96096_|)
                     (cons (cons 'bindings |gxc[1]#_g96097_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj96063 __tmp96095 '16 '#f '#f))
        __obj96063))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx95726_)
        (let* ((_g9573095744_
                (lambda (_g9573195740_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9573195740_))))
               (_g9572995785_
                (lambda (_g9573195748_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9573195748_))
                      (let ((_e9573595751_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9573195748_))))
                        (let ((_hd9573495755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9573595751_)))
                              (_tl9573395758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9573595751_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9573395758_))
                              (let ((_e9573895761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9573395758_))))
                                (let ((_hd9573795765_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9573895761_)))
                                      (_tl9573695768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9573895761_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9573695768_))
                                      ((lambda (_L95771_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+verbose-mutex+))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _L95771_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd9573795765_)
                                      (_g9573095744_ _g9573195748_))))
                              (_g9573095744_ _g9573195748_))))
                      (_g9573095744_ _g9573195748_)))))
          (_g9572995785_ _$stx95726_))))))
