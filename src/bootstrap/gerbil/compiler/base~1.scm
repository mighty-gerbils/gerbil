(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g134240_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134242_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134244_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134246_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134247_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134249_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134250_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134252_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134253_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134255_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134256_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx133323%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx133323%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx133326%_)
        (let* ((_%g133329133353%_
                (lambda (_%g133330133349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133330133349%_))))
               (_%g133328133656%_
                (lambda (_%g133330133357%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133330133357%_))
                      (let ((_%e133333133360%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133330133357%_))))
                        (let ((_%hd133334133364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133333133360%_)))
                              (_%tl133335133367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133333133360%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133335133367%_))
                              (let ((_%e133336133370%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133335133367%_))))
                                (let ((_%hd133337133374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133336133370%_)))
                                      (_%tl133338133377%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133336133370%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl133338133377%_))
                                      (let ((_g134231_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl133338133377%_
                                                '0))))
                                        (begin
                                          (let ((_g134232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134231_)
                                                       (##values-length
                                                        _g134231_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134232_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134232_)))
                                          (let ((_%target133339133380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134231_ 0)))
                                                (_%tl133341133383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134231_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133341133383%_))
                                                (letrec ((_%loop133342133386%_
                                                          (lambda (_%hd133340133390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause133346133393%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133340133390%_))
                        (let ((_%e133343133396%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd133340133390%_))))
                          (let ((_%lp-hd133344133400%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133343133396%_)))
                                (_%lp-tl133345133403%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133343133396%_))))
                            (_%loop133342133386%_
                             _%lp-tl133345133403%_
                             (cons _%lp-hd133344133400%_
                                   _%clause133346133393%_))))
                        (let ((_%clause133347133406%_
                               (reverse _%clause133346133393%_)))
                          ((lambda (_%L133410%_ _%L133412%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L133412%_))
                                 (let* ((_%g133431133448%_
                                         (lambda (_%g133432133444%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g133432133444%_))))
                                        (_%g133430133509%_
                                         (lambda (_%g133432133452%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g133432133452%_))
                                               (let ((_g134233_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g133432133452%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g134234_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g134233_)
                        (##values-length _g134233_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g134234_ 2)))
                 (error "Context expects 2 values" _g134234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target133434133455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g134233_
                                                             0)))
                                                         (_%tl133436133458%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g134233_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl133436133458%_))
                                                         (letrec ((_%loop133437133461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd133435133465%_ _%clause133441133468%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd133435133465%_))
                                 (let ((_%e133438133471%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd133435133465%_))))
                                   (let ((_%lp-hd133439133475%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133438133471%_)))
                                         (_%lp-tl133440133478%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133438133471%_))))
                                     (_%loop133437133461%_
                                      _%lp-tl133440133478%_
                                      (cons _%lp-hd133439133475%_
                                            _%clause133441133468%_))))
                                 (let ((_%clause133442133481%_
                                        (reverse _%clause133441133468%_)))
                                   ((lambda (_%L133485%_)
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
                            (cons _%L133412%_
                                  (let ((__tmp134235
                                         (lambda (_%g133500133503%_
                                                  _%g133501133506%_)
                                           (cons _%g133500133503%_
                                                 _%g133501133506%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp134235 '() _%L133485%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause133442133481%_))))))
                   (_%loop133437133461%_ _%target133434133455%_ '()))
                 (_%g133431133448%_ _%g133432133452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g133431133448%_
                                                _%g133432133452%_)))))
                                   (_%g133430133509%_
                                    (let ((__tmp134238
                                           (lambda (_%clause133513%_)
                                             (let* ((_%__stx134151134152%_
                                                     _%clause133513%_)
                                                    (_%g133517133544%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx134151134152%_)))))
                                               (let ((_%__kont134154134155%_
                                                      (lambda (_%L133629%_
                                                               _%L133631%_)
                                                        (cons _%L133631%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L133629%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont134156134157%_
                                                      (lambda (_%L133581%_
                                                               _%L133583%_
                                                               _%L133584%_)
                                                        (cons _%L133584%_
                                                              (cons _%L133583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L133581%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx134151134152%_))
                                                     (let ((_%e133521133609%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx134151134152%_))))
                                                       (let ((_%tl133523133616%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e133521133609%_)))
                     (_%hd133522133613%_
                      (let () (declare (not safe)) (##car _%e133521133609%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl133523133616%_))
                     (let ((_%e133524133619%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl133523133616%_))))
                       (let ((_%tl133526133626%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e133524133619%_)))
                             (_%hd133525133623%_
                              (let ()
                                (declare (not safe))
                                (##car _%e133524133619%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl133526133626%_))
                             (_%__kont134154134155%_
                              _%hd133525133623%_
                              _%hd133522133613%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl133526133626%_))
                                 (let ((_%e133536133571%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl133526133626%_))))
                                   (let ((_%tl133538133578%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133536133571%_)))
                                         (_%hd133537133575%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133536133571%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl133538133578%_))
                                         (_%__kont134156134157%_
                                          _%hd133537133575%_
                                          _%hd133525133623%_
                                          _%hd133522133613%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g133517133544%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g133517133544%_))))))
                     (let () (declare (not safe)) (_%g133517133544%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g133517133544%_)))))))
                                          (__tmp134236
                                           (let ((__tmp134237
                                                  (lambda (_%g133647133650%_
                                                           _%g133648133653%_)
                                                    (cons _%g133647133650%_
                                                          _%g133648133653%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134237
                                              '()
                                              _%L133410%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp134238 __tmp134236))))
                                 (_%g133329133353%_ _%g133330133357%_)))
                           _%clause133347133406%_
                           _%hd133337133374%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133342133386%_
                                                   _%target133339133380%_
                                                   '()))
                                                (_%g133329133353%_
                                                 _%g133330133357%_)))))
                                      (_%g133329133353%_ _%g133330133357%_))))
                              (_%g133329133353%_ _%g133330133357%_))))
                      (_%g133329133353%_ _%g133330133357%_)))))
          (_%g133328133656%_ _%stx133326%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj134201
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
           __obj134201
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134201
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134201
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 ':init! '11 '#f '#f))
        (let ((__tmp134239 |gxc[1]#_g134240_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 __tmp134239 '12 '#f '#f))
        (let ((__tmp134241 |gxc[1]#_g134242_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 __tmp134241 '13 '#f '#f))
        (let ((__tmp134243 |gxc[1]#_g134244_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 __tmp134243 '14 '#f '#f))
        (let ((__tmp134245
               (cons (cons 'gensyms |gxc[1]#_g134246_|)
                     (cons (cons 'bindings |gxc[1]#_g134247_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 __tmp134245 '15 '#f '#f))
        (let ((__tmp134248
               (cons (cons 'gensyms |gxc[1]#_g134249_|)
                     (cons (cons 'bindings |gxc[1]#_g134250_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 __tmp134248 '16 '#f '#f))
        (let ((__tmp134251
               (cons (cons 'gensyms |gxc[1]#_g134252_|)
                     (cons (cons 'bindings |gxc[1]#_g134253_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 __tmp134251 '17 '#f '#f))
        (let ((__tmp134254
               (cons (cons 'gensyms |gxc[1]#_g134255_|)
                     (cons (cons 'bindings |gxc[1]#_g134256_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 __tmp134254 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134201 '() '20 '#f '#f))
        __obj134201))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx133663%_)
        (let* ((_%g133667133681%_
                (lambda (_%g133668133677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133668133677%_))))
               (_%g133666133722%_
                (lambda (_%g133668133685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133668133685%_))
                      (let ((_%e133670133688%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133668133685%_))))
                        (let ((_%hd133671133692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133670133688%_)))
                              (_%tl133672133695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133670133688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133672133695%_))
                              (let ((_%e133673133698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133672133695%_))))
                                (let ((_%hd133674133702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133673133698%_)))
                                      (_%tl133675133705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133673133698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133675133705%_))
                                      ((lambda (_%L133708%_)
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
                         (cons '() (cons _%L133708%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd133674133702%_)
                                      (_%g133667133681%_ _%g133668133685%_))))
                              (_%g133667133681%_ _%g133668133685%_))))
                      (_%g133667133681%_ _%g133668133685%_)))))
          (_%g133666133722%_ _%$stx133663%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx133726%_)
        (let* ((_%g133730133744%_
                (lambda (_%g133731133740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133731133740%_))))
               (_%g133729133785%_
                (lambda (_%g133731133748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133731133748%_))
                      (let ((_%e133733133751%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133731133748%_))))
                        (let ((_%hd133734133755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133733133751%_)))
                              (_%tl133735133758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133733133751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133735133758%_))
                              (let ((_%e133736133761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133735133758%_))))
                                (let ((_%hd133737133765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133736133761%_)))
                                      (_%tl133738133768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133736133761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133738133768%_))
                                      ((lambda (_%L133771%_)
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
                         (cons _%L133771%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd133737133765%_)
                                      (_%g133730133744%_ _%g133731133748%_))))
                              (_%g133730133744%_ _%g133731133748%_))))
                      (_%g133730133744%_ _%g133731133748%_)))))
          (_%g133729133785%_ _%$stx133726%_))))))
