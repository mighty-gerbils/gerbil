(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g141254_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141256_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141258_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141260_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141261_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141263_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141264_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141266_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141267_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141269_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g141270_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx140340%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx140340%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx140343%_)
        (let* ((_%g140346140370%_
                (lambda (_%g140347140366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140347140366%_))))
               (_%g140345140673%_
                (lambda (_%g140347140374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140347140374%_))
                      (let ((_%e140350140377%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g140347140374%_))))
                        (let ((_%hd140351140381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140350140377%_)))
                              (_%tl140352140384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140350140377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140352140384%_))
                              (let ((_%e140353140387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl140352140384%_))))
                                (let ((_%hd140354140391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140353140387%_)))
                                      (_%tl140355140394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140353140387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl140355140394%_))
                                      (let ((_g141245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl140355140394%_
                                                '0))))
                                        (begin
                                          (let ((_g141246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g141245_)
                                                       (##values-length
                                                        _g141245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g141246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g141246_)))
                                          (let ((_%target140356140397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g141245_ 0)))
                                                (_%tl140358140400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g141245_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140358140400%_))
                                                (letrec ((_%loop140359140403%_
                                                          (lambda (_%hd140357140407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause140363140410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140357140407%_))
                        (let ((_%e140360140413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd140357140407%_))))
                          (let ((_%lp-hd140361140417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140360140413%_)))
                                (_%lp-tl140362140420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140360140413%_))))
                            (_%loop140359140403%_
                             _%lp-tl140362140420%_
                             (cons _%lp-hd140361140417%_
                                   _%clause140363140410%_))))
                        (let ((_%clause140364140423%_
                               (reverse _%clause140363140410%_)))
                          ((lambda (_%L140427%_ _%L140429%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L140429%_))
                                 (let* ((_%g140448140465%_
                                         (lambda (_%g140449140461%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g140449140461%_))))
                                        (_%g140447140526%_
                                         (lambda (_%g140449140469%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g140449140469%_))
                                               (let ((_g141247_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g140449140469%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g141248_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g141247_)
                        (##values-length _g141247_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g141248_ 2)))
                 (error "Context expects 2 values" _g141248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target140451140472%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g141247_
                                                             0)))
                                                         (_%tl140453140475%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g141247_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140453140475%_))
                                                         (letrec ((_%loop140454140478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd140452140482%_ _%clause140458140485%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd140452140482%_))
                                 (let ((_%e140455140488%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd140452140482%_))))
                                   (let ((_%lp-hd140456140492%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140455140488%_)))
                                         (_%lp-tl140457140495%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140455140488%_))))
                                     (_%loop140454140478%_
                                      _%lp-tl140457140495%_
                                      (cons _%lp-hd140456140492%_
                                            _%clause140458140485%_))))
                                 (let ((_%clause140459140498%_
                                        (reverse _%clause140458140485%_)))
                                   ((lambda (_%L140502%_)
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
                            (cons _%L140429%_
                                  (let ((__tmp141249
                                         (lambda (_%g140517140520%_
                                                  _%g140518140523%_)
                                           (cons _%g140517140520%_
                                                 _%g140518140523%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp141249 '() _%L140502%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause140459140498%_))))))
                   (_%loop140454140478%_ _%target140451140472%_ '()))
                 (_%g140448140465%_ _%g140449140469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g140448140465%_
                                                _%g140449140469%_)))))
                                   (_%g140447140526%_
                                    (let ((__tmp141252
                                           (lambda (_%clause140530%_)
                                             (let* ((_%__stx141165141166%_
                                                     _%clause140530%_)
                                                    (_%g140534140561%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx141165141166%_)))))
                                               (let ((_%__kont141168141169%_
                                                      (lambda (_%L140646%_
                                                               _%L140648%_)
                                                        (cons _%L140648%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L140646%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont141170141171%_
                                                      (lambda (_%L140598%_
                                                               _%L140600%_
                                                               _%L140601%_)
                                                        (cons _%L140601%_
                                                              (cons _%L140600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L140598%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx141165141166%_))
                                                     (let ((_%e140538140626%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx141165141166%_))))
                                                       (let ((_%tl140540140633%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140538140626%_)))
                     (_%hd140539140630%_
                      (let () (declare (not safe)) (##car _%e140538140626%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140540140633%_))
                     (let ((_%e140541140636%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl140540140633%_))))
                       (let ((_%tl140543140643%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140541140636%_)))
                             (_%hd140542140640%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140541140636%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140543140643%_))
                             (_%__kont141168141169%_
                              _%hd140542140640%_
                              _%hd140539140630%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl140543140643%_))
                                 (let ((_%e140553140588%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl140543140643%_))))
                                   (let ((_%tl140555140595%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140553140588%_)))
                                         (_%hd140554140592%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140553140588%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl140555140595%_))
                                         (_%__kont141170141171%_
                                          _%hd140554140592%_
                                          _%hd140542140640%_
                                          _%hd140539140630%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g140534140561%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g140534140561%_))))))
                     (let () (declare (not safe)) (_%g140534140561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140534140561%_)))))))
                                          (__tmp141250
                                           (let ((__tmp141251
                                                  (lambda (_%g140664140667%_
                                                           _%g140665140670%_)
                                                    (cons _%g140664140667%_
                                                          _%g140665140670%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp141251
                                              '()
                                              _%L140427%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp141252 __tmp141250))))
                                 (_%g140346140370%_ _%g140347140374%_)))
                           _%clause140364140423%_
                           _%hd140354140391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop140359140403%_
                                                   _%target140356140397%_
                                                   '()))
                                                (_%g140346140370%_
                                                 _%g140347140374%_)))))
                                      (_%g140346140370%_ _%g140347140374%_))))
                              (_%g140346140370%_ _%g140347140374%_))))
                      (_%g140346140370%_ _%g140347140374%_)))))
          (_%g140345140673%_ _%stx140343%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj141215
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
           __obj141215
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj141215
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj141215
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 ':init! '11 '#f '#f))
        (let ((__tmp141253 |gxc[1]#_g141254_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 __tmp141253 '12 '#f '#f))
        (let ((__tmp141255 |gxc[1]#_g141256_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 __tmp141255 '13 '#f '#f))
        (let ((__tmp141257 |gxc[1]#_g141258_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 __tmp141257 '14 '#f '#f))
        (let ((__tmp141259
               (cons (cons 'gensyms |gxc[1]#_g141260_|)
                     (cons (cons 'bindings |gxc[1]#_g141261_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 __tmp141259 '15 '#f '#f))
        (let ((__tmp141262
               (cons (cons 'gensyms |gxc[1]#_g141263_|)
                     (cons (cons 'bindings |gxc[1]#_g141264_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 __tmp141262 '16 '#f '#f))
        (let ((__tmp141265
               (cons (cons 'gensyms |gxc[1]#_g141266_|)
                     (cons (cons 'bindings |gxc[1]#_g141267_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 __tmp141265 '17 '#f '#f))
        (let ((__tmp141268
               (cons (cons 'gensyms |gxc[1]#_g141269_|)
                     (cons (cons 'bindings |gxc[1]#_g141270_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 __tmp141268 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj141215 '() '20 '#f '#f))
        __obj141215))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx140679%_)
        (let* ((_%g140683140697%_
                (lambda (_%g140684140693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140684140693%_))))
               (_%g140682140738%_
                (lambda (_%g140684140701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140684140701%_))
                      (let ((_%e140686140704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g140684140701%_))))
                        (let ((_%hd140687140708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140686140704%_)))
                              (_%tl140688140711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140686140704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140688140711%_))
                              (let ((_%e140689140714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl140688140711%_))))
                                (let ((_%hd140690140718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140689140714%_)))
                                      (_%tl140691140721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140689140714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl140691140721%_))
                                      ((lambda (_%L140724%_)
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
                         (cons '() (cons _%L140724%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd140690140718%_)
                                      (_%g140683140697%_ _%g140684140701%_))))
                              (_%g140683140697%_ _%g140684140701%_))))
                      (_%g140683140697%_ _%g140684140701%_)))))
          (_%g140682140738%_ _%$stx140679%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx140742%_)
        (let* ((_%g140746140760%_
                (lambda (_%g140747140756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140747140756%_))))
               (_%g140745140801%_
                (lambda (_%g140747140764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140747140764%_))
                      (let ((_%e140749140767%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g140747140764%_))))
                        (let ((_%hd140750140771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140749140767%_)))
                              (_%tl140751140774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140749140767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140751140774%_))
                              (let ((_%e140752140777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl140751140774%_))))
                                (let ((_%hd140753140781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140752140777%_)))
                                      (_%tl140754140784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140752140777%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl140754140784%_))
                                      ((lambda (_%L140787%_)
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
                         (cons _%L140787%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd140753140781%_)
                                      (_%g140746140760%_ _%g140747140764%_))))
                              (_%g140746140760%_ _%g140747140764%_))))
                      (_%g140746140760%_ _%g140747140764%_)))))
          (_%g140745140801%_ _%$stx140742%_))))))
