(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g191237_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191239_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191241_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191243_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191244_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191246_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191247_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191249_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191250_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191252_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191253_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx190197%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx190197%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx190200%_)
        (let* ((_%g190203190227%_
                (lambda (_%g190204190223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190204190223%_))))
               (_%g190202190526%_
                (lambda (_%g190204190231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190204190231%_))
                      (let ((_%e190207190234%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190204190231%_))))
                        (let ((_%hd190208190238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190207190234%_)))
                              (_%tl190209190241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190207190234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190209190241%_))
                              (let ((_%e190210190244%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190209190241%_))))
                                (let ((_%hd190211190248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190210190244%_)))
                                      (_%tl190212190251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190210190244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190212190251%_))
                                      (let ((_g191228_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190212190251%_
                                                '0))))
                                        (begin
                                          (let ((_g191229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191228_)
                                                       (##values-length
                                                        _g191228_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191229_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191229_)))
                                          (let ((_%target190213190254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191228_ 0)))
                                                (_%tl190215190257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191228_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190215190257%_))
                                                (letrec ((_%loop190216190260%_
                                                          (lambda (_%hd190214190264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause190220190267%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190214190264%_))
                        (let ((_%e190217190269%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd190214190264%_))))
                          (let ((_%lp-hd190218190273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190217190269%_)))
                                (_%lp-tl190219190276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190217190269%_))))
                            (_%loop190216190260%_
                             _%lp-tl190219190276%_
                             (cons _%lp-hd190218190273%_
                                   _%clause190220190267%_))))
                        (let ((_%clause190221190279%_
                               (reverse _%clause190220190267%_)))
                          ((lambda (_%g190205190282%_ _%g190206190284%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g190206190284%_))
                                 (let* ((_%g190303190320%_
                                         (lambda (_%g190304190316%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g190304190316%_))))
                                        (_%g190302190379%_
                                         (lambda (_%g190304190324%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g190304190324%_))
                                               (let ((_g191230_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g190304190324%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g191231_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g191230_)
                        (##values-length _g191230_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g191231_ 2)))
                 (error "Context expects 2 values" _g191231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target190306190327%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191230_
                                                             0)))
                                                         (_%tl190308190330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191230_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl190308190330%_))
                                                         (letrec ((_%loop190309190333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd190307190337%_ _%clause190313190340%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd190307190337%_))
                                 (let ((_%e190310190342%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd190307190337%_))))
                                   (let ((_%lp-hd190311190346%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190310190342%_)))
                                         (_%lp-tl190312190349%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190310190342%_))))
                                     (_%loop190309190333%_
                                      _%lp-tl190312190349%_
                                      (cons _%lp-hd190311190346%_
                                            _%clause190313190340%_))))
                                 (let ((_%clause190314190352%_
                                        (reverse _%clause190313190340%_)))
                                   ((lambda (_%g190305190355%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%g190206190284%_
                                  (let ((__tmp191232
                                         (lambda (_%g190370190373%_
                                                  _%g190371190376%_)
                                           (cons _%g190370190373%_
                                                 _%g190371190376%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp191232
                                     '()
                                     _%g190305190355%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause190314190352%_))))))
                   (_%loop190309190333%_ _%target190306190327%_ '()))
                 (_%g190303190320%_ _%g190304190324%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g190303190320%_
                                                _%g190304190324%_)))))
                                   (_%g190302190379%_
                                    (let ((__tmp191235
                                           (lambda (_%clause190383%_)
                                             (let* ((_%__stx191147191148%_
                                                     _%clause190383%_)
                                                    (_%g190387190414%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx191147191148%_)))))
                                               (let ((_%__kont191150191151%_
                                                      (lambda (_%g190389190499%_
                                                               _%g190390190501%_)
                                                        (cons _%g190390190501%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g190389190499%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191152191153%_
                                                      (lambda (_%g190397190451%_
                                                               _%g190398190453%_
                                                               _%g190399190454%_)
                                                        (cons _%g190399190454%_
                                                              (cons _%g190398190453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g190397190451%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx191147191148%_))
                                                     (let ((_%e190391190479%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx191147191148%_))))
                                                       (let ((_%tl190393190486%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e190391190479%_)))
                     (_%hd190392190483%_
                      (let () (declare (not safe)) (##car _%e190391190479%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl190393190486%_))
                     (let ((_%e190394190489%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl190393190486%_))))
                       (let ((_%tl190396190496%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190394190489%_)))
                             (_%hd190395190493%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190394190489%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190396190496%_))
                             (_%__kont191150191151%_
                              _%hd190395190493%_
                              _%hd190392190483%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl190396190496%_))
                                 (let ((_%e190406190441%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl190396190496%_))))
                                   (let ((_%tl190408190448%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190406190441%_)))
                                         (_%hd190407190445%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190406190441%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl190408190448%_))
                                         (_%__kont191152191153%_
                                          _%hd190407190445%_
                                          _%hd190395190493%_
                                          _%hd190392190483%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g190387190414%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g190387190414%_))))))
                     (let () (declare (not safe)) (_%g190387190414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g190387190414%_)))))))
                                          (__tmp191233
                                           (let ((__tmp191234
                                                  (lambda (_%g190517190520%_
                                                           _%g190518190523%_)
                                                    (cons _%g190517190520%_
                                                          _%g190518190523%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp191234
                                              '()
                                              _%g190205190282%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp191235 __tmp191233))))
                                 (_%g190203190227%_ _%g190204190231%_)))
                           _%clause190221190279%_
                           _%hd190211190248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190216190260%_
                                                   _%target190213190254%_
                                                   '()))
                                                (_%g190203190227%_
                                                 _%g190204190231%_)))))
                                      (_%g190203190227%_ _%g190204190231%_))))
                              (_%g190203190227%_ _%g190204190231%_))))
                      (_%g190203190227%_ _%g190204190231%_)))))
          (_%g190202190526%_ _%stx190200%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj191197
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191197
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191197
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191197
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 ':init! '12 '#f '#f))
        (let ((__tmp191236 |gxc[1]#_g191237_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 __tmp191236 '3 '#f '#f))
        (let ((__tmp191238 |gxc[1]#_g191239_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 __tmp191238 '13 '#f '#f))
        (let ((__tmp191240 |gxc[1]#_g191241_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 __tmp191240 '14 '#f '#f))
        (let ((__tmp191242
               (cons (cons 'gensyms |gxc[1]#_g191243_|)
                     (cons (cons 'bindings |gxc[1]#_g191244_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 __tmp191242 '15 '#f '#f))
        (let ((__tmp191245
               (cons (cons 'gensyms |gxc[1]#_g191246_|)
                     (cons (cons 'bindings |gxc[1]#_g191247_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 __tmp191245 '16 '#f '#f))
        (let ((__tmp191248
               (cons (cons 'gensyms |gxc[1]#_g191249_|)
                     (cons (cons 'bindings |gxc[1]#_g191250_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 __tmp191248 '17 '#f '#f))
        (let ((__tmp191251
               (cons (cons 'gensyms |gxc[1]#_g191252_|)
                     (cons (cons 'bindings |gxc[1]#_g191253_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 __tmp191251 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191197 '() '20 '#f '#f))
        __obj191197))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx190532%_)
        (let* ((_%g190536190550%_
                (lambda (_%g190537190546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190537190546%_))))
               (_%g190535190591%_
                (lambda (_%g190537190554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190537190554%_))
                      (let ((_%e190539190557%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190537190554%_))))
                        (let ((_%hd190540190561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190539190557%_)))
                              (_%tl190541190564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190539190557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190541190564%_))
                              (let ((_%e190542190567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190541190564%_))))
                                (let ((_%hd190543190571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190542190567%_)))
                                      (_%tl190544190574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190542190567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190544190574%_))
                                      ((lambda (_%g190538190577%_)
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%g190538190577%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd190543190571%_)
                                      (_%g190536190550%_ _%g190537190554%_))))
                              (_%g190536190550%_ _%g190537190554%_))))
                      (_%g190536190550%_ _%g190537190554%_)))))
          (_%g190535190591%_ _%$stx190532%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx190595%_)
        (let* ((_%g190599190613%_
                (lambda (_%g190600190609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190600190609%_))))
               (_%g190598190654%_
                (lambda (_%g190600190617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190600190617%_))
                      (let ((_%e190602190620%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190600190617%_))))
                        (let ((_%hd190603190624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190602190620%_)))
                              (_%tl190604190627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190602190620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190604190627%_))
                              (let ((_%e190605190630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190604190627%_))))
                                (let ((_%hd190606190634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190605190630%_)))
                                      (_%tl190607190637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190605190630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190607190637%_))
                                      ((lambda (_%g190601190640%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g190601190640%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd190606190634%_)
                                      (_%g190599190613%_ _%g190600190617%_))))
                              (_%g190599190613%_ _%g190600190617%_))))
                      (_%g190599190613%_ _%g190600190617%_)))))
          (_%g190598190654%_ _%$stx190595%_))))))
