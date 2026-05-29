(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g101319_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g101320_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g101321_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx50023%_)
        (let* ((_%__stx9441894419%_ _%stx50023%_)
               (_%g5002750060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9441894419%_))))
          (let ((_%__kont9442194422%_
                 (lambda (_%g5002950309%_ _%g5003050311%_)
                   (let ((_%meta50326%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50023%_
                             _%g5002950309%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta50326%_))
                         (let* ((_%g5033150346%_
                                 (lambda (_%g5033250342%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g5033250342%_)))
                                (_%g5033050393%_
                                 (lambda (_%g5033250350%_)
                                   (if (gx#stx-pair? _%g5033250350%_)
                                       (let ((_%e5033550353%_
                                              (gx#syntax-e _%g5033250350%_)))
                                         (let ((_%hd5033650357%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5033550353%_)))
                                               (_%tl5033750360%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5033550353%_))))
                                           (if (gx#stx-pair? _%tl5033750360%_)
                                               (let ((_%e5033850363%_
                                                      (gx#syntax-e
                                                       _%tl5033750360%_)))
                                                 (let ((_%hd5033950367%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5033850363%_)))
                                                       (_%tl5034050370%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5033850363%_))))
                                                   (if (gx#stx-null?
                                                        _%tl5034050370%_)
                                                       (if (let ((__tmp101316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj101134 _%meta50326%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj101134
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj101134
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj101134 'id)))))
                     (declare (not safe))
                     (##memq __tmp101316 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5033650357%_ '()))
                               (cons _%g5003050311%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5033650357%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%g5003050311%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%hd5033950367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%g5003050311%_
                                                   (cons (cons _%hd5033950367%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%g5033150346%_ _%g5033250350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5033150346%_
                                                _%g5033250350%_))))
                                       (_%g5033150346%_ _%g5033250350%_)))))
                           (_%g5033050393%_
                            (list (let ((__obj101135 _%meta50326%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101135
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101135
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101135
                                         'type-descriptor)))
                                  (let ((__obj101136 _%meta50326%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101136
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101136
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101136
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta50326%_))
                             (let* ((_%g5039950414%_
                                     (lambda (_%g5040050410%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g5040050410%_)))
                                    (_%g5039850459%_
                                     (lambda (_%g5040050418%_)
                                       (if (gx#stx-pair? _%g5040050418%_)
                                           (let ((_%e5040350421%_
                                                  (gx#syntax-e
                                                   _%g5040050418%_)))
                                             (let ((_%hd5040450425%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e5040350421%_)))
                                                   (_%tl5040550428%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e5040350421%_))))
                                               (if (gx#stx-pair?
                                                    _%tl5040550428%_)
                                                   (let ((_%e5040650431%_
                                                          (gx#syntax-e
                                                           _%tl5040550428%_)))
                                                     (let ((_%hd5040750435%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e5040650431%_)))
                                                           (_%tl5040850438%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e5040650431%_))))
                                                       (if (gx#stx-null?
                                                            _%tl5040850438%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5040450425%_ '()))
                               (cons (cons _%hd5040750435%_
                                           (cons _%g5003050311%_ '()))
                                     '())))
                   (_%g5039950414%_ _%g5040050418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g5039950414%_
                                                    _%g5040050418%_))))
                                           (_%g5039950414%_
                                            _%g5040050418%_)))))
                               (_%g5039850459%_
                                (list (let ((__obj101133 _%meta50326%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101133
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101133
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj101133
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx50023%_
                                         _%g5002950309%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx50023%_
                              _%g5002950309%_))))))
                (_%__kont9442394424%_
                 (lambda (_%g5004050111%_ _%g5004150113%_)
                   (let ((_%meta50133%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50023%_
                             _%g5004050111%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta50133%_))
                         (let* ((_%g5013850153%_
                                 (lambda (_%g5013950149%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g5013950149%_)))
                                (_%g5013750200%_
                                 (lambda (_%g5013950157%_)
                                   (if (gx#stx-pair? _%g5013950157%_)
                                       (let ((_%e5014250160%_
                                              (gx#syntax-e _%g5013950157%_)))
                                         (let ((_%hd5014350164%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5014250160%_)))
                                               (_%tl5014450167%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5014250160%_))))
                                           (if (gx#stx-pair? _%tl5014450167%_)
                                               (let ((_%e5014550170%_
                                                      (gx#syntax-e
                                                       _%tl5014450167%_)))
                                                 (let ((_%hd5014650174%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5014550170%_)))
                                                       (_%tl5014750177%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5014550170%_))))
                                                   (if (gx#stx-null?
                                                        _%tl5014750177%_)
                                                       (if (let ((__tmp101317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj101138 _%meta50133%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj101138
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj101138
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj101138 'id)))))
                     (declare (not safe))
                     (##memq __tmp101317 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5014350164%_ '()))
                               (cons _%g5004150113%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5014350164%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%g5004150113%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%hd5014650174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%g5004150113%_
                                                   (cons (cons _%hd5014650174%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%g5013850153%_ _%g5013950157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5013850153%_
                                                _%g5013950157%_))))
                                       (_%g5013850153%_ _%g5013950157%_)))))
                           (_%g5013750200%_
                            (list (let ((__obj101139 _%meta50133%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101139
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101139
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101139
                                         'type-descriptor)))
                                  (let ((__obj101140 _%meta50133%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101140
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101140
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101140
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta50133%_))
                             (let* ((_%g5020650221%_
                                     (lambda (_%g5020750217%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g5020750217%_)))
                                    (_%g5020550266%_
                                     (lambda (_%g5020750225%_)
                                       (if (gx#stx-pair? _%g5020750225%_)
                                           (let ((_%e5021050228%_
                                                  (gx#syntax-e
                                                   _%g5020750225%_)))
                                             (let ((_%hd5021150232%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e5021050228%_)))
                                                   (_%tl5021250235%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e5021050228%_))))
                                               (if (gx#stx-pair?
                                                    _%tl5021250235%_)
                                                   (let ((_%e5021350238%_
                                                          (gx#syntax-e
                                                           _%tl5021250235%_)))
                                                     (let ((_%hd5021450242%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e5021350238%_)))
                                                           (_%tl5021550245%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e5021350238%_))))
                                                       (if (gx#stx-null?
                                                            _%tl5021550245%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5021150232%_ '()))
                               (cons (cons _%hd5021450242%_
                                           (cons _%g5004150113%_ '()))
                                     '())))
                   (_%g5020650221%_ _%g5020750225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g5020650221%_
                                                    _%g5020750225%_))))
                                           (_%g5020650221%_
                                            _%g5020750225%_)))))
                               (_%g5020550266%_
                                (list (let ((__obj101137 _%meta50133%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101137
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101137
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj101137
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx50023%_
                                         _%g5004050111%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx50023%_
                              _%g5004050111%_)))))))
            (let* ((_%__match9447794478%_
                    (lambda (_%e5004250067%_
                             _%hd5004350071%_
                             _%tl5004450074%_
                             _%e5004550077%_
                             _%hd5004650081%_
                             _%tl5004750084%_
                             _%e5004850087%_
                             _%hd5004950091%_
                             _%tl5005050094%_
                             _%e5005150097%_
                             _%e5005250101%_
                             _%hd5005350105%_
                             _%tl5005450108%_)
                      (let ((_%g5004050111%_ _%hd5005350105%_)
                            (_%g5004150113%_ _%hd5004650081%_))
                        (if (gx#identifier? _%g5004050111%_)
                            (_%__kont9442394424%_
                             _%g5004050111%_
                             _%g5004150113%_)
                            (let () (declare (not safe)) (_%g5002750060%_))))))
                   (_%__match9444594446%_
                    (lambda (_%e5003150279%_
                             _%hd5003250283%_
                             _%tl5003350286%_
                             _%e5003450289%_
                             _%hd5003550293%_
                             _%tl5003650296%_
                             _%e5003750299%_
                             _%hd5003850303%_
                             _%tl5003950306%_)
                      (let ((_%g5002950309%_ _%hd5003850303%_)
                            (_%g5003050311%_ _%hd5003550293%_))
                        (if (gx#identifier? _%g5002950309%_)
                            (_%__kont9442194422%_
                             _%g5002950309%_
                             _%g5003050311%_)
                            (if (gx#stx-datum? _%hd5003850303%_)
                                (let ((_%e5005150097%_
                                       (gx#stx-e _%hd5003850303%_)))
                                  (declare (not safe))
                                  (_%g5002750060%_))
                                (let ()
                                  (declare (not safe))
                                  (_%g5002750060%_))))))))
              (if (gx#stx-pair? _%__stx9441894419%_)
                  (let ((_%e5003150279%_ (gx#syntax-e _%__stx9441894419%_)))
                    (let ((_%tl5003350286%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003150279%_)))
                          (_%hd5003250283%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003150279%_))))
                      (if (gx#stx-pair? _%tl5003350286%_)
                          (let ((_%e5003450289%_
                                 (gx#syntax-e _%tl5003350286%_)))
                            (let ((_%tl5003650296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003450289%_)))
                                  (_%hd5003550293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003450289%_))))
                              (if (gx#stx-pair? _%tl5003650296%_)
                                  (let ((_%e5003750299%_
                                         (gx#syntax-e _%tl5003650296%_)))
                                    (let ((_%tl5003950306%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5003750299%_)))
                                          (_%hd5003850303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5003750299%_))))
                                      (if (gx#stx-null? _%tl5003950306%_)
                                          (_%__match9444594446%_
                                           _%e5003150279%_
                                           _%hd5003250283%_
                                           _%tl5003350286%_
                                           _%e5003450289%_
                                           _%hd5003550293%_
                                           _%tl5003650296%_
                                           _%e5003750299%_
                                           _%hd5003850303%_
                                           _%tl5003950306%_)
                                          (if (gx#stx-datum? _%hd5003850303%_)
                                              (let ((_%e5005150097%_
                                                     (gx#stx-e
                                                      _%hd5003850303%_)))
                                                (if (equal? _%e5005150097%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%tl5003950306%_)
                                                        (let ((_%e5005250101%_
                                                               (gx#syntax-e
                                                                _%tl5003950306%_)))
                                                          (let ((_%tl5005450108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e5005250101%_)))
                        (_%hd5005350105%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5005250101%_))))
                    (if (gx#stx-null? _%tl5005450108%_)
                        (_%__match9447794478%_
                         _%e5003150279%_
                         _%hd5003250283%_
                         _%tl5003350286%_
                         _%e5003450289%_
                         _%hd5003550293%_
                         _%tl5003650296%_
                         _%e5003750299%_
                         _%hd5003850303%_
                         _%tl5003950306%_
                         _%e5005150097%_
                         _%e5005250101%_
                         _%hd5005350105%_
                         _%tl5005450108%_)
                        (let () (declare (not safe)) (_%g5002750060%_)))))
                (let () (declare (not safe)) (_%g5002750060%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5002750060%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5002750060%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5002750060%_)))))
                          (let () (declare (not safe)) (_%g5002750060%_)))))
                  (let () (declare (not safe)) (_%g5002750060%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx50469%_)
        (let* ((_%g5047250490%_
                (lambda (_%g5047350486%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5047350486%_)))
               (_%g5047150684%_
                (lambda (_%g5047350494%_)
                  (if (gx#stx-pair? _%g5047350494%_)
                      (let ((_%e5047650497%_ (gx#syntax-e _%g5047350494%_)))
                        (let ((_%hd5047750501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5047650497%_)))
                              (_%tl5047850504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5047650497%_))))
                          (if (gx#stx-pair? _%tl5047850504%_)
                              (let ((_%e5047950507%_
                                     (gx#syntax-e _%tl5047850504%_)))
                                (let ((_%hd5048050511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5047950507%_)))
                                      (_%tl5048150514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5047950507%_))))
                                  (if (gx#stx-pair? _%tl5048150514%_)
                                      (let ((_%e5048250517%_
                                             (gx#syntax-e _%tl5048150514%_)))
                                        (let ((_%hd5048350521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5048250517%_)))
                                              (_%tl5048450524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5048250517%_))))
                                          (if (gx#stx-null? _%tl5048450524%_)
                                              (if (gx#identifier?
                                                   _%hd5048350521%_)
                                                  (let ((_%meta50545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx50469%_
                                                            _%hd5048350521%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta50545%_))
                                                        (let* ((_%g5055050565%_
                                                                (lambda (_%g5055150561%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g5055150561%_)))
                       (_%g5054950612%_
                        (lambda (_%g5055150569%_)
                          (if (gx#stx-pair? _%g5055150569%_)
                              (let ((_%e5055450572%_
                                     (gx#syntax-e _%g5055150569%_)))
                                (let ((_%hd5055550576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5055450572%_)))
                                      (_%tl5055650579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5055450572%_))))
                                  (if (gx#stx-pair? _%tl5055650579%_)
                                      (let ((_%e5055750582%_
                                             (gx#syntax-e _%tl5055650579%_)))
                                        (let ((_%hd5055850586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5055750582%_)))
                                              (_%tl5055950589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5055750582%_))))
                                          (if (gx#stx-null? _%tl5055950589%_)
                                              (if (let ((__tmp101318
                                                         (let ((__obj101142
                                                                _%meta50545%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj101142
                          'gerbil/core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj101142 '2 '#f '#f))
                       (unchecked-slot-ref __obj101142 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp101318
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%hd5055550576%_ '()))
                      (cons _%hd5048050511%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%hd5055550576%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%hd5048050511%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%hd5055850586%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%hd5048050511%_
                                          (cons (cons _%hd5055850586%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5055050565%_
                                               _%g5055150569%_))))
                                      (_%g5055050565%_ _%g5055150569%_))))
                              (_%g5055050565%_ _%g5055150569%_)))))
                  (_%g5054950612%_
                   (list (let ((__obj101143 _%meta50545%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj101143
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj101143
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj101143
                                'type-descriptor)))
                         (let ((__obj101144 _%meta50545%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj101144
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj101144
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj101144 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta50545%_))
                    (let* ((_%g5061850633%_
                            (lambda (_%g5061950629%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5061950629%_)))
                           (_%g5061750678%_
                            (lambda (_%g5061950637%_)
                              (if (gx#stx-pair? _%g5061950637%_)
                                  (let ((_%e5062250640%_
                                         (gx#syntax-e _%g5061950637%_)))
                                    (let ((_%hd5062350644%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5062250640%_)))
                                          (_%tl5062450647%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5062250640%_))))
                                      (if (gx#stx-pair? _%tl5062450647%_)
                                          (let ((_%e5062550650%_
                                                 (gx#syntax-e
                                                  _%tl5062450647%_)))
                                            (let ((_%hd5062650654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5062550650%_)))
                                                  (_%tl5062750657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5062550650%_))))
                                              (if (gx#stx-null?
                                                   _%tl5062750657%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%hd5062350644%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%hd5048050511%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%hd5062650654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5061850633%_
                                                   _%g5061950637%_))))
                                          (_%g5061850633%_ _%g5061950637%_))))
                                  (_%g5061850633%_ _%g5061950637%_)))))
                      (_%g5061750678%_
                       (list (let ((__obj101141 _%meta50545%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101141
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101141
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj101141
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx50469%_
                                _%hd5048350521%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx50469%_
                     _%hd5048350521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5047250490%_
                                                   _%g5047350494%_))
                                              (_%g5047250490%_
                                               _%g5047350494%_))))
                                      (_%g5047250490%_ _%g5047350494%_))))
                              (_%g5047250490%_ _%g5047350494%_))))
                      (_%g5047250490%_ _%g5047350494%_)))))
          (_%g5047150684%_ _%stx50469%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50688%_)
        (let* ((_%g5069150709%_
                (lambda (_%g5069250705%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5069250705%_)))
               (_%g5069050795%_
                (lambda (_%g5069250713%_)
                  (if (gx#stx-pair? _%g5069250713%_)
                      (let ((_%e5069550716%_ (gx#syntax-e _%g5069250713%_)))
                        (let ((_%hd5069650720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5069550716%_)))
                              (_%tl5069750723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5069550716%_))))
                          (if (gx#stx-pair? _%tl5069750723%_)
                              (let ((_%e5069850726%_
                                     (gx#syntax-e _%tl5069750723%_)))
                                (let ((_%hd5069950730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5069850726%_)))
                                      (_%tl5070050733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5069850726%_))))
                                  (if (gx#stx-pair? _%tl5070050733%_)
                                      (let ((_%e5070150736%_
                                             (gx#syntax-e _%tl5070050733%_)))
                                        (let ((_%hd5070250740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5070150736%_)))
                                              (_%tl5070350743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5070150736%_))))
                                          (if (gx#stx-null? _%tl5070350743%_)
                                              (if (gx#identifier?
                                                   _%hd5070250740%_)
                                                  (let* ((_%g5076450772%_
                                                          (lambda (_%g5076550768%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g5076550768%_)))
                                                         (_%g5076350791%_
                                                          (lambda (_%g5076550776%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%g5076550776%_ '()))
                                (cons _%hd5069950730%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5076350791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx50688%_
                                                        _%hd5070250740%_))))
                                                  (_%g5069150709%_
                                                   _%g5069250713%_))
                                              (_%g5069150709%_
                                               _%g5069250713%_))))
                                      (_%g5069150709%_ _%g5069250713%_))))
                              (_%g5069150709%_ _%g5069250713%_))))
                      (_%g5069150709%_ _%g5069250713%_)))))
          (_%g5069050795%_ _%stx50688%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50799%_)
        (let* ((_%__stx9448094481%_ _%$stx50799%_)
               (_%g5080550889%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9448094481%_))))
          (let ((_%__kont9448394484%_
                 (lambda (_%g5080751193%_
                          _%g5080851195%_
                          _%g5080951196%_
                          _%g5081051197%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5081051197%_
                                           (cons _%g5080851195%_
                                                 (foldr (lambda (_%g5122151224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5122251227%_)
                  (cons _%g5122151224%_ _%g5122251227%_))
                '()
                _%g5080751193%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5080951196%_ '())))))
                (_%__kont9448794488%_
                 (lambda (_%g5083551071%_
                          _%g5083651073%_
                          _%g5083751074%_
                          _%g5083851075%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5083851075%_
                                           (cons _%g5083651073%_
                                                 (foldr (lambda (_%g5109951102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5110051105%_)
                  (cons _%g5109951102%_ _%g5110051105%_))
                '()
                _%g5083551071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5083751074%_ '())))))
                (_%__kont9449194492%_
                 (lambda (_%g5086350954%_ _%g5086450956%_ _%g5086550957%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5086550957%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5086450956%_
                                                       (foldr (lambda (_%g5097750980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5097850983%_)
                        (cons _%g5097750980%_ _%g5097850983%_))
                      '()
                      _%g5086350954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9460594606%_
                    (lambda (_%e5086650896%_
                             _%hd5086750900%_
                             _%tl5086850903%_
                             _%e5086950906%_
                             _%hd5087050910%_
                             _%tl5087150913%_
                             _%e5087250916%_
                             _%hd5087350920%_
                             _%tl5087450923%_
                             _%__splice9449394494%_
                             _%target5087550926%_
                             _%tl5087750929%_)
                      (letrec ((_%loop5087850932%_
                                (lambda (_%hd5087650936%_ _%rest5088250939%_)
                                  (if (gx#stx-pair? _%hd5087650936%_)
                                      (let ((_%e5087950941%_
                                             (gx#syntax-e _%hd5087650936%_)))
                                        (let ((_%lp-tl5088150948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5087950941%_)))
                                              (_%lp-hd5088050945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5087950941%_))))
                                          (_%loop5087850932%_
                                           _%lp-tl5088150948%_
                                           (cons _%lp-hd5088050945%_
                                                 _%rest5088250939%_))))
                                      (let ((_%rest5088350951%_
                                             (reverse _%rest5088250939%_)))
                                        (_%__kont9449194492%_
                                         _%rest5088350951%_
                                         _%hd5087350920%_
                                         _%hd5087050910%_))))))
                        (_%loop5087850932%_ _%target5087550926%_ '()))))
                   (_%__match9457994580%_
                    (lambda (_%e5083950993%_
                             _%hd5084050997%_
                             _%tl5084151000%_
                             _%e5084251003%_
                             _%hd5084351007%_
                             _%tl5084451010%_
                             _%e5084551013%_
                             _%hd5084651017%_
                             _%tl5084751020%_
                             _%e5084851023%_
                             _%hd5084951027%_
                             _%tl5085051030%_
                             _%e5085151033%_
                             _%hd5085251037%_
                             _%tl5085351040%_
                             _%__splice9448994490%_
                             _%target5085451043%_
                             _%tl5085651046%_)
                      (letrec ((_%loop5085751049%_
                                (lambda (_%hd5085551053%_ _%rest5086151056%_)
                                  (if (gx#stx-pair? _%hd5085551053%_)
                                      (let ((_%e5085851058%_
                                             (gx#syntax-e _%hd5085551053%_)))
                                        (let ((_%lp-tl5086051065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5085851058%_)))
                                              (_%lp-hd5085951062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5085851058%_))))
                                          (_%loop5085751049%_
                                           _%lp-tl5086051065%_
                                           (cons _%lp-hd5085951062%_
                                                 _%rest5086151056%_))))
                                      (let ((_%rest5086251068%_
                                             (reverse _%rest5086151056%_)))
                                        (_%__kont9448794488%_
                                         _%rest5086251068%_
                                         _%hd5085251037%_
                                         _%hd5084951027%_
                                         _%hd5084351007%_))))))
                        (_%loop5085751049%_ _%target5085451043%_ '()))))
                   (_%__match9453794538%_
                    (lambda (_%e5081151115%_
                             _%hd5081251119%_
                             _%tl5081351122%_
                             _%e5081451125%_
                             _%hd5081551129%_
                             _%tl5081651132%_
                             _%e5081751135%_
                             _%hd5081851139%_
                             _%tl5081951142%_
                             _%e5082051145%_
                             _%hd5082151149%_
                             _%tl5082251152%_
                             _%e5082351155%_
                             _%hd5082451159%_
                             _%tl5082551162%_
                             _%__splice9448594486%_
                             _%target5082651165%_
                             _%tl5082851168%_)
                      (letrec ((_%loop5082951171%_
                                (lambda (_%hd5082751175%_ _%rest5083351178%_)
                                  (if (gx#stx-pair? _%hd5082751175%_)
                                      (let ((_%e5083051180%_
                                             (gx#syntax-e _%hd5082751175%_)))
                                        (let ((_%lp-tl5083251187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5083051180%_)))
                                              (_%lp-hd5083151184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5083051180%_))))
                                          (_%loop5082951171%_
                                           _%lp-tl5083251187%_
                                           (cons _%lp-hd5083151184%_
                                                 _%rest5083351178%_))))
                                      (let ((_%rest5083451190%_
                                             (reverse _%rest5083351178%_)))
                                        (_%__kont9448394484%_
                                         _%rest5083451190%_
                                         _%hd5082451159%_
                                         _%hd5082151149%_
                                         _%hd5081551129%_))))))
                        (_%loop5082951171%_ _%target5082651165%_ '())))))
              (if (gx#stx-pair? _%__stx9448094481%_)
                  (let ((_%e5081151115%_ (gx#syntax-e _%__stx9448094481%_)))
                    (let ((_%tl5081351122%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5081151115%_)))
                          (_%hd5081251119%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5081151115%_))))
                      (if (gx#stx-pair? _%tl5081351122%_)
                          (let ((_%e5081451125%_
                                 (gx#syntax-e _%tl5081351122%_)))
                            (let ((_%tl5081651132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5081451125%_)))
                                  (_%hd5081551129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5081451125%_))))
                              (if (gx#stx-pair? _%tl5081651132%_)
                                  (let ((_%e5081751135%_
                                         (gx#syntax-e _%tl5081651132%_)))
                                    (let ((_%tl5081951142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5081751135%_)))
                                          (_%hd5081851139%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5081751135%_))))
                                      (if (gx#identifier? _%hd5081851139%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g101319_|
                                               _%hd5081851139%_)
                                              (if (gx#stx-pair?
                                                   _%tl5081951142%_)
                                                  (let ((_%e5082051145%_
                                                         (gx#syntax-e
                                                          _%tl5081951142%_)))
                                                    (let ((_%tl5082251152%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5082051145%_)))
                                                          (_%hd5082151149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5082051145%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5082251152%_)
                                                          (let ((_%e5082351155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5082251152%_)))
                    (let ((_%tl5082551162%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5082351155%_)))
                          (_%hd5082451159%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5082351155%_))))
                      (if (gx#stx-pair/null? _%tl5082551162%_)
                          (let ((_%__splice9448594486%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5082551162%_
                                  '0)))
                            (let ((_%tl5082851168%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9448594486%_ '1)))
                                  (_%target5082651165%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9448594486%_
                                      '0))))
                              (if (gx#stx-null? _%tl5082851168%_)
                                  (_%__match9453794538%_
                                   _%e5081151115%_
                                   _%hd5081251119%_
                                   _%tl5081351122%_
                                   _%e5081451125%_
                                   _%hd5081551129%_
                                   _%tl5081651132%_
                                   _%e5081751135%_
                                   _%hd5081851139%_
                                   _%tl5081951142%_
                                   _%e5082051145%_
                                   _%hd5082151149%_
                                   _%tl5082251152%_
                                   _%e5082351155%_
                                   _%hd5082451159%_
                                   _%tl5082551162%_
                                   _%__splice9448594486%_
                                   _%target5082651165%_
                                   _%tl5082851168%_)
                                  (if (gx#stx-pair/null? _%tl5081951142%_)
                                      (let ((_%__splice9449394494%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5081951142%_
                                              '0)))
                                        (let ((_%tl5087750929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9449394494%_
                                                  '1)))
                                              (_%target5087550926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9449394494%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5087750929%_)
                                              (_%__match9460594606%_
                                               _%e5081151115%_
                                               _%hd5081251119%_
                                               _%tl5081351122%_
                                               _%e5081451125%_
                                               _%hd5081551129%_
                                               _%tl5081651132%_
                                               _%e5081751135%_
                                               _%hd5081851139%_
                                               _%tl5081951142%_
                                               _%__splice9449394494%_
                                               _%target5087550926%_
                                               _%tl5087750929%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5080550889%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5080550889%_))))))
                          (if (gx#stx-pair/null? _%tl5081951142%_)
                              (let ((_%__splice9449394494%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5081951142%_
                                      '0)))
                                (let ((_%tl5087750929%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9449394494%_
                                          '1)))
                                      (_%target5087550926%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9449394494%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5087750929%_)
                                      (_%__match9460594606%_
                                       _%e5081151115%_
                                       _%hd5081251119%_
                                       _%tl5081351122%_
                                       _%e5081451125%_
                                       _%hd5081551129%_
                                       _%tl5081651132%_
                                       _%e5081751135%_
                                       _%hd5081851139%_
                                       _%tl5081951142%_
                                       _%__splice9449394494%_
                                       _%target5087550926%_
                                       _%tl5087750929%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5080550889%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5080550889%_))))))
                  (if (gx#stx-pair/null? _%tl5081951142%_)
                      (let ((_%__splice9449394494%_
                             (gx#syntax-split-splice->vector
                              _%tl5081951142%_
                              '0)))
                        (let ((_%tl5087750929%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9449394494%_ '1)))
                              (_%target5087550926%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9449394494%_ '0))))
                          (if (gx#stx-null? _%tl5087750929%_)
                              (_%__match9460594606%_
                               _%e5081151115%_
                               _%hd5081251119%_
                               _%tl5081351122%_
                               _%e5081451125%_
                               _%hd5081551129%_
                               _%tl5081651132%_
                               _%e5081751135%_
                               _%hd5081851139%_
                               _%tl5081951142%_
                               _%__splice9449394494%_
                               _%target5087550926%_
                               _%tl5087750929%_)
                              (let ()
                                (declare (not safe))
                                (_%g5080550889%_)))))
                      (let () (declare (not safe)) (_%g5080550889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5081951142%_)
                                                      (let ((_%__splice9449394494%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5081951142%_
                                                              '0)))
                                                        (let ((_%tl5087750929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9449394494%_ '1)))
                      (_%target5087550926%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9449394494%_ '0))))
                  (if (gx#stx-null? _%tl5087750929%_)
                      (_%__match9460594606%_
                       _%e5081151115%_
                       _%hd5081251119%_
                       _%tl5081351122%_
                       _%e5081451125%_
                       _%hd5081551129%_
                       _%tl5081651132%_
                       _%e5081751135%_
                       _%hd5081851139%_
                       _%tl5081951142%_
                       _%__splice9449394494%_
                       _%target5087550926%_
                       _%tl5087750929%_)
                      (let () (declare (not safe)) (_%g5080550889%_)))))
              (let () (declare (not safe)) (_%g5080550889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g101320_|
                                                   _%hd5081851139%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5081951142%_)
                                                      (let ((_%e5084851023%_
                                                             (gx#syntax-e
                                                              _%tl5081951142%_)))
                                                        (let ((_%tl5085051030%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5084851023%_)))
                      (_%hd5084951027%_
                       (let () (declare (not safe)) (##car _%e5084851023%_))))
                  (if (gx#stx-pair? _%tl5085051030%_)
                      (let ((_%e5085151033%_ (gx#syntax-e _%tl5085051030%_)))
                        (let ((_%tl5085351040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5085151033%_)))
                              (_%hd5085251037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5085151033%_))))
                          (if (gx#stx-pair/null? _%tl5085351040%_)
                              (let ((_%__splice9448994490%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5085351040%_
                                      '0)))
                                (let ((_%tl5085651046%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9448994490%_
                                          '1)))
                                      (_%target5085451043%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9448994490%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5085651046%_)
                                      (_%__match9457994580%_
                                       _%e5081151115%_
                                       _%hd5081251119%_
                                       _%tl5081351122%_
                                       _%e5081451125%_
                                       _%hd5081551129%_
                                       _%tl5081651132%_
                                       _%e5081751135%_
                                       _%hd5081851139%_
                                       _%tl5081951142%_
                                       _%e5084851023%_
                                       _%hd5084951027%_
                                       _%tl5085051030%_
                                       _%e5085151033%_
                                       _%hd5085251037%_
                                       _%tl5085351040%_
                                       _%__splice9448994490%_
                                       _%target5085451043%_
                                       _%tl5085651046%_)
                                      (if (gx#stx-pair/null? _%tl5081951142%_)
                                          (let ((_%__splice9449394494%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5081951142%_
                                                  '0)))
                                            (let ((_%tl5087750929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9449394494%_
                                                      '1)))
                                                  (_%target5087550926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9449394494%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5087750929%_)
                                                  (_%__match9460594606%_
                                                   _%e5081151115%_
                                                   _%hd5081251119%_
                                                   _%tl5081351122%_
                                                   _%e5081451125%_
                                                   _%hd5081551129%_
                                                   _%tl5081651132%_
                                                   _%e5081751135%_
                                                   _%hd5081851139%_
                                                   _%tl5081951142%_
                                                   _%__splice9449394494%_
                                                   _%target5087550926%_
                                                   _%tl5087750929%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5080550889%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5080550889%_))))))
                              (if (gx#stx-pair/null? _%tl5081951142%_)
                                  (let ((_%__splice9449394494%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5081951142%_
                                          '0)))
                                    (let ((_%tl5087750929%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9449394494%_
                                              '1)))
                                          (_%target5087550926%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9449394494%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5087750929%_)
                                          (_%__match9460594606%_
                                           _%e5081151115%_
                                           _%hd5081251119%_
                                           _%tl5081351122%_
                                           _%e5081451125%_
                                           _%hd5081551129%_
                                           _%tl5081651132%_
                                           _%e5081751135%_
                                           _%hd5081851139%_
                                           _%tl5081951142%_
                                           _%__splice9449394494%_
                                           _%target5087550926%_
                                           _%tl5087750929%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5080550889%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5080550889%_))))))
                      (if (gx#stx-pair/null? _%tl5081951142%_)
                          (let ((_%__splice9449394494%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5081951142%_
                                  '0)))
                            (let ((_%tl5087750929%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9449394494%_ '1)))
                                  (_%target5087550926%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9449394494%_
                                      '0))))
                              (if (gx#stx-null? _%tl5087750929%_)
                                  (_%__match9460594606%_
                                   _%e5081151115%_
                                   _%hd5081251119%_
                                   _%tl5081351122%_
                                   _%e5081451125%_
                                   _%hd5081551129%_
                                   _%tl5081651132%_
                                   _%e5081751135%_
                                   _%hd5081851139%_
                                   _%tl5081951142%_
                                   _%__splice9449394494%_
                                   _%target5087550926%_
                                   _%tl5087750929%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5080550889%_)))))
                          (let () (declare (not safe)) (_%g5080550889%_))))))
              (if (gx#stx-pair/null? _%tl5081951142%_)
                  (let ((_%__splice9449394494%_
                         (gx#syntax-split-splice->vector _%tl5081951142%_ '0)))
                    (let ((_%tl5087750929%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9449394494%_ '1)))
                          (_%target5087550926%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9449394494%_ '0))))
                      (if (gx#stx-null? _%tl5087750929%_)
                          (_%__match9460594606%_
                           _%e5081151115%_
                           _%hd5081251119%_
                           _%tl5081351122%_
                           _%e5081451125%_
                           _%hd5081551129%_
                           _%tl5081651132%_
                           _%e5081751135%_
                           _%hd5081851139%_
                           _%tl5081951142%_
                           _%__splice9449394494%_
                           _%target5087550926%_
                           _%tl5087750929%_)
                          (let () (declare (not safe)) (_%g5080550889%_)))))
                  (let () (declare (not safe)) (_%g5080550889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5081951142%_)
                                                      (let ((_%__splice9449394494%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5081951142%_
                                                              '0)))
                                                        (let ((_%tl5087750929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9449394494%_ '1)))
                      (_%target5087550926%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9449394494%_ '0))))
                  (if (gx#stx-null? _%tl5087750929%_)
                      (_%__match9460594606%_
                       _%e5081151115%_
                       _%hd5081251119%_
                       _%tl5081351122%_
                       _%e5081451125%_
                       _%hd5081551129%_
                       _%tl5081651132%_
                       _%e5081751135%_
                       _%hd5081851139%_
                       _%tl5081951142%_
                       _%__splice9449394494%_
                       _%target5087550926%_
                       _%tl5087750929%_)
                      (let () (declare (not safe)) (_%g5080550889%_)))))
              (let () (declare (not safe)) (_%g5080550889%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5081951142%_)
                                              (let ((_%__splice9449394494%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5081951142%_
                                                      '0)))
                                                (let ((_%tl5087750929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9449394494%_
                                                          '1)))
                                                      (_%target5087550926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9449394494%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5087750929%_)
                                                      (_%__match9460594606%_
                                                       _%e5081151115%_
                                                       _%hd5081251119%_
                                                       _%tl5081351122%_
                                                       _%e5081451125%_
                                                       _%hd5081551129%_
                                                       _%tl5081651132%_
                                                       _%e5081751135%_
                                                       _%hd5081851139%_
                                                       _%tl5081951142%_
                                                       _%__splice9449394494%_
                                                       _%target5087550926%_
                                                       _%tl5087750929%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5080550889%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5080550889%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5080550889%_)))))
                          (let () (declare (not safe)) (_%g5080550889%_)))))
                  (let () (declare (not safe)) (_%g5080550889%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx51237%_)
        (let* ((_%__stx9460894609%_ _%$stx51237%_)
               (_%g5124251278%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9460894609%_))))
          (let ((_%__kont9461194612%_
                 (lambda (_%g5124451396%_ _%g5124551398%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5124551398%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5124451396%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'contract-violation!)
                           (cons _%g5124551398%_
                                 (cons _%g5124451396%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9461394614%_
                 (lambda (_%g5125551335%_ _%g5125651337%_ _%g5125751338%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5125751338%_
                                           (cons _%g5125651337%_ '())))
                               (cons _%g5125551335%_ '()))))))
            (if (gx#stx-pair? _%__stx9460894609%_)
                (let ((_%e5124651366%_ (gx#syntax-e _%__stx9460894609%_)))
                  (let ((_%tl5124851373%_
                         (let () (declare (not safe)) (##cdr _%e5124651366%_)))
                        (_%hd5124751370%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5124651366%_))))
                    (if (gx#stx-pair? _%tl5124851373%_)
                        (let ((_%e5124951376%_ (gx#syntax-e _%tl5124851373%_)))
                          (let ((_%tl5125151383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5124951376%_)))
                                (_%hd5125051380%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5124951376%_))))
                            (if (gx#stx-pair? _%tl5125151383%_)
                                (let ((_%e5125251386%_
                                       (gx#syntax-e _%tl5125151383%_)))
                                  (let ((_%tl5125451393%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5125251386%_)))
                                        (_%hd5125351390%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5125251386%_))))
                                    (if (gx#stx-null? _%tl5125451393%_)
                                        (_%__kont9461194612%_
                                         _%hd5125351390%_
                                         _%hd5125051380%_)
                                        (if (gx#stx-pair? _%tl5125451393%_)
                                            (let ((_%e5126751315%_
                                                   (gx#syntax-e
                                                    _%tl5125451393%_)))
                                              (let ((_%tl5126951322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5126751315%_)))
                                                    (_%hd5126851319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5126751315%_))))
                                                (if (gx#identifier?
                                                     _%hd5126851319%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g101321_|
                                                         _%hd5126851319%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5126951322%_)
                                                            (let ((_%e5127051325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5126951322%_)))
                      (let ((_%tl5127251332%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5127051325%_)))
                            (_%hd5127151329%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5127051325%_))))
                        (if (gx#stx-null? _%tl5127251332%_)
                            (_%__kont9461394614%_
                             _%hd5127151329%_
                             _%hd5125351390%_
                             _%hd5125051380%_)
                            (let () (declare (not safe)) (_%g5124251278%_)))))
                    (let () (declare (not safe)) (_%g5124251278%_)))
                (let () (declare (not safe)) (_%g5124251278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5124251278%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5124251278%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5124251278%_)))))
                        (let () (declare (not safe)) (_%g5124251278%_)))))
                (let () (declare (not safe)) (_%g5124251278%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx51417%_)
        (let ((_%g5142051427%_
               (lambda (_%g5142151423%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5142151423%_))))
          (_%g5142051427%_ _%$stx51417%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx51431%_)
        (let ((_%g5143451441%_
               (lambda (_%g5143551437%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5143551437%_))))
          (_%g5143451441%_ _%$stx51431%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx51445%_)
        (let* ((_%g5144951463%_
                (lambda (_%g5145051459%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5145051459%_)))
               (_%g5144851504%_
                (lambda (_%g5145051467%_)
                  (if (gx#stx-pair? _%g5145051467%_)
                      (let ((_%e5145251470%_ (gx#syntax-e _%g5145051467%_)))
                        (let ((_%hd5145351474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5145251470%_)))
                              (_%tl5145451477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5145251470%_))))
                          (if (gx#stx-pair? _%tl5145451477%_)
                              (let ((_%e5145551480%_
                                     (gx#syntax-e _%tl5145451477%_)))
                                (let ((_%hd5145651484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5145551480%_)))
                                      (_%tl5145751487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5145551480%_))))
                                  (if (gx#stx-null? _%tl5145751487%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%hd5145651484%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%hd5145651484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g5144951463%_ _%g5145051467%_))))
                              (_%g5144951463%_ _%g5145051467%_))))
                      (_%g5144951463%_ _%g5145051467%_)))))
          (_%g5144851504%_ _%$stx51445%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx51508%_)
        (let* ((_%g5151151534%_
                (lambda (_%g5151251530%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5151251530%_)))
               (_%g5151051658%_
                (lambda (_%g5151251538%_)
                  (if (gx#stx-pair? _%g5151251538%_)
                      (let ((_%e5151751541%_ (gx#syntax-e _%g5151251538%_)))
                        (let ((_%hd5151851545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5151751541%_)))
                              (_%tl5151951548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5151751541%_))))
                          (if (gx#stx-pair? _%tl5151951548%_)
                              (let ((_%e5152051551%_
                                     (gx#syntax-e _%tl5151951548%_)))
                                (let ((_%hd5152151555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5152051551%_)))
                                      (_%tl5152251558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5152051551%_))))
                                  (if (gx#stx-pair? _%tl5152251558%_)
                                      (let ((_%e5152351561%_
                                             (gx#syntax-e _%tl5152251558%_)))
                                        (let ((_%hd5152451565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5152351561%_)))
                                              (_%tl5152551568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5152351561%_))))
                                          (if (gx#stx-pair? _%tl5152551568%_)
                                              (let ((_%e5152651571%_
                                                     (gx#syntax-e
                                                      _%tl5152551568%_)))
                                                (let ((_%hd5152751575%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5152651571%_)))
                                                      (_%tl5152851578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5152651571%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5152851578%_)
                                                      (let* ((_%g5160551613%_
                                                              (lambda (_%g5160651609%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5160651609%_)))
                     (_%g5160451632%_
                      (lambda (_%g5160651617%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%g5160651617%_
                                                (cons _%hd5152451565%_
                                                      (cons _%hd5152751575%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5160651617%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%hd5152451565%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%hd5152751575%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%g5160451632%_
                 (let ((_%$e51644%_
                        (let ((_%$e51636%_ (gx#stx-source _%hd5152151555%_)))
                          (if _%$e51636%_
                              _%$e51636%_
                              (let ((_%$e51640%_ (gx#stx-source _%stx51508%_)))
                                (if _%$e51640%_
                                    _%$e51640%_
                                    (gx#stx-source _%hd5151851545%_)))))))
                   (if _%$e51644%_
                       (call-with-output-string
                        '""
                        (lambda (_%g5165051652%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e51644%_
                             '#t
                             _%g5165051652%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%g5151151534%_ _%g5151251538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5151151534%_
                                               _%g5151251538%_))))
                                      (_%g5151151534%_ _%g5151251538%_))))
                              (_%g5151151534%_ _%g5151251538%_))))
                      (_%g5151151534%_ _%g5151251538%_)))))
          (_%g5151051658%_ _%stx51508%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx51662%_)
        (let* ((_%g5166551688%_
                (lambda (_%g5166651684%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5166651684%_)))
               (_%g5166451812%_
                (lambda (_%g5166651692%_)
                  (if (gx#stx-pair? _%g5166651692%_)
                      (let ((_%e5167151695%_ (gx#syntax-e _%g5166651692%_)))
                        (let ((_%hd5167251699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5167151695%_)))
                              (_%tl5167351702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5167151695%_))))
                          (if (gx#stx-pair? _%tl5167351702%_)
                              (let ((_%e5167451705%_
                                     (gx#syntax-e _%tl5167351702%_)))
                                (let ((_%hd5167551709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5167451705%_)))
                                      (_%tl5167651712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5167451705%_))))
                                  (if (gx#stx-pair? _%tl5167651712%_)
                                      (let ((_%e5167751715%_
                                             (gx#syntax-e _%tl5167651712%_)))
                                        (let ((_%hd5167851719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5167751715%_)))
                                              (_%tl5167951722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5167751715%_))))
                                          (if (gx#stx-pair? _%tl5167951722%_)
                                              (let ((_%e5168051725%_
                                                     (gx#syntax-e
                                                      _%tl5167951722%_)))
                                                (let ((_%hd5168151729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5168051725%_)))
                                                      (_%tl5168251732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5168051725%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5168251732%_)
                                                      (let* ((_%g5175951767%_
                                                              (lambda (_%g5176051763%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5176051763%_)))
                     (_%g5175851786%_
                      (lambda (_%g5176051771%_)
                        (cons (gx#datum->syntax '#f 'abort!)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'raise-contract-violation-error)
                                          (cons '"contract violation"
                                                (cons 'context:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%g5176051771%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%hd5167851719%_ '()))
                                (cons 'value:
                                      (cons _%hd5168151729%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%g5175851786%_
                 (let ((_%$e51798%_
                        (let ((_%$e51790%_ (gx#stx-source _%hd5167551709%_)))
                          (if _%$e51790%_
                              _%$e51790%_
                              (let ((_%$e51794%_ (gx#stx-source _%stx51662%_)))
                                (if _%$e51794%_
                                    _%$e51794%_
                                    (gx#stx-source _%hd5167251699%_)))))))
                   (if _%$e51798%_
                       (call-with-output-string
                        '""
                        (lambda (_%g5180451806%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e51798%_
                             '#t
                             _%g5180451806%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%g5166551688%_ _%g5166651692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5166551688%_
                                               _%g5166651692%_))))
                                      (_%g5166551688%_ _%g5166651692%_))))
                              (_%g5166551688%_ _%g5166651692%_))))
                      (_%g5166551688%_ _%g5166651692%_)))))
          (_%g5166451812%_ _%stx51662%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51816%_)
        (let* ((_%g5181951834%_
                (lambda (_%g5182051830%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5182051830%_)))
               (_%g5181851930%_
                (lambda (_%g5182051838%_)
                  (if (gx#stx-pair? _%g5182051838%_)
                      (let ((_%e5182351841%_ (gx#syntax-e _%g5182051838%_)))
                        (let ((_%hd5182451845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5182351841%_)))
                              (_%tl5182551848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5182351841%_))))
                          (if (gx#stx-pair? _%tl5182551848%_)
                              (let ((_%e5182651851%_
                                     (gx#syntax-e _%tl5182551848%_)))
                                (let ((_%hd5182751855%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5182651851%_)))
                                      (_%tl5182851858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5182651851%_))))
                                  (if (gx#stx-null? _%tl5182851858%_)
                                      (let* ((_%g5187751885%_
                                              (lambda (_%g5187851881%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5187851881%_)))
                                             (_%g5187651904%_
                                              (lambda (_%g5187851889%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'abort!)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'raise-contract-violation-error)
                          (cons '"nil (#f) derefence"
                                (cons 'context:
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g5187851889%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%hd5182751855%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%g5187651904%_
                                         (let ((_%$e51916%_
                                                (let ((_%$e51908%_
                                                       (gx#stx-source
                                                        _%hd5182751855%_)))
                                                  (if _%$e51908%_
                                                      _%$e51908%_
                                                      (let ((_%$e51912%_
                                                             (gx#stx-source
                                                              _%stx51816%_)))
                                                        (if _%$e51912%_
                                                            _%$e51912%_
                                                            (gx#stx-source
                                                             _%hd5182451845%_)))))))
                                           (if _%$e51916%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%g5192251924%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e51916%_
                                                     '#t
                                                     _%g5192251924%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%g5181951834%_ _%g5182051838%_))))
                              (_%g5181951834%_ _%g5182051838%_))))
                      (_%g5181951834%_ _%g5182051838%_)))))
          (_%g5181851930%_ _%stx51816%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51934%_)
        (let* ((_%g5193851952%_
                (lambda (_%g5193951948%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5193951948%_)))
               (_%g5193751993%_
                (lambda (_%g5193951956%_)
                  (if (gx#stx-pair? _%g5193951956%_)
                      (let ((_%e5194151959%_ (gx#syntax-e _%g5193951956%_)))
                        (let ((_%hd5194251963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5194151959%_)))
                              (_%tl5194351966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5194151959%_))))
                          (if (gx#stx-pair? _%tl5194351966%_)
                              (let ((_%e5194451969%_
                                     (gx#syntax-e _%tl5194351966%_)))
                                (let ((_%hd5194551973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5194451969%_)))
                                      (_%tl5194651976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5194451969%_))))
                                  (if (gx#stx-null? _%tl5194651976%_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@abort)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons _%hd5194551973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g5193851952%_ _%g5193951956%_))))
                              (_%g5193851952%_ _%g5193951956%_))))
                      (_%g5193851952%_ _%g5193951956%_)))))
          (_%g5193751993%_ _%$stx51934%_))))))
