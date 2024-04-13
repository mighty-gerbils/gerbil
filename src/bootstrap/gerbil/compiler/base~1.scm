(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132371_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132373_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132375_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132377_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132378_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132380_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132381_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132383_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132384_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132386_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132387_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131454%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131454%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131457%_)
        (let* ((_%g131460131484%_
                (lambda (_%g131461131480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131461131480%_))))
               (_%g131459131787%_
                (lambda (_%g131461131488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131461131488%_))
                      (let ((_%e131464131491%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131461131488%_))))
                        (let ((_%hd131465131495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131464131491%_)))
                              (_%tl131466131498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131464131491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131466131498%_))
                              (let ((_%e131467131501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131466131498%_))))
                                (let ((_%hd131468131505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131467131501%_)))
                                      (_%tl131469131508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131467131501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131469131508%_))
                                      (let ((_g132362_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131469131508%_
                                                '0))))
                                        (begin
                                          (let ((_g132363_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132362_)
                                                       (##vector-length
                                                        _g132362_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132363_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132363_)))
                                          (let ((_%target131470131511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132362_ 0)))
                                                (_%tl131472131514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132362_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131472131514%_))
                                                (letrec ((_%loop131473131517%_
                                                          (lambda (_%hd131471131521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131477131524%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131471131521%_))
                        (let ((_%e131474131527%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131471131521%_))))
                          (let ((_%lp-hd131475131531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131474131527%_)))
                                (_%lp-tl131476131534%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131474131527%_))))
                            (_%loop131473131517%_
                             _%lp-tl131476131534%_
                             (cons _%lp-hd131475131531%_
                                   _%clause131477131524%_))))
                        (let ((_%clause131478131537%_
                               (reverse _%clause131477131524%_)))
                          ((lambda (_%L131541%_ _%L131543%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131543%_))
                                 (let* ((_%g131562131579%_
                                         (lambda (_%g131563131575%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131563131575%_))))
                                        (_%g131561131640%_
                                         (lambda (_%g131563131583%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131563131583%_))
                                               (let ((_g132364_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131563131583%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132365_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132364_)
                        (##vector-length _g132364_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132365_ 2)))
                 (error "Context expects 2 values" _g132365_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131565131586%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132364_
                                                             0)))
                                                         (_%tl131567131589%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132364_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131567131589%_))
                                                         (letrec ((_%loop131568131592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131566131596%_ _%clause131572131599%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131566131596%_))
                                 (let ((_%e131569131602%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131566131596%_))))
                                   (let ((_%lp-hd131570131606%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131569131602%_)))
                                         (_%lp-tl131571131609%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131569131602%_))))
                                     (_%loop131568131592%_
                                      _%lp-tl131571131609%_
                                      (cons _%lp-hd131570131606%_
                                            _%clause131572131599%_))))
                                 (let ((_%clause131573131612%_
                                        (reverse _%clause131572131599%_)))
                                   ((lambda (_%L131616%_)
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
                            (cons _%L131543%_
                                  (let ((__tmp132366
                                         (lambda (_%g131631131634%_
                                                  _%g131632131637%_)
                                           (cons _%g131631131634%_
                                                 _%g131632131637%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132366 '() _%L131616%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131573131612%_))))))
                   (_%loop131568131592%_ _%target131565131586%_ '()))
                 (_%g131562131579%_ _%g131563131583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131562131579%_
                                                _%g131563131583%_)))))
                                   (_%g131561131640%_
                                    (let ((__tmp132369
                                           (lambda (_%clause131644%_)
                                             (let* ((_%__stx132282132283%_
                                                     _%clause131644%_)
                                                    (_%g131648131675%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx132282132283%_)))))
                                               (let ((_%__kont132285132286%_
                                                      (lambda (_%L131760%_
                                                               _%L131762%_)
                                                        (cons _%L131762%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L131760%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont132287132288%_
                                                      (lambda (_%L131712%_
                                                               _%L131714%_
                                                               _%L131715%_)
                                                        (cons _%L131715%_
                                                              (cons _%L131714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L131712%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx132282132283%_))
                                                     (let ((_%e131652131740%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx132282132283%_))))
                                                       (let ((_%tl131654131747%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131652131740%_)))
                     (_%hd131653131744%_
                      (let () (declare (not safe)) (##car _%e131652131740%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131654131747%_))
                     (let ((_%e131655131750%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131654131747%_))))
                       (let ((_%tl131657131757%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131655131750%_)))
                             (_%hd131656131754%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131655131750%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131657131757%_))
                             (_%__kont132285132286%_
                              _%hd131656131754%_
                              _%hd131653131744%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131657131757%_))
                                 (let ((_%e131667131702%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131657131757%_))))
                                   (let ((_%tl131669131709%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131667131702%_)))
                                         (_%hd131668131706%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131667131702%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl131669131709%_))
                                         (_%__kont132287132288%_
                                          _%hd131668131706%_
                                          _%hd131656131754%_
                                          _%hd131653131744%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131648131675%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131648131675%_))))))
                     (let () (declare (not safe)) (_%g131648131675%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131648131675%_)))))))
                                          (__tmp132367
                                           (let ((__tmp132368
                                                  (lambda (_%g131778131781%_
                                                           _%g131779131784%_)
                                                    (cons _%g131778131781%_
                                                          _%g131779131784%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132368
                                              '()
                                              _%L131541%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132369 __tmp132367))))
                                 (_%g131460131484%_ _%g131461131488%_)))
                           _%clause131478131537%_
                           _%hd131468131505%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131473131517%_
                                                   _%target131470131511%_
                                                   '()))
                                                (_%g131460131484%_
                                                 _%g131461131488%_)))))
                                      (_%g131460131484%_ _%g131461131488%_))))
                              (_%g131460131484%_ _%g131461131488%_))))
                      (_%g131460131484%_ _%g131461131488%_)))))
          (_%g131459131787%_ _%stx131457%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj132332
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
           __obj132332
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132332
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132332
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 ':init! '11 '#f '#f))
        (let ((__tmp132370 |gxc[1]#_g132371_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 __tmp132370 '12 '#f '#f))
        (let ((__tmp132372 |gxc[1]#_g132373_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 __tmp132372 '13 '#f '#f))
        (let ((__tmp132374 |gxc[1]#_g132375_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 __tmp132374 '14 '#f '#f))
        (let ((__tmp132376
               (cons (cons 'gensyms |gxc[1]#_g132377_|)
                     (cons (cons 'bindings |gxc[1]#_g132378_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 __tmp132376 '15 '#f '#f))
        (let ((__tmp132379
               (cons (cons 'gensyms |gxc[1]#_g132380_|)
                     (cons (cons 'bindings |gxc[1]#_g132381_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 __tmp132379 '16 '#f '#f))
        (let ((__tmp132382
               (cons (cons 'gensyms |gxc[1]#_g132383_|)
                     (cons (cons 'bindings |gxc[1]#_g132384_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 __tmp132382 '17 '#f '#f))
        (let ((__tmp132385
               (cons (cons 'gensyms |gxc[1]#_g132386_|)
                     (cons (cons 'bindings |gxc[1]#_g132387_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 __tmp132385 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132332 '() '20 '#f '#f))
        __obj132332))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx131794%_)
        (let* ((_%g131798131812%_
                (lambda (_%g131799131808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131799131808%_))))
               (_%g131797131853%_
                (lambda (_%g131799131816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131799131816%_))
                      (let ((_%e131801131819%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131799131816%_))))
                        (let ((_%hd131802131823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131801131819%_)))
                              (_%tl131803131826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131801131819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131803131826%_))
                              (let ((_%e131804131829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131803131826%_))))
                                (let ((_%hd131805131833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131804131829%_)))
                                      (_%tl131806131836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131804131829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131806131836%_))
                                      ((lambda (_%L131839%_)
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
                         (cons '() (cons _%L131839%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd131805131833%_)
                                      (_%g131798131812%_ _%g131799131816%_))))
                              (_%g131798131812%_ _%g131799131816%_))))
                      (_%g131798131812%_ _%g131799131816%_)))))
          (_%g131797131853%_ _%$stx131794%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx131857%_)
        (let* ((_%g131861131875%_
                (lambda (_%g131862131871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131862131871%_))))
               (_%g131860131916%_
                (lambda (_%g131862131879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131862131879%_))
                      (let ((_%e131864131882%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131862131879%_))))
                        (let ((_%hd131865131886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131864131882%_)))
                              (_%tl131866131889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131864131882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131866131889%_))
                              (let ((_%e131867131892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131866131889%_))))
                                (let ((_%hd131868131896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131867131892%_)))
                                      (_%tl131869131899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131867131892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131869131899%_))
                                      ((lambda (_%L131902%_)
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
                         (cons _%L131902%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd131868131896%_)
                                      (_%g131861131875%_ _%g131862131879%_))))
                              (_%g131861131875%_ _%g131862131879%_))))
                      (_%g131861131875%_ _%g131862131879%_)))))
          (_%g131860131916%_ _%$stx131857%_))))))
