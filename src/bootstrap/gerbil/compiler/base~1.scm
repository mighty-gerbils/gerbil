(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130632_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130634_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130636_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130638_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130639_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130641_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130642_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130644_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130645_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130647_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130648_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129827%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129827%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129830%_)
        (let* ((_%g129833129857%_
                (lambda (_%g129834129853%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129834129853%_))))
               (_%g129832130160%_
                (lambda (_%g129834129861%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129834129861%_))
                      (let ((_%e129839129864%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129834129861%_))))
                        (let ((_%hd129838129868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129839129864%_)))
                              (_%tl129837129871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129839129864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129837129871%_))
                              (let ((_%e129842129874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129837129871%_))))
                                (let ((_%hd129841129878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129842129874%_)))
                                      (_%tl129840129881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129842129874%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129840129881%_))
                                      (let ((_g130623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129840129881%_
                                                '0))))
                                        (begin
                                          (let ((_g130624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130623_)
                                                       (##vector-length
                                                        _g130623_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130624_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130624_)))
                                          (let ((_%target129843129884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130623_ 0)))
                                                (_%tl129845129887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130623_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129845129887%_))
                                                (letrec ((_%loop129846129890%_
                                                          (lambda (_%hd129844129894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129850129897%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129844129894%_))
                        (let ((_%e129847129900%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129844129894%_))))
                          (let ((_%lp-hd129848129904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129847129900%_)))
                                (_%lp-tl129849129907%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129847129900%_))))
                            (_%loop129846129890%_
                             _%lp-tl129849129907%_
                             (cons _%lp-hd129848129904%_
                                   _%clause129850129897%_))))
                        (let ((_%clause129851129910%_
                               (reverse _%clause129850129897%_)))
                          ((lambda (_%L129914%_ _%L129916%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129916%_))
                                 (let* ((_%g129935129952%_
                                         (lambda (_%g129936129948%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129936129948%_))))
                                        (_%g129934130013%_
                                         (lambda (_%g129936129956%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129936129956%_))
                                               (let ((_g130625_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129936129956%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130626_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130625_)
                        (##vector-length _g130625_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130626_ 2)))
                 (error "Context expects 2 values" _g130626_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129938129959%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130625_
                                                             0)))
                                                         (_%tl129940129962%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130625_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129940129962%_))
                                                         (letrec ((_%loop129941129965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129939129969%_ _%clause129945129972%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129939129969%_))
                                 (let ((_%e129942129975%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129939129969%_))))
                                   (let ((_%lp-hd129943129979%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129942129975%_)))
                                         (_%lp-tl129944129982%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129942129975%_))))
                                     (_%loop129941129965%_
                                      _%lp-tl129944129982%_
                                      (cons _%lp-hd129943129979%_
                                            _%clause129945129972%_))))
                                 (let ((_%clause129946129985%_
                                        (reverse _%clause129945129972%_)))
                                   ((lambda (_%L129989%_)
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
                              (cons _%L129916%_
                                    (let ((__tmp130627
                                           (lambda (_%g130004130007%_
                                                    _%g130005130010%_)
                                             (cons _%g130004130007%_
                                                   _%g130005130010%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130627
                                       '()
                                       _%L129989%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129946129985%_))))))
                   (_%loop129941129965%_ _%target129938129959%_ '()))
                 (_%g129935129952%_ _%g129936129956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129935129952%_
                                                _%g129936129956%_)))))
                                   (_%g129934130013%_
                                    (let ((__tmp130630
                                           (lambda (_%clause130017%_)
                                             (let* ((_%__stx130549130550%_
                                                     _%clause130017%_)
                                                    (_%g130021130048%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130549130550%_)))))
                                               (let ((_%__kont130552130553%_
                                                      (lambda (_%L130133%_
                                                               _%L130135%_)
                                                        (cons _%L130135%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130133%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130554130555%_
                                                      (lambda (_%L130085%_
                                                               _%L130087%_
                                                               _%L130088%_)
                                                        (cons _%L130088%_
                                                              (cons _%L130087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130085%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130549130550%_))
                                                     (let ((_%e130027130113%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130549130550%_))))
                                                       (let ((_%tl130025130120%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130027130113%_)))
                     (_%hd130026130117%_
                      (let () (declare (not safe)) (##car _%e130027130113%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130025130120%_))
                     (let ((_%e130030130123%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130025130120%_))))
                       (let ((_%tl130028130130%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130030130123%_)))
                             (_%hd130029130127%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130030130123%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130028130130%_))
                             (_%__kont130552130553%_
                              _%hd130029130127%_
                              _%hd130026130117%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130028130130%_))
                                 (let ((_%e130042130075%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130028130130%_))))
                                   (let ((_%tl130040130082%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130042130075%_)))
                                         (_%hd130041130079%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130042130075%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130040130082%_))
                                         (_%__kont130554130555%_
                                          _%hd130041130079%_
                                          _%hd130029130127%_
                                          _%hd130026130117%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130021130048%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130021130048%_))))))
                     (let () (declare (not safe)) (_%g130021130048%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130021130048%_)))))))
                                          (__tmp130628
                                           (let ((__tmp130629
                                                  (lambda (_%g130151130154%_
                                                           _%g130152130157%_)
                                                    (cons _%g130151130154%_
                                                          _%g130152130157%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130629
                                              '()
                                              _%L129914%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130630 __tmp130628))))
                                 (_%g129833129857%_ _%g129834129861%_)))
                           _%clause129851129910%_
                           _%hd129841129878%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129846129890%_
                                                   _%target129843129884%_
                                                   '()))
                                                (_%g129833129857%_
                                                 _%g129834129861%_)))))
                                      (_%g129833129857%_ _%g129834129861%_))))
                              (_%g129833129857%_ _%g129834129861%_))))
                      (_%g129833129857%_ _%g129834129861%_)))))
          (_%g129832130160%_ _%stx129830%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130599
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
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130599
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130599
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130599
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 ':init! '11 '#f '#f))
        (let ((__tmp130631 |gxc[1]#_g130632_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 __tmp130631 '12 '#f '#f))
        (let ((__tmp130633 |gxc[1]#_g130634_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 __tmp130633 '13 '#f '#f))
        (let ((__tmp130635 |gxc[1]#_g130636_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 __tmp130635 '14 '#f '#f))
        (let ((__tmp130637
               (cons (cons 'gensyms |gxc[1]#_g130638_|)
                     (cons (cons 'bindings |gxc[1]#_g130639_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 __tmp130637 '15 '#f '#f))
        (let ((__tmp130640
               (cons (cons 'gensyms |gxc[1]#_g130641_|)
                     (cons (cons 'bindings |gxc[1]#_g130642_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 __tmp130640 '16 '#f '#f))
        (let ((__tmp130643
               (cons (cons 'gensyms |gxc[1]#_g130644_|)
                     (cons (cons 'bindings |gxc[1]#_g130645_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 __tmp130643 '17 '#f '#f))
        (let ((__tmp130646
               (cons (cons 'gensyms |gxc[1]#_g130647_|)
                     (cons (cons 'bindings |gxc[1]#_g130648_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 __tmp130646 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130599 '() '20 '#f '#f))
        __obj130599))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130166%_)
        (let* ((_%g130170130184%_
                (lambda (_%g130171130180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130171130180%_))))
               (_%g130169130225%_
                (lambda (_%g130171130188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130171130188%_))
                      (let ((_%e130175130191%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130171130188%_))))
                        (let ((_%hd130174130195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130175130191%_)))
                              (_%tl130173130198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130175130191%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130173130198%_))
                              (let ((_%e130178130201%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130173130198%_))))
                                (let ((_%hd130177130205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130178130201%_)))
                                      (_%tl130176130208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130178130201%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130176130208%_))
                                      ((lambda (_%L130211%_)
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
                         (cons '() (cons _%L130211%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130177130205%_)
                                      (_%g130170130184%_ _%g130171130188%_))))
                              (_%g130170130184%_ _%g130171130188%_))))
                      (_%g130170130184%_ _%g130171130188%_)))))
          (_%g130169130225%_ _%$stx130166%_))))))
