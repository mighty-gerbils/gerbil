(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g195909_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195911_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195913_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195915_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195916_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195918_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195919_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195921_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195922_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195924_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195925_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx194869%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx194869%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx194872%_)
        (let* ((_%$%g194875194899%_
                (lambda (_%$%g194876194895%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g194876194895%_))))
               (_%$%g194874195198%_
                (lambda (_%$%g194876194903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g194876194903%_))
                      (let ((_%$%e194879194906%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g194876194903%_))))
                        (let ((_%$%hd194880194910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194879194906%_)))
                              (_%$%tl194881194913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194879194906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl194881194913%_))
                              (let ((_%$%e194882194916%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl194881194913%_))))
                                (let ((_%$%hd194883194920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e194882194916%_)))
                                      (_%$%tl194884194923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e194882194916%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl194884194923%_))
                                      (let ((_g195900_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl194884194923%_
                                                '0))))
                                        (begin
                                          (let ((_g195901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195900_)
                                                       (##values-length
                                                        _g195900_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195901_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195901_)))
                                          (let ((_%$%target194885194926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195900_ 0)))
                                                (_%$%tl194887194929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195900_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl194887194929%_))
                                                (letrec ((_%$%loop194888194932%_
                                                          (lambda (_%$%hd194886194936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause194892194939%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd194886194936%_))
                        (let ((_%$%e194889194941%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd194886194936%_))))
                          (let ((_%$%lp-hd194890194945%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e194889194941%_)))
                                (_%$%lp-tl194891194948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e194889194941%_))))
                            (_%$%loop194888194932%_
                             _%$%lp-tl194891194948%_
                             (cons _%$%lp-hd194890194945%_
                                   _%$%clause194892194939%_))))
                        (let ((_%$%clause194893194951%_
                               (reverse _%$%clause194892194939%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd194883194920%_))
                              (let* ((_%$%g194975194992%_
                                      (lambda (_%$%g194976194988%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g194976194988%_))))
                                     (_%$%g194974195051%_
                                      (lambda (_%$%g194976194996%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g194976194996%_))
                                            (let ((_g195902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g194976194996%_
                                                      '0))))
                                              (begin
                                                (let ((_g195903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g195902_)
                                                             (##values-length
                                                              _g195902_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g195903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g195903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target194978194999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g195902_
                                                          0)))
                                                      (_%$%tl194980195002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g195902_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl194980195002%_))
                                                      (letrec ((_%$%loop194981195005%_
                                                                (lambda (_%$%hd194979195009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause194985195012%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd194979195009%_))
                              (let ((_%$%e194982195014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd194979195009%_))))
                                (let ((_%$%lp-hd194983195018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e194982195014%_)))
                                      (_%$%lp-tl194984195021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e194982195014%_))))
                                  (_%$%loop194981195005%_
                                   _%$%lp-tl194984195021%_
                                   (cons _%$%lp-hd194983195018%_
                                         _%$%clause194985195012%_))))
                              (let ((_%$%clause194986195024%_
                                     (reverse _%$%clause194985195012%_)))
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
                      (cons _%$%hd194883194920%_
                            (let ((__tmp195904
                                   (lambda (_%$%g195042195045%_
                                            _%$%g195043195048%_)
                                     (cons _%$%g195042195045%_
                                           _%$%g195043195048%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp195904
                               '()
                               _%$%clause194986195024%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop194981195005%_ _%$%target194978194999%_ '()))
              (_%$%g194975194992%_ _%$%g194976194996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g194975194992%_
                                             _%$%g194976194996%_)))))
                                (_%$%g194974195051%_
                                 (let ((__tmp195907
                                        (lambda (_%clause195055%_)
                                          (let* ((_%__stx195819195820%_
                                                  _%clause195055%_)
                                                 (_%$%g195059195086%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx195819195820%_)))))
                                            (let ((_%__kont195822195823%_
                                                   (lambda (_%$%g195061195171%_
                                                            _%$%g195062195173%_)
                                                     (cons _%$%g195062195173%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g195061195171%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195824195825%_
                                                   (lambda (_%$%g195069195123%_
                                                            _%$%g195070195125%_
                                                            _%$%g195071195126%_)
                                                     (cons _%$%g195071195126%_
                                                           (cons _%$%g195070195125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g195069195123%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx195819195820%_))
                                                  (let ((_%$%e195063195151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx195819195820%_))))
                                                    (let ((_%$%tl195065195158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e195063195151%_)))
                                                          (_%$%hd195064195155%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e195063195151%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl195065195158%_))
                                                          (let ((_%$%e195066195161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl195065195158%_))))
                    (let ((_%$%tl195068195168%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e195066195161%_)))
                          (_%$%hd195067195165%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e195066195161%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl195068195168%_))
                          (_%__kont195822195823%_
                           _%$%hd195067195165%_
                           _%$%hd195064195155%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195068195168%_))
                              (let ((_%$%e195078195113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl195068195168%_))))
                                (let ((_%$%tl195080195120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195078195113%_)))
                                      (_%$%hd195079195117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195078195113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl195080195120%_))
                                      (_%__kont195824195825%_
                                       _%$%hd195079195117%_
                                       _%$%hd195067195165%_
                                       _%$%hd195064195155%_)
                                      (_%$%g195059195086%_))))
                              (_%$%g195059195086%_)))))
                  (_%$%g195059195086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g195059195086%_))))))
                                       (__tmp195905
                                        (let ((__tmp195906
                                               (lambda (_%$%g195189195192%_
                                                        _%$%g195190195195%_)
                                                 (cons _%$%g195189195192%_
                                                       _%$%g195190195195%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp195906
                                           '()
                                           _%$%clause194893194951%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp195907 __tmp195905))))
                              (_%$%g194875194899%_ _%$%g194876194903%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop194888194932%_
                                                   _%$%target194885194926%_
                                                   '()))
                                                (_%$%g194875194899%_
                                                 _%$%g194876194903%_)))))
                                      (_%$%g194875194899%_
                                       _%$%g194876194903%_))))
                              (_%$%g194875194899%_ _%$%g194876194903%_))))
                      (_%$%g194875194899%_ _%$%g194876194903%_)))))
          (_%$%g194874195198%_ _%stx194872%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj195869
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
           __obj195869
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195869
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195869
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 ':init! '13 '#f '#f))
        (let ((__tmp195908 |gxc[1]#_g195909_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 __tmp195908 '4 '#f '#f))
        (let ((__tmp195910 |gxc[1]#_g195911_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 __tmp195910 '14 '#f '#f))
        (let ((__tmp195912 |gxc[1]#_g195913_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 __tmp195912 '15 '#f '#f))
        (let ((__tmp195914
               (cons (cons 'gensyms |gxc[1]#_g195915_|)
                     (cons (cons 'bindings |gxc[1]#_g195916_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 __tmp195914 '16 '#f '#f))
        (let ((__tmp195917
               (cons (cons 'gensyms |gxc[1]#_g195918_|)
                     (cons (cons 'bindings |gxc[1]#_g195919_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 __tmp195917 '17 '#f '#f))
        (let ((__tmp195920
               (cons (cons 'gensyms |gxc[1]#_g195921_|)
                     (cons (cons 'bindings |gxc[1]#_g195922_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 __tmp195920 '18 '#f '#f))
        (let ((__tmp195923
               (cons (cons 'gensyms |gxc[1]#_g195924_|)
                     (cons (cons 'bindings |gxc[1]#_g195925_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 __tmp195923 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj195869 '() '21 '#f '#f))
        __obj195869))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx195204%_)
        (let* ((_%$%g195208195222%_
                (lambda (_%$%g195209195218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195209195218%_))))
               (_%$%g195207195263%_
                (lambda (_%$%g195209195226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195209195226%_))
                      (let ((_%$%e195211195229%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g195209195226%_))))
                        (let ((_%$%hd195212195233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195211195229%_)))
                              (_%$%tl195213195236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195211195229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195213195236%_))
                              (let ((_%$%e195214195239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl195213195236%_))))
                                (let ((_%$%hd195215195243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195214195239%_)))
                                      (_%$%tl195216195246%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195214195239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl195216195246%_))
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
                      (cons '() (cons _%$%hd195215195243%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g195208195222%_
                                       _%$%g195209195226%_))))
                              (_%$%g195208195222%_ _%$%g195209195226%_))))
                      (_%$%g195208195222%_ _%$%g195209195226%_)))))
          (_%$%g195207195263%_ _%$stx195204%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx195267%_)
        (let* ((_%$%g195271195285%_
                (lambda (_%$%g195272195281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g195272195281%_))))
               (_%$%g195270195326%_
                (lambda (_%$%g195272195289%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g195272195289%_))
                      (let ((_%$%e195274195292%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g195272195289%_))))
                        (let ((_%$%hd195275195296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195274195292%_)))
                              (_%$%tl195276195299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195274195292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl195276195299%_))
                              (let ((_%$%e195277195302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl195276195299%_))))
                                (let ((_%$%hd195278195306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e195277195302%_)))
                                      (_%$%tl195279195309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e195277195302%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl195279195309%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd195278195306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g195271195285%_
                                       _%$%g195272195289%_))))
                              (_%$%g195271195285%_ _%$%g195272195289%_))))
                      (_%$%g195271195285%_ _%$%g195272195289%_)))))
          (_%$%g195270195326%_ _%$stx195267%_))))))
