(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g193223_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193225_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193227_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193229_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193230_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193232_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193233_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193235_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193236_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193238_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193239_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx192183%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx192183%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx192186%_)
        (let* ((_%$%g192189192213%_
                (lambda (_%$%g192190192209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g192190192209%_))))
               (_%$%g192188192512%_
                (lambda (_%$%g192190192217%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g192190192217%_))
                      (let ((_%$%e192193192220%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g192190192217%_))))
                        (let ((_%$%hd192194192224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192193192220%_)))
                              (_%$%tl192195192227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192193192220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl192195192227%_))
                              (let ((_%$%e192196192230%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl192195192227%_))))
                                (let ((_%$%hd192197192234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192196192230%_)))
                                      (_%$%tl192198192237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192196192230%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl192198192237%_))
                                      (let ((_g193214_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl192198192237%_
                                                '0))))
                                        (begin
                                          (let ((_g193215_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g193214_)
                                                       (##values-length
                                                        _g193214_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g193215_ 2)))
                                                (error "Context expects 2 values"
                                                       _g193215_)))
                                          (let ((_%$%target192199192240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g193214_ 0)))
                                                (_%$%tl192201192243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g193214_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl192201192243%_))
                                                (letrec ((_%$%loop192202192246%_
                                                          (lambda (_%$%hd192200192250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause192206192253%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd192200192250%_))
                        (let ((_%$%e192203192255%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd192200192250%_))))
                          (let ((_%$%lp-hd192204192259%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e192203192255%_)))
                                (_%$%lp-tl192205192262%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e192203192255%_))))
                            (_%$%loop192202192246%_
                             _%$%lp-tl192205192262%_
                             (cons _%$%lp-hd192204192259%_
                                   _%$%clause192206192253%_))))
                        (let ((_%$%clause192207192265%_
                               (reverse _%$%clause192206192253%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd192197192234%_))
                              (let* ((_%$%g192289192306%_
                                      (lambda (_%$%g192290192302%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g192290192302%_))))
                                     (_%$%g192288192365%_
                                      (lambda (_%$%g192290192310%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g192290192310%_))
                                            (let ((_g193216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g192290192310%_
                                                      '0))))
                                              (begin
                                                (let ((_g193217_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g193216_)
                                                             (##values-length
                                                              _g193216_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g193217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g193217_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target192292192313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g193216_
                                                          0)))
                                                      (_%$%tl192294192316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g193216_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl192294192316%_))
                                                      (letrec ((_%$%loop192295192319%_
                                                                (lambda (_%$%hd192293192323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause192299192326%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd192293192323%_))
                              (let ((_%$%e192296192328%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd192293192323%_))))
                                (let ((_%$%lp-hd192297192332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192296192328%_)))
                                      (_%$%lp-tl192298192335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192296192328%_))))
                                  (_%$%loop192295192319%_
                                   _%$%lp-tl192298192335%_
                                   (cons _%$%lp-hd192297192332%_
                                         _%$%clause192299192326%_))))
                              (let ((_%$%clause192300192338%_
                                     (reverse _%$%clause192299192326%_)))
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
                      (cons _%$%hd192197192234%_
                            (let ((__tmp193218
                                   (lambda (_%$%g192356192359%_
                                            _%$%g192357192362%_)
                                     (cons _%$%g192356192359%_
                                           _%$%g192357192362%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp193218
                               '()
                               _%$%clause192300192338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop192295192319%_ _%$%target192292192313%_ '()))
              (_%$%g192289192306%_ _%$%g192290192310%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g192289192306%_
                                             _%$%g192290192310%_)))))
                                (_%$%g192288192365%_
                                 (let ((__tmp193221
                                        (lambda (_%clause192369%_)
                                          (let* ((_%__stx193133193134%_
                                                  _%clause192369%_)
                                                 (_%$%g192373192400%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx193133193134%_)))))
                                            (let ((_%__kont193136193137%_
                                                   (lambda (_%$%g192375192485%_
                                                            _%$%g192376192487%_)
                                                     (cons _%$%g192376192487%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g192375192485%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193138193139%_
                                                   (lambda (_%$%g192383192437%_
                                                            _%$%g192384192439%_
                                                            _%$%g192385192440%_)
                                                     (cons _%$%g192385192440%_
                                                           (cons _%$%g192384192439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g192383192437%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx193133193134%_))
                                                  (let ((_%$%e192377192465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx193133193134%_))))
                                                    (let ((_%$%tl192379192472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e192377192465%_)))
                                                          (_%$%hd192378192469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e192377192465%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl192379192472%_))
                                                          (let ((_%$%e192380192475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl192379192472%_))))
                    (let ((_%$%tl192382192482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e192380192475%_)))
                          (_%$%hd192381192479%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e192380192475%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl192382192482%_))
                          (_%__kont193136193137%_
                           _%$%hd192381192479%_
                           _%$%hd192378192469%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl192382192482%_))
                              (let ((_%$%e192392192427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl192382192482%_))))
                                (let ((_%$%tl192394192434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192392192427%_)))
                                      (_%$%hd192393192431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192392192427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl192394192434%_))
                                      (_%__kont193138193139%_
                                       _%$%hd192393192431%_
                                       _%$%hd192381192479%_
                                       _%$%hd192378192469%_)
                                      (_%$%g192373192400%_))))
                              (_%$%g192373192400%_)))))
                  (_%$%g192373192400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g192373192400%_))))))
                                       (__tmp193219
                                        (let ((__tmp193220
                                               (lambda (_%$%g192503192506%_
                                                        _%$%g192504192509%_)
                                                 (cons _%$%g192503192506%_
                                                       _%$%g192504192509%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp193220
                                           '()
                                           _%$%clause192207192265%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp193221 __tmp193219))))
                              (_%$%g192189192213%_ _%$%g192190192217%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop192202192246%_
                                                   _%$%target192199192240%_
                                                   '()))
                                                (_%$%g192189192213%_
                                                 _%$%g192190192217%_)))))
                                      (_%$%g192189192213%_
                                       _%$%g192190192217%_))))
                              (_%$%g192189192213%_ _%$%g192190192217%_))))
                      (_%$%g192189192213%_ _%$%g192190192217%_)))))
          (_%$%g192188192512%_ _%stx192186%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj193183
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
           __obj193183
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj193183
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj193183
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 ':init! '13 '#f '#f))
        (let ((__tmp193222 |gxc[1]#_g193223_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 __tmp193222 '4 '#f '#f))
        (let ((__tmp193224 |gxc[1]#_g193225_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 __tmp193224 '14 '#f '#f))
        (let ((__tmp193226 |gxc[1]#_g193227_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 __tmp193226 '15 '#f '#f))
        (let ((__tmp193228
               (cons (cons 'gensyms |gxc[1]#_g193229_|)
                     (cons (cons 'bindings |gxc[1]#_g193230_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 __tmp193228 '16 '#f '#f))
        (let ((__tmp193231
               (cons (cons 'gensyms |gxc[1]#_g193232_|)
                     (cons (cons 'bindings |gxc[1]#_g193233_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 __tmp193231 '17 '#f '#f))
        (let ((__tmp193234
               (cons (cons 'gensyms |gxc[1]#_g193235_|)
                     (cons (cons 'bindings |gxc[1]#_g193236_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 __tmp193234 '18 '#f '#f))
        (let ((__tmp193237
               (cons (cons 'gensyms |gxc[1]#_g193238_|)
                     (cons (cons 'bindings |gxc[1]#_g193239_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 __tmp193237 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193183 '() '21 '#f '#f))
        __obj193183))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx192518%_)
        (let* ((_%$%g192522192536%_
                (lambda (_%$%g192523192532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g192523192532%_))))
               (_%$%g192521192577%_
                (lambda (_%$%g192523192540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g192523192540%_))
                      (let ((_%$%e192525192543%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g192523192540%_))))
                        (let ((_%$%hd192526192547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192525192543%_)))
                              (_%$%tl192527192550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192525192543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl192527192550%_))
                              (let ((_%$%e192528192553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl192527192550%_))))
                                (let ((_%$%hd192529192557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192528192553%_)))
                                      (_%$%tl192530192560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192528192553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl192530192560%_))
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
                      (cons '() (cons _%$%hd192529192557%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g192522192536%_
                                       _%$%g192523192540%_))))
                              (_%$%g192522192536%_ _%$%g192523192540%_))))
                      (_%$%g192522192536%_ _%$%g192523192540%_)))))
          (_%$%g192521192577%_ _%$stx192518%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx192581%_)
        (let* ((_%$%g192585192599%_
                (lambda (_%$%g192586192595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g192586192595%_))))
               (_%$%g192584192640%_
                (lambda (_%$%g192586192603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g192586192603%_))
                      (let ((_%$%e192588192606%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g192586192603%_))))
                        (let ((_%$%hd192589192610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e192588192606%_)))
                              (_%$%tl192590192613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e192588192606%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl192590192613%_))
                              (let ((_%$%e192591192616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl192590192613%_))))
                                (let ((_%$%hd192592192620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e192591192616%_)))
                                      (_%$%tl192593192623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e192591192616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl192593192623%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd192592192620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g192585192599%_
                                       _%$%g192586192603%_))))
                              (_%$%g192585192599%_ _%$%g192586192603%_))))
                      (_%$%g192585192599%_ _%$%g192586192603%_)))))
          (_%$%g192584192640%_ _%$stx192581%_))))))
