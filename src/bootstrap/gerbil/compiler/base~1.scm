(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g200184_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200186_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200188_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200190_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200191_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200193_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200194_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200196_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200197_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200199_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200200_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx199144%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx199144%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx199147%_)
        (let* ((_%$%g199150199174%_
                (lambda (_%$%g199151199170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199151199170%_))))
               (_%$%g199149199473%_
                (lambda (_%$%g199151199178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199151199178%_))
                      (let ((_%$%e199154199181%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199151199178%_))))
                        (let ((_%$%hd199155199185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199154199181%_)))
                              (_%$%tl199156199188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199154199181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199156199188%_))
                              (let ((_%$%e199157199191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199156199188%_))))
                                (let ((_%$%hd199158199195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199157199191%_)))
                                      (_%$%tl199159199198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199157199191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl199159199198%_))
                                      (let ((_g200175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl199159199198%_
                                                '0))))
                                        (begin
                                          (let ((_g200176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g200175_)
                                                       (##values-length
                                                        _g200175_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g200176_ 2)))
                                                (error "Context expects 2 values"
                                                       _g200176_)))
                                          (let ((_%$%target199160199201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g200175_ 0)))
                                                (_%$%tl199162199204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g200175_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199162199204%_))
                                                (letrec ((_%$%loop199163199207%_
                                                          (lambda (_%$%hd199161199211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause199167199214%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199161199211%_))
                        (let ((_%$%e199164199216%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd199161199211%_))))
                          (let ((_%$%lp-hd199165199220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199164199216%_)))
                                (_%$%lp-tl199166199223%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199164199216%_))))
                            (_%$%loop199163199207%_
                             _%$%lp-tl199166199223%_
                             (cons _%$%lp-hd199165199220%_
                                   _%$%clause199167199214%_))))
                        (let ((_%$%clause199168199226%_
                               (reverse _%$%clause199167199214%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd199158199195%_))
                              (let* ((_%$%g199250199267%_
                                      (lambda (_%$%g199251199263%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g199251199263%_))))
                                     (_%$%g199249199326%_
                                      (lambda (_%$%g199251199271%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g199251199271%_))
                                            (let ((_g200177_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g199251199271%_
                                                      '0))))
                                              (begin
                                                (let ((_g200178_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g200177_)
                                                             (##values-length
                                                              _g200177_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g200178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g200178_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target199253199274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200177_
                                                          0)))
                                                      (_%$%tl199255199277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200177_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl199255199277%_))
                                                      (letrec ((_%$%loop199256199280%_
                                                                (lambda (_%$%hd199254199284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause199260199287%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd199254199284%_))
                              (let ((_%$%e199257199289%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd199254199284%_))))
                                (let ((_%$%lp-hd199258199293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199257199289%_)))
                                      (_%$%lp-tl199259199296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199257199289%_))))
                                  (_%$%loop199256199280%_
                                   _%$%lp-tl199259199296%_
                                   (cons _%$%lp-hd199258199293%_
                                         _%$%clause199260199287%_))))
                              (let ((_%$%clause199261199299%_
                                     (reverse _%$%clause199260199287%_)))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'lambda))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '$stx))
                                                  '())
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'ast-case))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '$stx))
                      (cons _%$%hd199158199195%_
                            (let ((__tmp200179
                                   (lambda (_%$%g199317199320%_
                                            _%$%g199318199323%_)
                                     (cons _%$%g199317199320%_
                                           _%$%g199318199323%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp200179
                               '()
                               _%$%clause199261199299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop199256199280%_ _%$%target199253199274%_ '()))
              (_%$%g199250199267%_ _%$%g199251199271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g199250199267%_
                                             _%$%g199251199271%_)))))
                                (_%$%g199249199326%_
                                 (let ((__tmp200182
                                        (lambda (_%clause199330%_)
                                          (let* ((_%__stx200094200095%_
                                                  _%clause199330%_)
                                                 (_%$%g199334199361%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200094200095%_)))))
                                            (let ((_%__kont200097200098%_
                                                   (lambda (_%$%g199336199446%_
                                                            _%$%g199337199448%_)
                                                     (cons _%$%g199337199448%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g199336199446%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200099200100%_
                                                   (lambda (_%$%g199344199398%_
                                                            _%$%g199345199400%_
                                                            _%$%g199346199401%_)
                                                     (cons _%$%g199346199401%_
                                                           (cons _%$%g199345199400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g199344199398%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200094200095%_))
                                                  (let ((_%$%e199338199426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx200094200095%_))))
                                                    (let ((_%$%tl199340199433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e199338199426%_)))
                                                          (_%$%hd199339199430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e199338199426%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl199340199433%_))
                                                          (let ((_%$%e199341199436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl199340199433%_))))
                    (let ((_%$%tl199343199443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e199341199436%_)))
                          (_%$%hd199342199440%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e199341199436%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl199343199443%_))
                          (_%__kont200097200098%_
                           _%$%hd199342199440%_
                           _%$%hd199339199430%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199343199443%_))
                              (let ((_%$%e199353199388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199343199443%_))))
                                (let ((_%$%tl199355199395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199353199388%_)))
                                      (_%$%hd199354199392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199353199388%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199355199395%_))
                                      (_%__kont200099200100%_
                                       _%$%hd199354199392%_
                                       _%$%hd199342199440%_
                                       _%$%hd199339199430%_)
                                      (_%$%g199334199361%_))))
                              (_%$%g199334199361%_)))))
                  (_%$%g199334199361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g199334199361%_))))))
                                       (__tmp200180
                                        (let ((__tmp200181
                                               (lambda (_%$%g199464199467%_
                                                        _%$%g199465199470%_)
                                                 (cons _%$%g199464199467%_
                                                       _%$%g199465199470%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp200181
                                           '()
                                           _%$%clause199168199226%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp200182 __tmp200180))))
                              (_%$%g199150199174%_ _%$%g199151199178%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199163199207%_
                                                   _%$%target199160199201%_
                                                   '()))
                                                (_%$%g199150199174%_
                                                 _%$%g199151199178%_)))))
                                      (_%$%g199150199174%_
                                       _%$%g199151199178%_))))
                              (_%$%g199150199174%_ _%$%g199151199178%_))))
                      (_%$%g199150199174%_ _%$%g199151199178%_)))))
          (_%$%g199149199473%_ _%stx199147%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj200144
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
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200144
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200144
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200144
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 ':init! '13 '#f '#f))
        (let ((__tmp200183 |gxc[1]#_g200184_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 __tmp200183 '4 '#f '#f))
        (let ((__tmp200185 |gxc[1]#_g200186_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 __tmp200185 '14 '#f '#f))
        (let ((__tmp200187 |gxc[1]#_g200188_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 __tmp200187 '15 '#f '#f))
        (let ((__tmp200189
               (cons (cons 'gensyms |gxc[1]#_g200190_|)
                     (cons (cons 'bindings |gxc[1]#_g200191_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 __tmp200189 '16 '#f '#f))
        (let ((__tmp200192
               (cons (cons 'gensyms |gxc[1]#_g200193_|)
                     (cons (cons 'bindings |gxc[1]#_g200194_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 __tmp200192 '17 '#f '#f))
        (let ((__tmp200195
               (cons (cons 'gensyms |gxc[1]#_g200196_|)
                     (cons (cons 'bindings |gxc[1]#_g200197_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 __tmp200195 '18 '#f '#f))
        (let ((__tmp200198
               (cons (cons 'gensyms |gxc[1]#_g200199_|)
                     (cons (cons 'bindings |gxc[1]#_g200200_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 __tmp200198 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200144 '() '21 '#f '#f))
        __obj200144))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx199479%_)
        (let* ((_%$%g199483199497%_
                (lambda (_%$%g199484199493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199484199493%_))))
               (_%$%g199482199538%_
                (lambda (_%$%g199484199501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199484199501%_))
                      (let ((_%$%e199486199504%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199484199501%_))))
                        (let ((_%$%hd199487199508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199486199504%_)))
                              (_%$%tl199488199511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199486199504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199488199511%_))
                              (let ((_%$%e199489199514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199488199511%_))))
                                (let ((_%$%hd199490199518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199489199514%_)))
                                      (_%$%tl199491199521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199489199514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199491199521%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'with-lock))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '__verbose-mutex))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'lambda))
                      (cons '() (cons _%$%hd199490199518%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g199483199497%_
                                       _%$%g199484199501%_))))
                              (_%$%g199483199497%_ _%$%g199484199501%_))))
                      (_%$%g199483199497%_ _%$%g199484199501%_)))))
          (_%$%g199482199538%_ _%$stx199479%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx199542%_)
        (let* ((_%$%g199546199560%_
                (lambda (_%$%g199547199556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199547199556%_))))
               (_%$%g199545199601%_
                (lambda (_%$%g199547199564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199547199564%_))
                      (let ((_%$%e199549199567%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199547199564%_))))
                        (let ((_%$%hd199550199571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199549199567%_)))
                              (_%$%tl199551199574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199549199567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199551199574%_))
                              (let ((_%$%e199552199577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199551199574%_))))
                                (let ((_%$%hd199553199581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199552199577%_)))
                                      (_%$%tl199554199584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199552199577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199554199584%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd199553199581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g199546199560%_
                                       _%$%g199547199564%_))))
                              (_%$%g199546199560%_ _%$%g199547199564%_))))
                      (_%$%g199546199560%_ _%$%g199547199564%_)))))
          (_%$%g199545199601%_ _%$stx199542%_))))))
