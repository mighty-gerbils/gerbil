(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g134138_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134140_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134142_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134144_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134145_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134147_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134148_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134150_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134151_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134153_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134154_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx133221%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx133221%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx133224%_)
        (let* ((_%g133227133251%_
                (lambda (_%g133228133247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133228133247%_))))
               (_%g133226133554%_
                (lambda (_%g133228133255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133228133255%_))
                      (let ((_%e133231133258%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133228133255%_))))
                        (let ((_%hd133232133262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133231133258%_)))
                              (_%tl133233133265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133231133258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133233133265%_))
                              (let ((_%e133234133268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133233133265%_))))
                                (let ((_%hd133235133272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133234133268%_)))
                                      (_%tl133236133275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133234133268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl133236133275%_))
                                      (let ((_g134129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl133236133275%_
                                                '0))))
                                        (begin
                                          (let ((_g134130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134129_)
                                                       (##values-length
                                                        _g134129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134130_)))
                                          (let ((_%target133237133278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134129_ 0)))
                                                (_%tl133239133281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134129_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133239133281%_))
                                                (letrec ((_%loop133240133284%_
                                                          (lambda (_%hd133238133288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause133244133291%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133238133288%_))
                        (let ((_%e133241133294%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd133238133288%_))))
                          (let ((_%lp-hd133242133298%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133241133294%_)))
                                (_%lp-tl133243133301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133241133294%_))))
                            (_%loop133240133284%_
                             _%lp-tl133243133301%_
                             (cons _%lp-hd133242133298%_
                                   _%clause133244133291%_))))
                        (let ((_%clause133245133304%_
                               (reverse _%clause133244133291%_)))
                          ((lambda (_%L133308%_ _%L133310%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L133310%_))
                                 (let* ((_%g133329133346%_
                                         (lambda (_%g133330133342%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g133330133342%_))))
                                        (_%g133328133407%_
                                         (lambda (_%g133330133350%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g133330133350%_))
                                               (let ((_g134131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g133330133350%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g134132_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g134131_)
                        (##values-length _g134131_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g134132_ 2)))
                 (error "Context expects 2 values" _g134132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target133332133353%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g134131_
                                                             0)))
                                                         (_%tl133334133356%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g134131_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl133334133356%_))
                                                         (letrec ((_%loop133335133359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd133333133363%_ _%clause133339133366%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd133333133363%_))
                                 (let ((_%e133336133369%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd133333133363%_))))
                                   (let ((_%lp-hd133337133373%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133336133369%_)))
                                         (_%lp-tl133338133376%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133336133369%_))))
                                     (_%loop133335133359%_
                                      _%lp-tl133338133376%_
                                      (cons _%lp-hd133337133373%_
                                            _%clause133339133366%_))))
                                 (let ((_%clause133340133379%_
                                        (reverse _%clause133339133366%_)))
                                   ((lambda (_%L133383%_)
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
                            (cons _%L133310%_
                                  (let ((__tmp134133
                                         (lambda (_%g133398133401%_
                                                  _%g133399133404%_)
                                           (cons _%g133398133401%_
                                                 _%g133399133404%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp134133 '() _%L133383%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause133340133379%_))))))
                   (_%loop133335133359%_ _%target133332133353%_ '()))
                 (_%g133329133346%_ _%g133330133350%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g133329133346%_
                                                _%g133330133350%_)))))
                                   (_%g133328133407%_
                                    (let ((__tmp134136
                                           (lambda (_%clause133411%_)
                                             (let* ((_%__stx134049134050%_
                                                     _%clause133411%_)
                                                    (_%g133415133442%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx134049134050%_)))))
                                               (let ((_%__kont134052134053%_
                                                      (lambda (_%L133527%_
                                                               _%L133529%_)
                                                        (cons _%L133529%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L133527%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont134054134055%_
                                                      (lambda (_%L133479%_
                                                               _%L133481%_
                                                               _%L133482%_)
                                                        (cons _%L133482%_
                                                              (cons _%L133481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L133479%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx134049134050%_))
                                                     (let ((_%e133419133507%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx134049134050%_))))
                                                       (let ((_%tl133421133514%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e133419133507%_)))
                     (_%hd133420133511%_
                      (let () (declare (not safe)) (##car _%e133419133507%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl133421133514%_))
                     (let ((_%e133422133517%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl133421133514%_))))
                       (let ((_%tl133424133524%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e133422133517%_)))
                             (_%hd133423133521%_
                              (let ()
                                (declare (not safe))
                                (##car _%e133422133517%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl133424133524%_))
                             (_%__kont134052134053%_
                              _%hd133423133521%_
                              _%hd133420133511%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl133424133524%_))
                                 (let ((_%e133434133469%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl133424133524%_))))
                                   (let ((_%tl133436133476%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133434133469%_)))
                                         (_%hd133435133473%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133434133469%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl133436133476%_))
                                         (_%__kont134054134055%_
                                          _%hd133435133473%_
                                          _%hd133423133521%_
                                          _%hd133420133511%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g133415133442%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g133415133442%_))))))
                     (let () (declare (not safe)) (_%g133415133442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g133415133442%_)))))))
                                          (__tmp134134
                                           (let ((__tmp134135
                                                  (lambda (_%g133545133548%_
                                                           _%g133546133551%_)
                                                    (cons _%g133545133548%_
                                                          _%g133546133551%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134135
                                              '()
                                              _%L133308%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp134136 __tmp134134))))
                                 (_%g133227133251%_ _%g133228133255%_)))
                           _%clause133245133304%_
                           _%hd133235133272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133240133284%_
                                                   _%target133237133278%_
                                                   '()))
                                                (_%g133227133251%_
                                                 _%g133228133255%_)))))
                                      (_%g133227133251%_ _%g133228133255%_))))
                              (_%g133227133251%_ _%g133228133255%_))))
                      (_%g133227133251%_ _%g133228133255%_)))))
          (_%g133226133554%_ _%stx133224%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj134099
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
           __obj134099
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134099
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134099
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 ':init! '11 '#f '#f))
        (let ((__tmp134137 |gxc[1]#_g134138_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 __tmp134137 '12 '#f '#f))
        (let ((__tmp134139 |gxc[1]#_g134140_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 __tmp134139 '13 '#f '#f))
        (let ((__tmp134141 |gxc[1]#_g134142_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 __tmp134141 '14 '#f '#f))
        (let ((__tmp134143
               (cons (cons 'gensyms |gxc[1]#_g134144_|)
                     (cons (cons 'bindings |gxc[1]#_g134145_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 __tmp134143 '15 '#f '#f))
        (let ((__tmp134146
               (cons (cons 'gensyms |gxc[1]#_g134147_|)
                     (cons (cons 'bindings |gxc[1]#_g134148_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 __tmp134146 '16 '#f '#f))
        (let ((__tmp134149
               (cons (cons 'gensyms |gxc[1]#_g134150_|)
                     (cons (cons 'bindings |gxc[1]#_g134151_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 __tmp134149 '17 '#f '#f))
        (let ((__tmp134152
               (cons (cons 'gensyms |gxc[1]#_g134153_|)
                     (cons (cons 'bindings |gxc[1]#_g134154_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 __tmp134152 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134099 '() '20 '#f '#f))
        __obj134099))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx133561%_)
        (let* ((_%g133565133579%_
                (lambda (_%g133566133575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133566133575%_))))
               (_%g133564133620%_
                (lambda (_%g133566133583%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133566133583%_))
                      (let ((_%e133568133586%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133566133583%_))))
                        (let ((_%hd133569133590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133568133586%_)))
                              (_%tl133570133593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133568133586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133570133593%_))
                              (let ((_%e133571133596%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133570133593%_))))
                                (let ((_%hd133572133600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133571133596%_)))
                                      (_%tl133573133603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133571133596%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133573133603%_))
                                      ((lambda (_%L133606%_)
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
                         (cons '() (cons _%L133606%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd133572133600%_)
                                      (_%g133565133579%_ _%g133566133583%_))))
                              (_%g133565133579%_ _%g133566133583%_))))
                      (_%g133565133579%_ _%g133566133583%_)))))
          (_%g133564133620%_ _%$stx133561%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx133624%_)
        (let* ((_%g133628133642%_
                (lambda (_%g133629133638%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133629133638%_))))
               (_%g133627133683%_
                (lambda (_%g133629133646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133629133646%_))
                      (let ((_%e133631133649%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133629133646%_))))
                        (let ((_%hd133632133653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133631133649%_)))
                              (_%tl133633133656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133631133649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133633133656%_))
                              (let ((_%e133634133659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133633133656%_))))
                                (let ((_%hd133635133663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133634133659%_)))
                                      (_%tl133636133666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133634133659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133636133666%_))
                                      ((lambda (_%L133669%_)
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
                         (cons _%L133669%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd133635133663%_)
                                      (_%g133628133642%_ _%g133629133646%_))))
                              (_%g133628133642%_ _%g133629133646%_))))
                      (_%g133628133642%_ _%g133629133646%_)))))
          (_%g133627133683%_ _%$stx133624%_))))))
