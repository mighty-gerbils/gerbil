(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1756156298)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords101924%_
               _%get-precedence-list101918101925%_
               _%struct?101919101927%_
               _%eq101920101929%_
               _%get-name101921101931%_
               _%rhead101933%_
               _%supers101934%_)
        (let* ((_%get-precedence-list101936%_
                (if (eq? _%get-precedence-list101918101925%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list101918101925%_))
               (_%struct?101938%_
                (if (eq? _%struct?101919101927%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?101919101927%_))
               (_%eq101940%_
                (if (eq? _%eq101920101929%_ absent-value)
                    eq?
                    _%eq101920101929%_))
               (_%get-name101942%_
                (if (eq? _%get-name101921101931%_ absent-value)
                    identity
                    _%get-name101921101931%_)))
          (if (null? _%supers101934%_)
              (values (reverse _%rhead101933%_) '#f)
              (if (null? (cdr _%supers101934%_))
                  (let ((_%pl101947%_
                         (_%get-precedence-list101936%_
                          (car _%supers101934%_))))
                    (values (append-reverse _%rhead101933%_ _%pl101947%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?101938%_ _%pl101947%_))))
                  (let ((_%pls101950%_
                         (map _%get-precedence-list101936%_ _%supers101934%_))
                        (_%sis101951%_ '()))
                    (letrec* ((_%get-names101953%_
                               (lambda (_%lst102230%_)
                                 (map _%get-name101942%_ _%lst102230%_)))
                              (_%err101954%_
                               (lambda _%a102228%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names101953%_
                                         (reverse _%rhead101933%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names101953%_
                                                 _%pls101950%_))
                                        'single-inheritance-suffix:
                                        (_%get-names101953%_ _%sis101951%_)
                                        _%a102228%_)))
                              (_%eqlist?101955%_
                               (lambda (_%l1102222%_ _%l2102223%_)
                                 (let ((_%$e102225%_
                                        (eq? _%l1102222%_ _%l2102223%_)))
                                   (if _%$e102225%_
                                       _%$e102225%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq101940%_
                                                      _%l1102222%_
                                                      _%l2102223%_))
                                           (let ((__tmp102278
                                                  (length _%l1102222%_))
                                                 (__tmp102277
                                                  (length _%l2102223%_)))
                                             (declare (not safe))
                                             (##fx= __tmp102278 __tmp102277))
                                           '#f)))))
                              (_%merge-sis!101956%_
                               (lambda (_%sis2102207%_)
                                 (if (null? _%sis2102207%_)
                                     '#!void
                                     (if (null? _%sis101951%_)
                                         (set! _%sis101951%_ _%sis2102207%_)
                                         (let _%loop102212%_ ((_%t1102214%_
                                                               _%sis101951%_)
                                                              (_%t2102215%_
                                                               _%sis2102207%_))
                                           (if (_%eqlist?101955%_
                                                _%t1102214%_
                                                _%sis2102207%_)
                                               '#!void
                                               (if (_%eqlist?101955%_
                                                    _%t2102215%_
                                                    _%sis101951%_)
                                                   (set! _%sis101951%_
                                                         _%sis2102207%_)
                                                   (if (null? _%t1102214%_)
                                                       (if (member (car _%sis101951%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2102215%_
                           _%eq101940%_)
                   (set! _%sis101951%_ _%sis2102207%_)
                   (_%err101954%_
                    'struct-incompatibility:
                    (cons (_%get-names101953%_ _%sis101951%_)
                          (cons (_%get-names101953%_ _%sis2102207%_) '()))))
               (if (null? _%t2102215%_)
                   (if (member (car _%sis2102207%_) _%t1102214%_ _%eq101940%_)
                       '#!void
                       (_%err101954%_
                        'struct-incompatibility:
                        (cons (_%get-names101953%_ _%sis101951%_)
                              (cons (_%get-names101953%_ _%sis2102207%_)
                                    '()))))
                   (_%loop102212%_
                    (cdr _%t1102214%_)
                    (cdr _%t2102215%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls101957%_
                               (let ((__tmp102279
                                      (lambda (_%pl102202%_)
                                        (let ((_g102280_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?101938%_
                                                  _%pl102202%_
                                                  '()))))
                                          (begin
                                            (let ((_g102281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g102280_)
                                                         (##values-length
                                                          _g102280_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g102281_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g102281_)))
                                            (let ((_%tl102204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102280_
                                                      0)))
                                                  (_%rh102205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g102280_
                                                      1))))
                                              (begin
                                                (_%merge-sis!101956%_
                                                 _%tl102204%_)
                                                _%rh102205%_)))))))
                                 (declare (not safe))
                                 (##map __tmp102279 _%pls101950%_)))
                              (_%unsisr-rpl101958%_
                               (lambda (_%rpl102148%_)
                                 (let _%u102150%_ ((_%pl-rhead102152%_
                                                    _%rpl102148%_)
                                                   (_%pl-tail102153%_ '())
                                                   (_%sis-rhead102154%_
                                                    (reverse _%sis101951%_))
                                                   (_%sis-tail102155%_ '()))
                                   (let* ((_%pl-rhead102156102165%_
                                           _%pl-rhead102152%_)
                                          (_%E102159102169%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead102156102165%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K102163102199%_
                                            (lambda () _%pl-tail102153%_))
                                           (_%K102160102183%_
                                            (lambda (_%plrh102173%_
                                                     _%c102174%_)
                                              (if (member _%c102174%_
                                                          _%sis-tail102155%_
                                                          _%eq101940%_)
                                                  (_%err101954%_
                                                   'precedence-list-head:
                                                   (_%get-names101953%_
                                                    (reverse _%pl-rhead102152%_))
                                                   'precedence-list-tail:
                                                   (_%get-names101953%_
                                                    _%pl-tail102153%_)
                                                   'single-inheritance-head:
                                                   (_%get-names101953%_
                                                    (reverse _%sis-rhead102154%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names101953%_
                                                    _%sis-tail102155%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name101942%_
                                                    _%c102174%_))
                                                  (let ((_g102282_
                                                         (let ((__tmp102284
                                                                (lambda (_%g102175102177%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq101940%_ _%c102174%_ _%g102175102177%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp102284
                    _%sis-rhead102154%_
                    _%sis-tail102155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g102283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102282_)
                           (##values-length _g102282_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102283_ 2)))
                    (error "Context expects 2 values" _g102283_)))
              (let ((_%sis-rh2102180%_
                     (let () (declare (not safe)) (##values-ref _g102282_ 0)))
                    (_%sis-tl2102181%_
                     (let () (declare (not safe)) (##values-ref _g102282_ 1))))
                (if (null? _%sis-rh2102180%_)
                    (_%u102150%_
                     _%plrh102173%_
                     (cons _%c102174%_ _%pl-tail102153%_)
                     '()
                     _%sis-tl2102181%_)
                    (_%u102150%_
                     _%plrh102173%_
                     _%pl-tail102153%_
                     (cdr _%sis-rh2102180%_)
                     _%sis-tl2102181%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match102158102195%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead102156102165%_)
                                                    (let ((_%tl102162102188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead102156102165%_)))
                                                          (_%hd102161102186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead102156102165%_))))
                                                      (let ((_%c102191%_
                                                             _%hd102161102186%_)
                                                            (_%plrh102193%_
                                                             _%tl102162102188%_))
                                                        (_%K102160102183%_
                                                         _%plrh102193%_
                                                         _%c102191%_)))
                                                    (_%E102159102169%_)))))
                                         (if (null? _%pl-rhead102156102165%_)
                                             (_%K102163102199%_)
                                             (_%try-match102158102195%_))))))))
                              (_g102285_
                               (let ((_g102286_
                                      (let ((__tmp102288
                                             (reverse _%supers101934%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls101957%_
                                         __tmp102288))))
                                 #!void
                                 _g102286_))
                              (_%hpls101959%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl101958%_ _%rpls101957%_)))
                              (_%c3-select-next101960%_
                               (lambda (_%tails102098%_)
                                 (let ((_%candidate?102104%_
                                        (lambda (_%c102100%_)
                                          (let ((__tmp102289
                                                 (lambda (_%tail102102%_)
                                                   (not (member _%c102100%_
                                                                (cdr _%tail102102%_)
                                                                _%eq101940%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp102289
                                             _%tails102098%_)))))
                                   (let _%loop102106%_ ((_%ts102108%_
                                                         _%tails102098%_))
                                     (let* ((_%ts102109102119%_ _%ts102108%_)
                                            (_%else102111102127%_
                                             (lambda () (_%err101954%_)))
                                            (_%K102113102133%_
                                             (lambda (_%rts102130%_
                                                      _%c102131%_)
                                               (if (_%candidate?102104%_
                                                    _%c102131%_)
                                                   _%c102131%_
                                                   (_%loop102106%_
                                                    _%rts102130%_)))))
                                       (if (pair? _%ts102109102119%_)
                                           (let ((_%hd102114102136%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts102109102119%_)))
                                                 (_%tl102115102138%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts102109102119%_))))
                                             (if (pair? _%hd102114102136%_)
                                                 (let* ((_%hd102116102141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd102114102136%_)))
                                                        (_%c102144%_
                                                         _%hd102116102141%_)
                                                        (_%rts102146%_
                                                         _%tl102115102138%_))
                                                   (_%K102113102133%_
                                                    _%rts102146%_
                                                    _%c102144%_))
                                                 (_%err101954%_)))
                                           (_%err101954%_)))))))
                              (_%remove-next!101961%_
                               (lambda (_%next102043%_ _%tails102044%_)
                                 (let _%loop102046%_ ((_%t102048%_
                                                       _%tails102044%_))
                                   (let* ((_%t102049102060%_ _%t102048%_)
                                          (_%E102052102064%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t102049102060%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K102058102095%_
                                            (lambda () _%tails102044%_))
                                           (_%K102053102072%_
                                            (lambda (_%more102068%_
                                                     _%tail102069%_
                                                     _%head102070%_)
                                              (if (_%eq101940%_
                                                   _%head102070%_
                                                   _%next102043%_)
                                                  (set-car!
                                                   _%t102048%_
                                                   _%tail102069%_)
                                                  '#!void)
                                              (_%loop102046%_
                                               _%more102068%_))))
                                       (let ((_%try-match102051102091%_
                                              (lambda ()
                                                (if (pair? _%t102049102060%_)
                                                    (let ((_%tl102055102077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t102049102060%_)))
                                                          (_%hd102054102075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t102049102060%_))))
                                                      (if (pair? _%hd102054102075%_)
                                                          (let ((_%tl102057102082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd102054102075%_)))
                        (_%hd102056102080%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd102054102075%_))))
                    (let ((_%head102085%_ _%hd102056102080%_)
                          (_%tail102087%_ _%tl102057102082%_)
                          (_%more102089%_ _%tl102055102077%_))
                      (_%K102053102072%_
                       _%more102089%_
                       _%tail102087%_
                       _%head102085%_)))
                  (_%E102052102064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E102052102064%_)))))
                                         (if (null? _%t102049102060%_)
                                             (_%K102058102095%_)
                                             (_%try-match102051102091%_))))))))
                              (_%precedence-list101962%_
                               (let _%c3loop101993%_ ((_%rhead101995%_
                                                       _%rhead101933%_)
                                                      (_%tails101996%_
                                                       _%hpls101959%_))
                                 (let* ((_%tails101998%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails101996%_)))
                                        (_%tails101999102009%_ _%tails101998%_)
                                        (_%else102002102020%_
                                         (lambda ()
                                           (let ((_%next102017%_
                                                  (_%c3-select-next101960%_
                                                   _%tails101998%_)))
                                             (_%c3loop101993%_
                                              (cons _%next102017%_
                                                    _%rhead101995%_)
                                              (_%remove-next!101961%_
                                               _%next102017%_
                                               _%tails101998%_))))))
                                   (let ((_%K102007102040%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead101995%_
                                             _%sis101951%_)))
                                         (_%K102004102026%_
                                          (lambda (_%tail102024%_)
                                            (append-reverse
                                             _%rhead101995%_
                                             (append _%tail102024%_
                                                     _%sis101951%_)))))
                                     (let ((_%try-match102001102036%_
                                            (lambda ()
                                              (if (pair? _%tails101999102009%_)
                                                  (let ((_%tl102006102031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails101999102009%_)))
                                                        (_%hd102005102029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails101999102009%_))))
                                                    (if (null? _%tl102006102031%_)
                                                        (let ((_%tail102034%_
                                                               _%hd102005102029%_))
                                                          (_%K102004102026%_
                                                           _%tail102034%_))
                                                        (_%else102002102020%_)))
                                                  (_%else102002102020%_)))))
                                       (if (null? _%tails101999102009%_)
                                           (_%K102007102040%_)
                                           (_%try-match102001102036%_)))))))
                              (_%super-struct101963%_
                               (let* ((_%sis101964101972%_ _%sis101951%_)
                                      (_%else101966101980%_ (lambda () '#f))
                                      (_%K101968101985%_
                                       (lambda (_%s101983%_) _%s101983%_)))
                                 (if (pair? _%sis101964101972%_)
                                     (let* ((_%hd101969101988%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis101964101972%_)))
                                            (_%s101991%_ _%hd101969101988%_))
                                       (_%K101968101985%_ _%s101991%_))
                                     (_%else101966101980%_)))))
                      (values _%precedence-list101962%_
                              _%super-struct101963%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords102235%_ . _%args102236%_)
        (apply c4-linearize__%
               _%@@keywords102235%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102235%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102235%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords102235%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102235%_
                  'get-name:
                  absent-value))
               _%args102236%_)))
    (define c4-linearize
      (lambda _%args101922102242%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args101922102242%_)))))
