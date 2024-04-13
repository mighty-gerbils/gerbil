(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132482_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132484_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132486_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132488_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132489_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132491_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132492_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132494_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132495_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132497_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132498_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131565%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131565%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131568%_)
        (let* ((_%g131571131595%_
                (lambda (_%g131572131591%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131572131591%_))))
               (_%g131570131898%_
                (lambda (_%g131572131599%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131572131599%_))
                      (let ((_%e131575131602%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131572131599%_))))
                        (let ((_%hd131576131606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131575131602%_)))
                              (_%tl131577131609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131575131602%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131577131609%_))
                              (let ((_%e131578131612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131577131609%_))))
                                (let ((_%hd131579131616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131578131612%_)))
                                      (_%tl131580131619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131578131612%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131580131619%_))
                                      (let ((_g132473_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131580131619%_
                                                '0))))
                                        (begin
                                          (let ((_g132474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132473_)
                                                       (##vector-length
                                                        _g132473_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132474_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132474_)))
                                          (let ((_%target131581131622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132473_ 0)))
                                                (_%tl131583131625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132473_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131583131625%_))
                                                (letrec ((_%loop131584131628%_
                                                          (lambda (_%hd131582131632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131588131635%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131582131632%_))
                        (let ((_%e131585131638%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131582131632%_))))
                          (let ((_%lp-hd131586131642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131585131638%_)))
                                (_%lp-tl131587131645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131585131638%_))))
                            (_%loop131584131628%_
                             _%lp-tl131587131645%_
                             (cons _%lp-hd131586131642%_
                                   _%clause131588131635%_))))
                        (let ((_%clause131589131648%_
                               (reverse _%clause131588131635%_)))
                          ((lambda (_%L131652%_ _%L131654%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131654%_))
                                 (let* ((_%g131673131690%_
                                         (lambda (_%g131674131686%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131674131686%_))))
                                        (_%g131672131751%_
                                         (lambda (_%g131674131694%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131674131694%_))
                                               (let ((_g132475_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131674131694%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132476_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132475_)
                        (##vector-length _g132475_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132476_ 2)))
                 (error "Context expects 2 values" _g132476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131676131697%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132475_
                                                             0)))
                                                         (_%tl131678131700%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132475_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131678131700%_))
                                                         (letrec ((_%loop131679131703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131677131707%_ _%clause131683131710%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131677131707%_))
                                 (let ((_%e131680131713%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131677131707%_))))
                                   (let ((_%lp-hd131681131717%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131680131713%_)))
                                         (_%lp-tl131682131720%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131680131713%_))))
                                     (_%loop131679131703%_
                                      _%lp-tl131682131720%_
                                      (cons _%lp-hd131681131717%_
                                            _%clause131683131710%_))))
                                 (let ((_%clause131684131723%_
                                        (reverse _%clause131683131710%_)))
                                   ((lambda (_%L131727%_)
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
                            (cons _%L131654%_
                                  (let ((__tmp132477
                                         (lambda (_%g131742131745%_
                                                  _%g131743131748%_)
                                           (cons _%g131742131745%_
                                                 _%g131743131748%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132477 '() _%L131727%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131684131723%_))))))
                   (_%loop131679131703%_ _%target131676131697%_ '()))
                 (_%g131673131690%_ _%g131674131694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131673131690%_
                                                _%g131674131694%_)))))
                                   (_%g131672131751%_
                                    (let ((__tmp132480
                                           (lambda (_%clause131755%_)
                                             (let* ((_%__stx132393132394%_
                                                     _%clause131755%_)
                                                    (_%g131759131786%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx132393132394%_)))))
                                               (let ((_%__kont132396132397%_
                                                      (lambda (_%L131871%_
                                                               _%L131873%_)
                                                        (cons _%L131873%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L131871%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont132398132399%_
                                                      (lambda (_%L131823%_
                                                               _%L131825%_
                                                               _%L131826%_)
                                                        (cons _%L131826%_
                                                              (cons _%L131825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L131823%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx132393132394%_))
                                                     (let ((_%e131763131851%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx132393132394%_))))
                                                       (let ((_%tl131765131858%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131763131851%_)))
                     (_%hd131764131855%_
                      (let () (declare (not safe)) (##car _%e131763131851%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131765131858%_))
                     (let ((_%e131766131861%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131765131858%_))))
                       (let ((_%tl131768131868%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131766131861%_)))
                             (_%hd131767131865%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131766131861%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131768131868%_))
                             (_%__kont132396132397%_
                              _%hd131767131865%_
                              _%hd131764131855%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131768131868%_))
                                 (let ((_%e131778131813%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131768131868%_))))
                                   (let ((_%tl131780131820%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131778131813%_)))
                                         (_%hd131779131817%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131778131813%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl131780131820%_))
                                         (_%__kont132398132399%_
                                          _%hd131779131817%_
                                          _%hd131767131865%_
                                          _%hd131764131855%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131759131786%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131759131786%_))))))
                     (let () (declare (not safe)) (_%g131759131786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131759131786%_)))))))
                                          (__tmp132478
                                           (let ((__tmp132479
                                                  (lambda (_%g131889131892%_
                                                           _%g131890131895%_)
                                                    (cons _%g131889131892%_
                                                          _%g131890131895%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132479
                                              '()
                                              _%L131652%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132480 __tmp132478))))
                                 (_%g131571131595%_ _%g131572131599%_)))
                           _%clause131589131648%_
                           _%hd131579131616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131584131628%_
                                                   _%target131581131622%_
                                                   '()))
                                                (_%g131571131595%_
                                                 _%g131572131599%_)))))
                                      (_%g131571131595%_ _%g131572131599%_))))
                              (_%g131571131595%_ _%g131572131599%_))))
                      (_%g131571131595%_ _%g131572131599%_)))))
          (_%g131570131898%_ _%stx131568%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj132443
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
           __obj132443
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132443
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132443
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 ':init! '11 '#f '#f))
        (let ((__tmp132481 |gxc[1]#_g132482_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 __tmp132481 '12 '#f '#f))
        (let ((__tmp132483 |gxc[1]#_g132484_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 __tmp132483 '13 '#f '#f))
        (let ((__tmp132485 |gxc[1]#_g132486_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 __tmp132485 '14 '#f '#f))
        (let ((__tmp132487
               (cons (cons 'gensyms |gxc[1]#_g132488_|)
                     (cons (cons 'bindings |gxc[1]#_g132489_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 __tmp132487 '15 '#f '#f))
        (let ((__tmp132490
               (cons (cons 'gensyms |gxc[1]#_g132491_|)
                     (cons (cons 'bindings |gxc[1]#_g132492_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 __tmp132490 '16 '#f '#f))
        (let ((__tmp132493
               (cons (cons 'gensyms |gxc[1]#_g132494_|)
                     (cons (cons 'bindings |gxc[1]#_g132495_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 __tmp132493 '17 '#f '#f))
        (let ((__tmp132496
               (cons (cons 'gensyms |gxc[1]#_g132497_|)
                     (cons (cons 'bindings |gxc[1]#_g132498_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 __tmp132496 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132443 '() '20 '#f '#f))
        __obj132443))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx131905%_)
        (let* ((_%g131909131923%_
                (lambda (_%g131910131919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131910131919%_))))
               (_%g131908131964%_
                (lambda (_%g131910131927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131910131927%_))
                      (let ((_%e131912131930%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131910131927%_))))
                        (let ((_%hd131913131934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131912131930%_)))
                              (_%tl131914131937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131912131930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131914131937%_))
                              (let ((_%e131915131940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131914131937%_))))
                                (let ((_%hd131916131944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131915131940%_)))
                                      (_%tl131917131947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131915131940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131917131947%_))
                                      ((lambda (_%L131950%_)
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
                         (cons '() (cons _%L131950%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd131916131944%_)
                                      (_%g131909131923%_ _%g131910131927%_))))
                              (_%g131909131923%_ _%g131910131927%_))))
                      (_%g131909131923%_ _%g131910131927%_)))))
          (_%g131908131964%_ _%$stx131905%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx131968%_)
        (let* ((_%g131972131986%_
                (lambda (_%g131973131982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131973131982%_))))
               (_%g131971132027%_
                (lambda (_%g131973131990%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131973131990%_))
                      (let ((_%e131975131993%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131973131990%_))))
                        (let ((_%hd131976131997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131975131993%_)))
                              (_%tl131977132000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131975131993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131977132000%_))
                              (let ((_%e131978132003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131977132000%_))))
                                (let ((_%hd131979132007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131978132003%_)))
                                      (_%tl131980132010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131978132003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131980132010%_))
                                      ((lambda (_%L132013%_)
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
                         (cons _%L132013%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd131979132007%_)
                                      (_%g131972131986%_ _%g131973131990%_))))
                              (_%g131972131986%_ _%g131973131990%_))))
                      (_%g131972131986%_ _%g131973131990%_)))))
          (_%g131971132027%_ _%$stx131968%_))))))
