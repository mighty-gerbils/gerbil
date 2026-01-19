(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g145944_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145946_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145948_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145950_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145951_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145953_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145954_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145956_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145957_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145959_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145960_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx145030%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx145030%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx145033%_)
        (let* ((_%g145036145060%_
                (lambda (_%g145037145056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145037145056%_))))
               (_%g145035145363%_
                (lambda (_%g145037145064%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145037145064%_))
                      (let ((_%e145040145067%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145037145064%_))))
                        (let ((_%hd145041145071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145040145067%_)))
                              (_%tl145042145074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145040145067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145042145074%_))
                              (let ((_%e145043145077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145042145074%_))))
                                (let ((_%hd145044145081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145043145077%_)))
                                      (_%tl145045145084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145043145077%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl145045145084%_))
                                      (let ((_g145935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl145045145084%_
                                                '0))))
                                        (begin
                                          (let ((_g145936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145935_)
                                                       (##values-length
                                                        _g145935_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145936_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145936_)))
                                          (let ((_%target145046145087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145935_ 0)))
                                                (_%tl145048145090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145935_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145048145090%_))
                                                (letrec ((_%loop145049145093%_
                                                          (lambda (_%hd145047145097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause145053145100%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145047145097%_))
                        (let ((_%e145050145103%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd145047145097%_))))
                          (let ((_%lp-hd145051145107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145050145103%_)))
                                (_%lp-tl145052145110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145050145103%_))))
                            (_%loop145049145093%_
                             _%lp-tl145052145110%_
                             (cons _%lp-hd145051145107%_
                                   _%clause145053145100%_))))
                        (let ((_%clause145054145113%_
                               (reverse _%clause145053145100%_)))
                          ((lambda (_%L145117%_ _%L145119%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L145119%_))
                                 (let* ((_%g145138145155%_
                                         (lambda (_%g145139145151%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g145139145151%_))))
                                        (_%g145137145216%_
                                         (lambda (_%g145139145159%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g145139145159%_))
                                               (let ((_g145937_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g145139145159%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g145938_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g145937_)
                        (##values-length _g145937_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g145938_ 2)))
                 (error "Context expects 2 values" _g145938_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target145141145162%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g145937_
                                                             0)))
                                                         (_%tl145143145165%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g145937_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145143145165%_))
                                                         (letrec ((_%loop145144145168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd145142145172%_ _%clause145148145175%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd145142145172%_))
                                 (let ((_%e145145145178%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd145142145172%_))))
                                   (let ((_%lp-hd145146145182%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145145145178%_)))
                                         (_%lp-tl145147145185%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145145145178%_))))
                                     (_%loop145144145168%_
                                      _%lp-tl145147145185%_
                                      (cons _%lp-hd145146145182%_
                                            _%clause145148145175%_))))
                                 (let ((_%clause145149145188%_
                                        (reverse _%clause145148145175%_)))
                                   ((lambda (_%L145192%_)
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
                            (cons _%L145119%_
                                  (let ((__tmp145939
                                         (lambda (_%g145207145210%_
                                                  _%g145208145213%_)
                                           (cons _%g145207145210%_
                                                 _%g145208145213%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145939 '() _%L145192%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause145149145188%_))))))
                   (_%loop145144145168%_ _%target145141145162%_ '()))
                 (_%g145138145155%_ _%g145139145159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g145138145155%_
                                                _%g145139145159%_)))))
                                   (_%g145137145216%_
                                    (let ((__tmp145942
                                           (lambda (_%clause145220%_)
                                             (let* ((_%__stx145855145856%_
                                                     _%clause145220%_)
                                                    (_%g145224145251%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx145855145856%_)))))
                                               (let ((_%__kont145858145859%_
                                                      (lambda (_%L145336%_
                                                               _%L145338%_)
                                                        (cons _%L145338%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L145336%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145860145861%_
                                                      (lambda (_%L145288%_
                                                               _%L145290%_
                                                               _%L145291%_)
                                                        (cons _%L145291%_
                                                              (cons _%L145290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L145288%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx145855145856%_))
                                                     (let ((_%e145228145316%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx145855145856%_))))
                                                       (let ((_%tl145230145323%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145228145316%_)))
                     (_%hd145229145320%_
                      (let () (declare (not safe)) (##car _%e145228145316%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145230145323%_))
                     (let ((_%e145231145326%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl145230145323%_))))
                       (let ((_%tl145233145333%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145231145326%_)))
                             (_%hd145232145330%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145231145326%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145233145333%_))
                             (_%__kont145858145859%_
                              _%hd145232145330%_
                              _%hd145229145320%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl145233145333%_))
                                 (let ((_%e145243145278%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl145233145333%_))))
                                   (let ((_%tl145245145285%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145243145278%_)))
                                         (_%hd145244145282%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145243145278%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl145245145285%_))
                                         (_%__kont145860145861%_
                                          _%hd145244145282%_
                                          _%hd145232145330%_
                                          _%hd145229145320%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g145224145251%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g145224145251%_))))))
                     (let () (declare (not safe)) (_%g145224145251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145224145251%_)))))))
                                          (__tmp145940
                                           (let ((__tmp145941
                                                  (lambda (_%g145354145357%_
                                                           _%g145355145360%_)
                                                    (cons _%g145354145357%_
                                                          _%g145355145360%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp145941
                                              '()
                                              _%L145117%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp145942 __tmp145940))))
                                 (_%g145036145060%_ _%g145037145064%_)))
                           _%clause145054145113%_
                           _%hd145044145081%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145049145093%_
                                                   _%target145046145087%_
                                                   '()))
                                                (_%g145036145060%_
                                                 _%g145037145064%_)))))
                                      (_%g145036145060%_ _%g145037145064%_))))
                              (_%g145036145060%_ _%g145037145064%_))))
                      (_%g145036145060%_ _%g145037145064%_)))))
          (_%g145035145363%_ _%stx145033%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj145905
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
           __obj145905
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj145905
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj145905
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 ':init! '12 '#f '#f))
        (let ((__tmp145943 |gxc[1]#_g145944_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 __tmp145943 '3 '#f '#f))
        (let ((__tmp145945 |gxc[1]#_g145946_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 __tmp145945 '13 '#f '#f))
        (let ((__tmp145947 |gxc[1]#_g145948_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 __tmp145947 '14 '#f '#f))
        (let ((__tmp145949
               (cons (cons 'gensyms |gxc[1]#_g145950_|)
                     (cons (cons 'bindings |gxc[1]#_g145951_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 __tmp145949 '15 '#f '#f))
        (let ((__tmp145952
               (cons (cons 'gensyms |gxc[1]#_g145953_|)
                     (cons (cons 'bindings |gxc[1]#_g145954_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 __tmp145952 '16 '#f '#f))
        (let ((__tmp145955
               (cons (cons 'gensyms |gxc[1]#_g145956_|)
                     (cons (cons 'bindings |gxc[1]#_g145957_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 __tmp145955 '17 '#f '#f))
        (let ((__tmp145958
               (cons (cons 'gensyms |gxc[1]#_g145959_|)
                     (cons (cons 'bindings |gxc[1]#_g145960_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 __tmp145958 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145905 '() '20 '#f '#f))
        __obj145905))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx145369%_)
        (let* ((_%g145373145387%_
                (lambda (_%g145374145383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145374145383%_))))
               (_%g145372145428%_
                (lambda (_%g145374145391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145374145391%_))
                      (let ((_%e145376145394%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145374145391%_))))
                        (let ((_%hd145377145398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145376145394%_)))
                              (_%tl145378145401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145376145394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145378145401%_))
                              (let ((_%e145379145404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145378145401%_))))
                                (let ((_%hd145380145408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145379145404%_)))
                                      (_%tl145381145411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145379145404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145381145411%_))
                                      ((lambda (_%L145414%_)
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
                         (cons '() (cons _%L145414%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd145380145408%_)
                                      (_%g145373145387%_ _%g145374145391%_))))
                              (_%g145373145387%_ _%g145374145391%_))))
                      (_%g145373145387%_ _%g145374145391%_)))))
          (_%g145372145428%_ _%$stx145369%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx145432%_)
        (let* ((_%g145436145450%_
                (lambda (_%g145437145446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145437145446%_))))
               (_%g145435145491%_
                (lambda (_%g145437145454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145437145454%_))
                      (let ((_%e145439145457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145437145454%_))))
                        (let ((_%hd145440145461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145439145457%_)))
                              (_%tl145441145464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145439145457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145441145464%_))
                              (let ((_%e145442145467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145441145464%_))))
                                (let ((_%hd145443145471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145442145467%_)))
                                      (_%tl145444145474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145442145467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145444145474%_))
                                      ((lambda (_%L145477%_)
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
                         (cons _%L145477%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd145443145471%_)
                                      (_%g145436145450%_ _%g145437145454%_))))
                              (_%g145436145450%_ _%g145437145454%_))))
                      (_%g145436145450%_ _%g145437145454%_)))))
          (_%g145435145491%_ _%$stx145432%_))))))
