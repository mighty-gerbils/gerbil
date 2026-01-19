(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g92258_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92259_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92260_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx48731%_)
        (let* ((_%g4873448752%_
                (lambda (_%g4873548748%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4873548748%_)))
               (_%g4873348947%_
                (lambda (_%g4873548756%_)
                  (if (gx#stx-pair? _%g4873548756%_)
                      (let ((_%e4873848759%_ (gx#syntax-e _%g4873548756%_)))
                        (let ((_%hd4873948763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4873848759%_)))
                              (_%tl4874048766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4873848759%_))))
                          (if (gx#stx-pair? _%tl4874048766%_)
                              (let ((_%e4874148769%_
                                     (gx#syntax-e _%tl4874048766%_)))
                                (let ((_%hd4874248773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4874148769%_)))
                                      (_%tl4874348776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4874148769%_))))
                                  (if (gx#stx-pair? _%tl4874348776%_)
                                      (let ((_%e4874448779%_
                                             (gx#syntax-e _%tl4874348776%_)))
                                        (let ((_%hd4874548783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4874448779%_)))
                                              (_%tl4874648786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4874448779%_))))
                                          (if (gx#stx-null? _%tl4874648786%_)
                                              ((lambda (_%L48789%_ _%L48791%_)
                                                 (if (gx#identifier?
                                                      _%L48789%_)
                                                     (let ((_%meta48808%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48731%_
                                                               _%L48789%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48808%_))
                                                           (let* ((_%g4881348828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4881448824%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4881448824%_)))
                          (_%g4881248875%_
                           (lambda (_%g4881448832%_)
                             (if (gx#stx-pair? _%g4881448832%_)
                                 (let ((_%e4881748835%_
                                        (gx#syntax-e _%g4881448832%_)))
                                   (let ((_%hd4881848839%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4881748835%_)))
                                         (_%tl4881948842%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4881748835%_))))
                                     (if (gx#stx-pair? _%tl4881948842%_)
                                         (let ((_%e4882048845%_
                                                (gx#syntax-e
                                                 _%tl4881948842%_)))
                                           (let ((_%hd4882148849%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4882048845%_)))
                                                 (_%tl4882248852%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4882048845%_))))
                                             (if (gx#stx-null?
                                                  _%tl4882248852%_)
                                                 ((lambda (_%L48855%_
                                                           _%L48857%_)
                                                    (if (let ((__tmp92256
                                                               (let ((__obj92094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48808%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92094
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92094
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92094 'id)))))
                  (declare (not safe))
                  (##memq __tmp92256 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48857%_ '()))
                            (cons _%L48791%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48857%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48791%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L48855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L48857%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4882148849%_
                                                  _%hd4881848839%_)
                                                 (_%g4881348828%_
                                                  _%g4881448832%_))))
                                         (_%g4881348828%_ _%g4881448832%_))))
                                 (_%g4881348828%_ _%g4881448832%_)))))
                     (_%g4881248875%_
                      (list (let ((__obj92095 _%meta48808%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92095
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92095
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92095
                                   'type-descriptor)))
                            (let ((__obj92096 _%meta48808%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92096
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92096
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92096
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48808%_))
                       (let* ((_%g4888148896%_
                               (lambda (_%g4888248892%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4888248892%_)))
                              (_%g4888048941%_
                               (lambda (_%g4888248900%_)
                                 (if (gx#stx-pair? _%g4888248900%_)
                                     (let ((_%e4888548903%_
                                            (gx#syntax-e _%g4888248900%_)))
                                       (let ((_%hd4888648907%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4888548903%_)))
                                             (_%tl4888748910%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4888548903%_))))
                                         (if (gx#stx-pair? _%tl4888748910%_)
                                             (let ((_%e4888848913%_
                                                    (gx#syntax-e
                                                     _%tl4888748910%_)))
                                               (let ((_%hd4888948917%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4888848913%_)))
                                                     (_%tl4889048920%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4888848913%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4889048920%_)
                                                     ((lambda (_%L48923%_
                                                               _%L48925%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L48925%_ '()))
                            (cons (cons _%L48923%_ (cons _%L48791%_ '()))
                                  '()))))
              _%hd4888948917%_
              _%hd4888648907%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4888148896%_
                                                      _%g4888248900%_))))
                                             (_%g4888148896%_
                                              _%g4888248900%_))))
                                     (_%g4888148896%_ _%g4888248900%_)))))
                         (_%g4888048941%_
                          (list (let ((__obj92093 _%meta48808%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92093
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92093
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92093
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48731%_
                                   _%L48789%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48731%_
                        _%L48789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4873448752%_
                                                      _%g4873548756%_)))
                                               _%hd4874548783%_
                                               _%hd4874248773%_)
                                              (_%g4873448752%_
                                               _%g4873548756%_))))
                                      (_%g4873448752%_ _%g4873548756%_))))
                              (_%g4873448752%_ _%g4873548756%_))))
                      (_%g4873448752%_ _%g4873548756%_)))))
          (_%g4873348947%_ _%stx48731%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx48951%_)
        (let* ((_%g4895448972%_
                (lambda (_%g4895548968%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4895548968%_)))
               (_%g4895349166%_
                (lambda (_%g4895548976%_)
                  (if (gx#stx-pair? _%g4895548976%_)
                      (let ((_%e4895848979%_ (gx#syntax-e _%g4895548976%_)))
                        (let ((_%hd4895948983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4895848979%_)))
                              (_%tl4896048986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4895848979%_))))
                          (if (gx#stx-pair? _%tl4896048986%_)
                              (let ((_%e4896148989%_
                                     (gx#syntax-e _%tl4896048986%_)))
                                (let ((_%hd4896248993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4896148989%_)))
                                      (_%tl4896348996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4896148989%_))))
                                  (if (gx#stx-pair? _%tl4896348996%_)
                                      (let ((_%e4896448999%_
                                             (gx#syntax-e _%tl4896348996%_)))
                                        (let ((_%hd4896549003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4896448999%_)))
                                              (_%tl4896649006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4896448999%_))))
                                          (if (gx#stx-null? _%tl4896649006%_)
                                              ((lambda (_%L49009%_ _%L49011%_)
                                                 (if (gx#identifier?
                                                      _%L49009%_)
                                                     (let ((_%meta49027%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48951%_
                                                               _%L49009%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49027%_))
                                                           (let* ((_%g4903249047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4903349043%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4903349043%_)))
                          (_%g4903149094%_
                           (lambda (_%g4903349051%_)
                             (if (gx#stx-pair? _%g4903349051%_)
                                 (let ((_%e4903649054%_
                                        (gx#syntax-e _%g4903349051%_)))
                                   (let ((_%hd4903749058%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4903649054%_)))
                                         (_%tl4903849061%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4903649054%_))))
                                     (if (gx#stx-pair? _%tl4903849061%_)
                                         (let ((_%e4903949064%_
                                                (gx#syntax-e
                                                 _%tl4903849061%_)))
                                           (let ((_%hd4904049068%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4903949064%_)))
                                                 (_%tl4904149071%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4903949064%_))))
                                             (if (gx#stx-null?
                                                  _%tl4904149071%_)
                                                 ((lambda (_%L49074%_
                                                           _%L49076%_)
                                                    (if (let ((__tmp92257
                                                               (let ((__obj92098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49027%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92098
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92098
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92098 'id)))))
                  (declare (not safe))
                  (##memq __tmp92257 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L49076%_ '()))
                            (cons _%L49011%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L49076%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L49011%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'or)
                              (cons (cons (gx#datum->syntax '#f 'not)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons _%L49074%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons '"bad cast"
                                                (cons _%L49011%_
                                                      (cons _%L49074%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4904049068%_
                                                  _%hd4903749058%_)
                                                 (_%g4903249047%_
                                                  _%g4903349051%_))))
                                         (_%g4903249047%_ _%g4903349051%_))))
                                 (_%g4903249047%_ _%g4903349051%_)))))
                     (_%g4903149094%_
                      (list (let ((__obj92099 _%meta49027%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92099
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92099
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92099
                                   'type-descriptor)))
                            (let ((__obj92100 _%meta49027%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92100
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92100
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92100
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49027%_))
                       (let* ((_%g4910049115%_
                               (lambda (_%g4910149111%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4910149111%_)))
                              (_%g4909949160%_
                               (lambda (_%g4910149119%_)
                                 (if (gx#stx-pair? _%g4910149119%_)
                                     (let ((_%e4910449122%_
                                            (gx#syntax-e _%g4910149119%_)))
                                       (let ((_%hd4910549126%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4910449122%_)))
                                             (_%tl4910649129%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4910449122%_))))
                                         (if (gx#stx-pair? _%tl4910649129%_)
                                             (let ((_%e4910749132%_
                                                    (gx#syntax-e
                                                     _%tl4910649129%_)))
                                               (let ((_%hd4910849136%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4910749132%_)))
                                                     (_%tl4910949139%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4910749132%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4910949139%_)
                                                     ((lambda (_%L49142%_
                                                               _%L49144%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L49144%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L49011%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L49142%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4910849136%_
              _%hd4910549126%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4910049115%_
                                                      _%g4910149119%_))))
                                             (_%g4910049115%_
                                              _%g4910149119%_))))
                                     (_%g4910049115%_ _%g4910149119%_)))))
                         (_%g4909949160%_
                          (list (let ((__obj92097 _%meta49027%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92097
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92097
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92097
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48951%_
                                   _%L49009%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48951%_
                        _%L49009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4895448972%_
                                                      _%g4895548976%_)))
                                               _%hd4896549003%_
                                               _%hd4896248993%_)
                                              (_%g4895448972%_
                                               _%g4895548976%_))))
                                      (_%g4895448972%_ _%g4895548976%_))))
                              (_%g4895448972%_ _%g4895548976%_))))
                      (_%g4895448972%_ _%g4895548976%_)))))
          (_%g4895349166%_ _%stx48951%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx49170%_)
        (let* ((_%g4917349191%_
                (lambda (_%g4917449187%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4917449187%_)))
               (_%g4917249277%_
                (lambda (_%g4917449195%_)
                  (if (gx#stx-pair? _%g4917449195%_)
                      (let ((_%e4917749198%_ (gx#syntax-e _%g4917449195%_)))
                        (let ((_%hd4917849202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4917749198%_)))
                              (_%tl4917949205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4917749198%_))))
                          (if (gx#stx-pair? _%tl4917949205%_)
                              (let ((_%e4918049208%_
                                     (gx#syntax-e _%tl4917949205%_)))
                                (let ((_%hd4918149212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4918049208%_)))
                                      (_%tl4918249215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4918049208%_))))
                                  (if (gx#stx-pair? _%tl4918249215%_)
                                      (let ((_%e4918349218%_
                                             (gx#syntax-e _%tl4918249215%_)))
                                        (let ((_%hd4918449222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4918349218%_)))
                                              (_%tl4918549225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4918349218%_))))
                                          (if (gx#stx-null? _%tl4918549225%_)
                                              ((lambda (_%L49228%_ _%L49230%_)
                                                 (if (gx#identifier?
                                                      _%L49228%_)
                                                     (let* ((_%g4924649254%_
                                                             (lambda (_%g4924749250%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4924749250%_)))
                                                            (_%g4924549273%_
                                                             (lambda (_%g4924749258%_)
                                                               ((lambda (_%L49261%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L49261%_ '()))
                                      (cons _%L49230%_ '()))))
                        _%g4924749258%_))))
               (_%g4924549273%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx49170%_
                   _%L49228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4917349191%_
                                                      _%g4917449195%_)))
                                               _%hd4918449222%_
                                               _%hd4918149212%_)
                                              (_%g4917349191%_
                                               _%g4917449195%_))))
                                      (_%g4917349191%_ _%g4917449195%_))))
                              (_%g4917349191%_ _%g4917449195%_))))
                      (_%g4917349191%_ _%g4917449195%_)))))
          (_%g4917249277%_ _%stx49170%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx49281%_)
        (let* ((_%__stx8618986190%_ _%$stx49281%_)
               (_%g4928749371%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8618986190%_))))
          (let ((_%__kont8619286193%_
                 (lambda (_%L49681%_ _%L49683%_ _%L49684%_ _%L49685%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%L49685%_
                                           (cons _%L49683%_
                                                 (foldr (lambda (_%g4970949712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4971049715%_)
                  (cons _%g4970949712%_ _%g4971049715%_))
                '()
                _%L49681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L49684%_ '())))))
                (_%__kont8619686197%_
                 (lambda (_%L49557%_ _%L49559%_ _%L49560%_ _%L49561%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%L49561%_
                                           (cons _%L49559%_
                                                 (foldr (lambda (_%g4958549588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4958649591%_)
                  (cons _%g4958549588%_ _%g4958649591%_))
                '()
                _%L49557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L49560%_ '())))))
                (_%__kont8620086201%_
                 (lambda (_%L49438%_ _%L49440%_ _%L49441%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%L49441%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%L49440%_
                                                       (foldr (lambda (_%g4946149464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4946249467%_)
                        (cons _%g4946149464%_ _%g4946249467%_))
                      '()
                      _%L49438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8631486315%_
                    (lambda (_%e4934849378%_
                             _%hd4934949382%_
                             _%tl4935049385%_
                             _%e4935149388%_
                             _%hd4935249392%_
                             _%tl4935349395%_
                             _%e4935449398%_
                             _%hd4935549402%_
                             _%tl4935649405%_
                             _%__splice8620286203%_
                             _%target4935749408%_
                             _%tl4935949411%_)
                      (letrec ((_%loop4936049414%_
                                (lambda (_%hd4935849418%_ _%rest4936449421%_)
                                  (if (gx#stx-pair? _%hd4935849418%_)
                                      (let ((_%e4936149424%_
                                             (gx#syntax-e _%hd4935849418%_)))
                                        (let ((_%lp-tl4936349431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4936149424%_)))
                                              (_%lp-hd4936249428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4936149424%_))))
                                          (_%loop4936049414%_
                                           _%lp-tl4936349431%_
                                           (cons _%lp-hd4936249428%_
                                                 _%rest4936449421%_))))
                                      (let ((_%rest4936549434%_
                                             (reverse _%rest4936449421%_)))
                                        (_%__kont8620086201%_
                                         _%rest4936549434%_
                                         _%hd4935549402%_
                                         _%hd4935249392%_))))))
                        (_%loop4936049414%_ _%target4935749408%_ '()))))
                   (_%__match8628886289%_
                    (lambda (_%e4932149477%_
                             _%hd4932249481%_
                             _%tl4932349484%_
                             _%e4932449487%_
                             _%hd4932549491%_
                             _%tl4932649494%_
                             _%e4932749497%_
                             _%hd4932849501%_
                             _%tl4932949504%_
                             _%e4933049507%_
                             _%hd4933149511%_
                             _%tl4933249514%_
                             _%e4933349517%_
                             _%hd4933449521%_
                             _%tl4933549524%_
                             _%__splice8619886199%_
                             _%target4933649527%_
                             _%tl4933849530%_)
                      (letrec ((_%loop4933949533%_
                                (lambda (_%hd4933749537%_ _%rest4934349540%_)
                                  (if (gx#stx-pair? _%hd4933749537%_)
                                      (let ((_%e4934049543%_
                                             (gx#syntax-e _%hd4933749537%_)))
                                        (let ((_%lp-tl4934249550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4934049543%_)))
                                              (_%lp-hd4934149547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4934049543%_))))
                                          (_%loop4933949533%_
                                           _%lp-tl4934249550%_
                                           (cons _%lp-hd4934149547%_
                                                 _%rest4934349540%_))))
                                      (let ((_%rest4934449553%_
                                             (reverse _%rest4934349540%_)))
                                        (_%__kont8619686197%_
                                         _%rest4934449553%_
                                         _%hd4933449521%_
                                         _%hd4933149511%_
                                         _%hd4932549491%_))))))
                        (_%loop4933949533%_ _%target4933649527%_ '()))))
                   (_%__match8624686247%_
                    (lambda (_%e4929349601%_
                             _%hd4929449605%_
                             _%tl4929549608%_
                             _%e4929649611%_
                             _%hd4929749615%_
                             _%tl4929849618%_
                             _%e4929949621%_
                             _%hd4930049625%_
                             _%tl4930149628%_
                             _%e4930249631%_
                             _%hd4930349635%_
                             _%tl4930449638%_
                             _%e4930549641%_
                             _%hd4930649645%_
                             _%tl4930749648%_
                             _%__splice8619486195%_
                             _%target4930849651%_
                             _%tl4931049654%_)
                      (letrec ((_%loop4931149657%_
                                (lambda (_%hd4930949661%_ _%rest4931549664%_)
                                  (if (gx#stx-pair? _%hd4930949661%_)
                                      (let ((_%e4931249667%_
                                             (gx#syntax-e _%hd4930949661%_)))
                                        (let ((_%lp-tl4931449674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4931249667%_)))
                                              (_%lp-hd4931349671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4931249667%_))))
                                          (_%loop4931149657%_
                                           _%lp-tl4931449674%_
                                           (cons _%lp-hd4931349671%_
                                                 _%rest4931549664%_))))
                                      (let ((_%rest4931649677%_
                                             (reverse _%rest4931549664%_)))
                                        (_%__kont8619286193%_
                                         _%rest4931649677%_
                                         _%hd4930649645%_
                                         _%hd4930349635%_
                                         _%hd4929749615%_))))))
                        (_%loop4931149657%_ _%target4930849651%_ '())))))
              (if (gx#stx-pair? _%__stx8618986190%_)
                  (let ((_%e4929349601%_ (gx#syntax-e _%__stx8618986190%_)))
                    (let ((_%tl4929549608%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4929349601%_)))
                          (_%hd4929449605%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4929349601%_))))
                      (if (gx#stx-pair? _%tl4929549608%_)
                          (let ((_%e4929649611%_
                                 (gx#syntax-e _%tl4929549608%_)))
                            (let ((_%tl4929849618%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4929649611%_)))
                                  (_%hd4929749615%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4929649611%_))))
                              (if (gx#stx-pair? _%tl4929849618%_)
                                  (let ((_%e4929949621%_
                                         (gx#syntax-e _%tl4929849618%_)))
                                    (let ((_%tl4930149628%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4929949621%_)))
                                          (_%hd4930049625%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4929949621%_))))
                                      (if (gx#identifier? _%hd4930049625%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g92258_|
                                               _%hd4930049625%_)
                                              (if (gx#stx-pair?
                                                   _%tl4930149628%_)
                                                  (let ((_%e4930249631%_
                                                         (gx#syntax-e
                                                          _%tl4930149628%_)))
                                                    (let ((_%tl4930449638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4930249631%_)))
                                                          (_%hd4930349635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4930249631%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4930449638%_)
                                                          (let ((_%e4930549641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4930449638%_)))
                    (let ((_%tl4930749648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4930549641%_)))
                          (_%hd4930649645%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4930549641%_))))
                      (if (gx#stx-pair/null? _%tl4930749648%_)
                          (let ((_%__splice8619486195%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4930749648%_
                                  '0)))
                            (let ((_%tl4931049654%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8619486195%_ '1)))
                                  (_%target4930849651%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8619486195%_
                                      '0))))
                              (if (gx#stx-null? _%tl4931049654%_)
                                  (_%__match8624686247%_
                                   _%e4929349601%_
                                   _%hd4929449605%_
                                   _%tl4929549608%_
                                   _%e4929649611%_
                                   _%hd4929749615%_
                                   _%tl4929849618%_
                                   _%e4929949621%_
                                   _%hd4930049625%_
                                   _%tl4930149628%_
                                   _%e4930249631%_
                                   _%hd4930349635%_
                                   _%tl4930449638%_
                                   _%e4930549641%_
                                   _%hd4930649645%_
                                   _%tl4930749648%_
                                   _%__splice8619486195%_
                                   _%target4930849651%_
                                   _%tl4931049654%_)
                                  (if (gx#stx-pair/null? _%tl4930149628%_)
                                      (let ((_%__splice8620286203%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4930149628%_
                                              '0)))
                                        (let ((_%tl4935949411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8620286203%_
                                                  '1)))
                                              (_%target4935749408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8620286203%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4935949411%_)
                                              (_%__match8631486315%_
                                               _%e4929349601%_
                                               _%hd4929449605%_
                                               _%tl4929549608%_
                                               _%e4929649611%_
                                               _%hd4929749615%_
                                               _%tl4929849618%_
                                               _%e4929949621%_
                                               _%hd4930049625%_
                                               _%tl4930149628%_
                                               _%__splice8620286203%_
                                               _%target4935749408%_
                                               _%tl4935949411%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4928749371%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4928749371%_))))))
                          (if (gx#stx-pair/null? _%tl4930149628%_)
                              (let ((_%__splice8620286203%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4930149628%_
                                      '0)))
                                (let ((_%tl4935949411%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8620286203%_
                                          '1)))
                                      (_%target4935749408%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8620286203%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4935949411%_)
                                      (_%__match8631486315%_
                                       _%e4929349601%_
                                       _%hd4929449605%_
                                       _%tl4929549608%_
                                       _%e4929649611%_
                                       _%hd4929749615%_
                                       _%tl4929849618%_
                                       _%e4929949621%_
                                       _%hd4930049625%_
                                       _%tl4930149628%_
                                       _%__splice8620286203%_
                                       _%target4935749408%_
                                       _%tl4935949411%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4928749371%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4928749371%_))))))
                  (if (gx#stx-pair/null? _%tl4930149628%_)
                      (let ((_%__splice8620286203%_
                             (gx#syntax-split-splice->vector
                              _%tl4930149628%_
                              '0)))
                        (let ((_%tl4935949411%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8620286203%_ '1)))
                              (_%target4935749408%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8620286203%_ '0))))
                          (if (gx#stx-null? _%tl4935949411%_)
                              (_%__match8631486315%_
                               _%e4929349601%_
                               _%hd4929449605%_
                               _%tl4929549608%_
                               _%e4929649611%_
                               _%hd4929749615%_
                               _%tl4929849618%_
                               _%e4929949621%_
                               _%hd4930049625%_
                               _%tl4930149628%_
                               _%__splice8620286203%_
                               _%target4935749408%_
                               _%tl4935949411%_)
                              (let ()
                                (declare (not safe))
                                (_%g4928749371%_)))))
                      (let () (declare (not safe)) (_%g4928749371%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4930149628%_)
                                                      (let ((_%__splice8620286203%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4930149628%_
                                                              '0)))
                                                        (let ((_%tl4935949411%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8620286203%_ '1)))
                      (_%target4935749408%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8620286203%_ '0))))
                  (if (gx#stx-null? _%tl4935949411%_)
                      (_%__match8631486315%_
                       _%e4929349601%_
                       _%hd4929449605%_
                       _%tl4929549608%_
                       _%e4929649611%_
                       _%hd4929749615%_
                       _%tl4929849618%_
                       _%e4929949621%_
                       _%hd4930049625%_
                       _%tl4930149628%_
                       _%__splice8620286203%_
                       _%target4935749408%_
                       _%tl4935949411%_)
                      (let () (declare (not safe)) (_%g4928749371%_)))))
              (let () (declare (not safe)) (_%g4928749371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g92259_|
                                                   _%hd4930049625%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4930149628%_)
                                                      (let ((_%e4933049507%_
                                                             (gx#syntax-e
                                                              _%tl4930149628%_)))
                                                        (let ((_%tl4933249514%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4933049507%_)))
                      (_%hd4933149511%_
                       (let () (declare (not safe)) (##car _%e4933049507%_))))
                  (if (gx#stx-pair? _%tl4933249514%_)
                      (let ((_%e4933349517%_ (gx#syntax-e _%tl4933249514%_)))
                        (let ((_%tl4933549524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4933349517%_)))
                              (_%hd4933449521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4933349517%_))))
                          (if (gx#stx-pair/null? _%tl4933549524%_)
                              (let ((_%__splice8619886199%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4933549524%_
                                      '0)))
                                (let ((_%tl4933849530%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8619886199%_
                                          '1)))
                                      (_%target4933649527%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8619886199%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4933849530%_)
                                      (_%__match8628886289%_
                                       _%e4929349601%_
                                       _%hd4929449605%_
                                       _%tl4929549608%_
                                       _%e4929649611%_
                                       _%hd4929749615%_
                                       _%tl4929849618%_
                                       _%e4929949621%_
                                       _%hd4930049625%_
                                       _%tl4930149628%_
                                       _%e4933049507%_
                                       _%hd4933149511%_
                                       _%tl4933249514%_
                                       _%e4933349517%_
                                       _%hd4933449521%_
                                       _%tl4933549524%_
                                       _%__splice8619886199%_
                                       _%target4933649527%_
                                       _%tl4933849530%_)
                                      (if (gx#stx-pair/null? _%tl4930149628%_)
                                          (let ((_%__splice8620286203%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4930149628%_
                                                  '0)))
                                            (let ((_%tl4935949411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8620286203%_
                                                      '1)))
                                                  (_%target4935749408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8620286203%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4935949411%_)
                                                  (_%__match8631486315%_
                                                   _%e4929349601%_
                                                   _%hd4929449605%_
                                                   _%tl4929549608%_
                                                   _%e4929649611%_
                                                   _%hd4929749615%_
                                                   _%tl4929849618%_
                                                   _%e4929949621%_
                                                   _%hd4930049625%_
                                                   _%tl4930149628%_
                                                   _%__splice8620286203%_
                                                   _%target4935749408%_
                                                   _%tl4935949411%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4928749371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4928749371%_))))))
                              (if (gx#stx-pair/null? _%tl4930149628%_)
                                  (let ((_%__splice8620286203%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4930149628%_
                                          '0)))
                                    (let ((_%tl4935949411%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8620286203%_
                                              '1)))
                                          (_%target4935749408%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8620286203%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4935949411%_)
                                          (_%__match8631486315%_
                                           _%e4929349601%_
                                           _%hd4929449605%_
                                           _%tl4929549608%_
                                           _%e4929649611%_
                                           _%hd4929749615%_
                                           _%tl4929849618%_
                                           _%e4929949621%_
                                           _%hd4930049625%_
                                           _%tl4930149628%_
                                           _%__splice8620286203%_
                                           _%target4935749408%_
                                           _%tl4935949411%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4928749371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4928749371%_))))))
                      (if (gx#stx-pair/null? _%tl4930149628%_)
                          (let ((_%__splice8620286203%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4930149628%_
                                  '0)))
                            (let ((_%tl4935949411%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8620286203%_ '1)))
                                  (_%target4935749408%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8620286203%_
                                      '0))))
                              (if (gx#stx-null? _%tl4935949411%_)
                                  (_%__match8631486315%_
                                   _%e4929349601%_
                                   _%hd4929449605%_
                                   _%tl4929549608%_
                                   _%e4929649611%_
                                   _%hd4929749615%_
                                   _%tl4929849618%_
                                   _%e4929949621%_
                                   _%hd4930049625%_
                                   _%tl4930149628%_
                                   _%__splice8620286203%_
                                   _%target4935749408%_
                                   _%tl4935949411%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4928749371%_)))))
                          (let () (declare (not safe)) (_%g4928749371%_))))))
              (if (gx#stx-pair/null? _%tl4930149628%_)
                  (let ((_%__splice8620286203%_
                         (gx#syntax-split-splice->vector _%tl4930149628%_ '0)))
                    (let ((_%tl4935949411%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8620286203%_ '1)))
                          (_%target4935749408%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8620286203%_ '0))))
                      (if (gx#stx-null? _%tl4935949411%_)
                          (_%__match8631486315%_
                           _%e4929349601%_
                           _%hd4929449605%_
                           _%tl4929549608%_
                           _%e4929649611%_
                           _%hd4929749615%_
                           _%tl4929849618%_
                           _%e4929949621%_
                           _%hd4930049625%_
                           _%tl4930149628%_
                           _%__splice8620286203%_
                           _%target4935749408%_
                           _%tl4935949411%_)
                          (let () (declare (not safe)) (_%g4928749371%_)))))
                  (let () (declare (not safe)) (_%g4928749371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4930149628%_)
                                                      (let ((_%__splice8620286203%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4930149628%_
                                                              '0)))
                                                        (let ((_%tl4935949411%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8620286203%_ '1)))
                      (_%target4935749408%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8620286203%_ '0))))
                  (if (gx#stx-null? _%tl4935949411%_)
                      (_%__match8631486315%_
                       _%e4929349601%_
                       _%hd4929449605%_
                       _%tl4929549608%_
                       _%e4929649611%_
                       _%hd4929749615%_
                       _%tl4929849618%_
                       _%e4929949621%_
                       _%hd4930049625%_
                       _%tl4930149628%_
                       _%__splice8620286203%_
                       _%target4935749408%_
                       _%tl4935949411%_)
                      (let () (declare (not safe)) (_%g4928749371%_)))))
              (let () (declare (not safe)) (_%g4928749371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4930149628%_)
                                              (let ((_%__splice8620286203%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4930149628%_
                                                      '0)))
                                                (let ((_%tl4935949411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8620286203%_
                                                          '1)))
                                                      (_%target4935749408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8620286203%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4935949411%_)
                                                      (_%__match8631486315%_
                                                       _%e4929349601%_
                                                       _%hd4929449605%_
                                                       _%tl4929549608%_
                                                       _%e4929649611%_
                                                       _%hd4929749615%_
                                                       _%tl4929849618%_
                                                       _%e4929949621%_
                                                       _%hd4930049625%_
                                                       _%tl4930149628%_
                                                       _%__splice8620286203%_
                                                       _%target4935749408%_
                                                       _%tl4935949411%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4928749371%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4928749371%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4928749371%_)))))
                          (let () (declare (not safe)) (_%g4928749371%_)))))
                  (let () (declare (not safe)) (_%g4928749371%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx49725%_)
        (let* ((_%__stx8631786318%_ _%$stx49725%_)
               (_%g4973049766%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8631786318%_))))
          (let ((_%__kont8632086321%_
                 (lambda (_%L49884%_ _%L49886%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L49886%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L49884%_
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
                           (cons _%L49886%_
                                 (cons _%L49884%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8632286323%_
                 (lambda (_%L49823%_ _%L49825%_ _%L49826%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L49826%_ (cons _%L49825%_ '())))
                               (cons _%L49823%_ '()))))))
            (if (gx#stx-pair? _%__stx8631786318%_)
                (let ((_%e4973449854%_ (gx#syntax-e _%__stx8631786318%_)))
                  (let ((_%tl4973649861%_
                         (let () (declare (not safe)) (##cdr _%e4973449854%_)))
                        (_%hd4973549858%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4973449854%_))))
                    (if (gx#stx-pair? _%tl4973649861%_)
                        (let ((_%e4973749864%_ (gx#syntax-e _%tl4973649861%_)))
                          (let ((_%tl4973949871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4973749864%_)))
                                (_%hd4973849868%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4973749864%_))))
                            (if (gx#stx-pair? _%tl4973949871%_)
                                (let ((_%e4974049874%_
                                       (gx#syntax-e _%tl4973949871%_)))
                                  (let ((_%tl4974249881%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4974049874%_)))
                                        (_%hd4974149878%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4974049874%_))))
                                    (if (gx#stx-null? _%tl4974249881%_)
                                        (_%__kont8632086321%_
                                         _%hd4974149878%_
                                         _%hd4973849868%_)
                                        (if (gx#stx-pair? _%tl4974249881%_)
                                            (let ((_%e4975549803%_
                                                   (gx#syntax-e
                                                    _%tl4974249881%_)))
                                              (let ((_%tl4975749810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4975549803%_)))
                                                    (_%hd4975649807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4975549803%_))))
                                                (if (gx#identifier?
                                                     _%hd4975649807%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g92260_|
                                                         _%hd4975649807%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4975749810%_)
                                                            (let ((_%e4975849813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4975749810%_)))
                      (let ((_%tl4976049820%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4975849813%_)))
                            (_%hd4975949817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4975849813%_))))
                        (if (gx#stx-null? _%tl4976049820%_)
                            (_%__kont8632286323%_
                             _%hd4975949817%_
                             _%hd4974149878%_
                             _%hd4973849868%_)
                            (let () (declare (not safe)) (_%g4973049766%_)))))
                    (let () (declare (not safe)) (_%g4973049766%_)))
                (let () (declare (not safe)) (_%g4973049766%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4973049766%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4973049766%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4973049766%_)))))
                        (let () (declare (not safe)) (_%g4973049766%_)))))
                (let () (declare (not safe)) (_%g4973049766%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx49905%_)
        (let ((_%g4990849915%_
               (lambda (_%g4990949911%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4990949911%_))))
          (_%g4990849915%_ _%$stx49905%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx49919%_)
        (let ((_%g4992249929%_
               (lambda (_%g4992349925%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4992349925%_))))
          (_%g4992249929%_ _%$stx49919%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx49933%_)
        (let* ((_%g4993749951%_
                (lambda (_%g4993849947%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4993849947%_)))
               (_%g4993649992%_
                (lambda (_%g4993849955%_)
                  (if (gx#stx-pair? _%g4993849955%_)
                      (let ((_%e4994049958%_ (gx#syntax-e _%g4993849955%_)))
                        (let ((_%hd4994149962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4994049958%_)))
                              (_%tl4994249965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4994049958%_))))
                          (if (gx#stx-pair? _%tl4994249965%_)
                              (let ((_%e4994349968%_
                                     (gx#syntax-e _%tl4994249965%_)))
                                (let ((_%hd4994449972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4994349968%_)))
                                      (_%tl4994549975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4994349968%_))))
                                  (if (gx#stx-null? _%tl4994549975%_)
                                      ((lambda (_%L49978%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L49978%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L49978%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4994449972%_)
                                      (_%g4993749951%_ _%g4993849955%_))))
                              (_%g4993749951%_ _%g4993849955%_))))
                      (_%g4993749951%_ _%g4993849955%_)))))
          (_%g4993649992%_ _%$stx49933%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx49996%_)
        (let* ((_%g4999950022%_
                (lambda (_%g5000050018%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5000050018%_)))
               (_%g4999850146%_
                (lambda (_%g5000050026%_)
                  (if (gx#stx-pair? _%g5000050026%_)
                      (let ((_%e5000550029%_ (gx#syntax-e _%g5000050026%_)))
                        (let ((_%hd5000650033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5000550029%_)))
                              (_%tl5000750036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5000550029%_))))
                          (if (gx#stx-pair? _%tl5000750036%_)
                              (let ((_%e5000850039%_
                                     (gx#syntax-e _%tl5000750036%_)))
                                (let ((_%hd5000950043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5000850039%_)))
                                      (_%tl5001050046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5000850039%_))))
                                  (if (gx#stx-pair? _%tl5001050046%_)
                                      (let ((_%e5001150049%_
                                             (gx#syntax-e _%tl5001050046%_)))
                                        (let ((_%hd5001250053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5001150049%_)))
                                              (_%tl5001350056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5001150049%_))))
                                          (if (gx#stx-pair? _%tl5001350056%_)
                                              (let ((_%e5001450059%_
                                                     (gx#syntax-e
                                                      _%tl5001350056%_)))
                                                (let ((_%hd5001550063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5001450059%_)))
                                                      (_%tl5001650066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5001450059%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5001650066%_)
                                                      ((lambda (_%L50069%_
                                                                _%L50071%_
                                                                _%L50072%_
                                                                _%L50073%_)
                                                         (let* ((_%g5009350101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5009450097%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5009450097%_)))
                        (_%g5009250120%_
                         (lambda (_%g5009450105%_)
                           ((lambda (_%L50108%_)
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
                                (cons _%L50108%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L50071%_ '()))
                                      (cons 'value:
                                            (cons _%L50069%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5009450105%_))))
                   (_%g5009250120%_
                    (let ((_%$e50132%_
                           (let ((_%$e50124%_ (gx#stx-source _%L50072%_)))
                             (if _%$e50124%_
                                 _%$e50124%_
                                 (let ((_%$e50128%_
                                        (gx#stx-source _%stx49996%_)))
                                   (if _%$e50128%_
                                       _%$e50128%_
                                       (gx#stx-source _%L50073%_)))))))
                      (if _%$e50132%_
                          ((lambda (_%locat50136%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5013850140%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat50136%_
                                   '#t
                                   _%g5013850140%_)))))
                           _%$e50132%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5001550063%_
               _%hd5001250053%_
               _%hd5000950043%_
               _%hd5000650033%_)
              (_%g4999950022%_ _%g5000050026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4999950022%_
                                               _%g5000050026%_))))
                                      (_%g4999950022%_ _%g5000050026%_))))
                              (_%g4999950022%_ _%g5000050026%_))))
                      (_%g4999950022%_ _%g5000050026%_)))))
          (_%g4999850146%_ _%stx49996%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx50150%_)
        (let* ((_%g5015350168%_
                (lambda (_%g5015450164%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5015450164%_)))
               (_%g5015250264%_
                (lambda (_%g5015450172%_)
                  (if (gx#stx-pair? _%g5015450172%_)
                      (let ((_%e5015750175%_ (gx#syntax-e _%g5015450172%_)))
                        (let ((_%hd5015850179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5015750175%_)))
                              (_%tl5015950182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5015750175%_))))
                          (if (gx#stx-pair? _%tl5015950182%_)
                              (let ((_%e5016050185%_
                                     (gx#syntax-e _%tl5015950182%_)))
                                (let ((_%hd5016150189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5016050185%_)))
                                      (_%tl5016250192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5016050185%_))))
                                  (if (gx#stx-null? _%tl5016250192%_)
                                      ((lambda (_%L50195%_ _%L50197%_)
                                         (let* ((_%g5021150219%_
                                                 (lambda (_%g5021250215%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5021250215%_)))
                                                (_%g5021050238%_
                                                 (lambda (_%g5021250223%_)
                                                   ((lambda (_%L50226%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'abort!)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'raise-contract-violation-error)
                                (cons '"nil (#f) derefence"
                                      (cons 'context:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%L50226%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L50195%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5021250223%_))))
                                           (_%g5021050238%_
                                            (let ((_%$e50250%_
                                                   (let ((_%$e50242%_
                                                          (gx#stx-source
                                                           _%L50195%_)))
                                                     (if _%$e50242%_
                                                         _%$e50242%_
                                                         (let ((_%$e50246%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx50150%_)))
                   (if _%$e50246%_ _%$e50246%_ (gx#stx-source _%L50197%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e50250%_
                                                  ((lambda (_%locat50254%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5025650258%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat50254%_
                                                           '#t
                                                           _%g5025650258%_)))))
                                                   _%$e50250%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5016150189%_
                                       _%hd5015850179%_)
                                      (_%g5015350168%_ _%g5015450172%_))))
                              (_%g5015350168%_ _%g5015450172%_))))
                      (_%g5015350168%_ _%g5015450172%_)))))
          (_%g5015250264%_ _%stx50150%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx50268%_)
        (let* ((_%g5027250286%_
                (lambda (_%g5027350282%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5027350282%_)))
               (_%g5027150327%_
                (lambda (_%g5027350290%_)
                  (if (gx#stx-pair? _%g5027350290%_)
                      (let ((_%e5027550293%_ (gx#syntax-e _%g5027350290%_)))
                        (let ((_%hd5027650297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5027550293%_)))
                              (_%tl5027750300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5027550293%_))))
                          (if (gx#stx-pair? _%tl5027750300%_)
                              (let ((_%e5027850303%_
                                     (gx#syntax-e _%tl5027750300%_)))
                                (let ((_%hd5027950307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5027850303%_)))
                                      (_%tl5028050310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5027850303%_))))
                                  (if (gx#stx-null? _%tl5028050310%_)
                                      ((lambda (_%L50313%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _%L50313%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5027950307%_)
                                      (_%g5027250286%_ _%g5027350290%_))))
                              (_%g5027250286%_ _%g5027350290%_))))
                      (_%g5027250286%_ _%g5027350290%_)))))
          (_%g5027150327%_ _%$stx50268%_))))))
