(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1745511075)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords95491%_
               _%get-precedence-list9548595492%_
               _%struct?9548695494%_
               _%eq9548795496%_
               _%get-name9548895498%_
               _%rhead95500%_
               _%supers95501%_)
        (let* ((_%get-precedence-list95503%_
                (if (eq? _%get-precedence-list9548595492%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list9548595492%_))
               (_%struct?95505%_
                (if (eq? _%struct?9548695494%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?9548695494%_))
               (_%eq95507%_
                (if (eq? _%eq9548795496%_ absent-value) eq? _%eq9548795496%_))
               (_%get-name95509%_
                (if (eq? _%get-name9548895498%_ absent-value)
                    identity
                    _%get-name9548895498%_)))
          (if (null? _%supers95501%_)
              (values (reverse _%rhead95500%_) '#f)
              (if (null? (cdr _%supers95501%_))
                  (let ((_%pl95514%_
                         (_%get-precedence-list95503%_ (car _%supers95501%_))))
                    (values (append-reverse _%rhead95500%_ _%pl95514%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?95505%_ _%pl95514%_))))
                  (let ((_%pls95517%_
                         (map _%get-precedence-list95503%_ _%supers95501%_))
                        (_%sis95518%_ '()))
                    (letrec* ((_%get-names95520%_
                               (lambda (_%lst95797%_)
                                 (map _%get-name95509%_ _%lst95797%_)))
                              (_%err95521%_
                               (lambda _%a95795%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names95520%_
                                         (reverse _%rhead95500%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names95520%_
                                                 _%pls95517%_))
                                        'single-inheritance-suffix:
                                        (_%get-names95520%_ _%sis95518%_)
                                        _%a95795%_)))
                              (_%eqlist?95522%_
                               (lambda (_%l195789%_ _%l295790%_)
                                 (let ((_%$e95792%_
                                        (eq? _%l195789%_ _%l295790%_)))
                                   (if _%$e95792%_
                                       _%$e95792%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq95507%_
                                                      _%l195789%_
                                                      _%l295790%_))
                                           (let ((__tmp95845
                                                  (length _%l195789%_))
                                                 (__tmp95844
                                                  (length _%l295790%_)))
                                             (declare (not safe))
                                             (##fx= __tmp95845 __tmp95844))
                                           '#f)))))
                              (_%merge-sis!95523%_
                               (lambda (_%sis295774%_)
                                 (if (null? _%sis295774%_)
                                     '#!void
                                     (if (null? _%sis95518%_)
                                         (set! _%sis95518%_ _%sis295774%_)
                                         (let _%loop95779%_ ((_%t195781%_
                                                              _%sis95518%_)
                                                             (_%t295782%_
                                                              _%sis295774%_))
                                           (if (_%eqlist?95522%_
                                                _%t195781%_
                                                _%sis295774%_)
                                               '#!void
                                               (if (_%eqlist?95522%_
                                                    _%t295782%_
                                                    _%sis95518%_)
                                                   (set! _%sis95518%_
                                                         _%sis295774%_)
                                                   (if (null? _%t195781%_)
                                                       (if (member (car _%sis95518%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t295782%_
                           _%eq95507%_)
                   (set! _%sis95518%_ _%sis295774%_)
                   (_%err95521%_
                    'struct-incompatibility:
                    (cons (_%get-names95520%_ _%sis95518%_)
                          (cons (_%get-names95520%_ _%sis295774%_) '()))))
               (if (null? _%t295782%_)
                   (if (member (car _%sis295774%_) _%t195781%_ _%eq95507%_)
                       '#!void
                       (_%err95521%_
                        'struct-incompatibility:
                        (cons (_%get-names95520%_ _%sis95518%_)
                              (cons (_%get-names95520%_ _%sis295774%_) '()))))
                   (_%loop95779%_ (cdr _%t195781%_) (cdr _%t295782%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls95524%_
                               (let ((__tmp95846
                                      (lambda (_%pl95769%_)
                                        (let ((_g95847_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?95505%_
                                                  _%pl95769%_
                                                  '()))))
                                          (begin
                                            (let ((_g95848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g95847_)
                                                         (##values-length
                                                          _g95847_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g95848_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g95848_)))
                                            (let ((_%tl95771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95847_
                                                      0)))
                                                  (_%rh95772%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g95847_
                                                      1))))
                                              (begin
                                                (_%merge-sis!95523%_
                                                 _%tl95771%_)
                                                _%rh95772%_)))))))
                                 (declare (not safe))
                                 (##map __tmp95846 _%pls95517%_)))
                              (_%unsisr-rpl95525%_
                               (lambda (_%rpl95715%_)
                                 (let _%u95717%_ ((_%pl-rhead95719%_
                                                   _%rpl95715%_)
                                                  (_%pl-tail95720%_ '())
                                                  (_%sis-rhead95721%_
                                                   (reverse _%sis95518%_))
                                                  (_%sis-tail95722%_ '()))
                                   (let* ((_%pl-rhead9572395732%_
                                           _%pl-rhead95719%_)
                                          (_%E9572695736%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead9572395732%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K9573095766%_
                                            (lambda () _%pl-tail95720%_))
                                           (_%K9572795750%_
                                            (lambda (_%plrh95740%_ _%c95741%_)
                                              (if (member _%c95741%_
                                                          _%sis-tail95722%_
                                                          _%eq95507%_)
                                                  (_%err95521%_
                                                   'precedence-list-head:
                                                   (_%get-names95520%_
                                                    (reverse _%pl-rhead95719%_))
                                                   'precedence-list-tail:
                                                   (_%get-names95520%_
                                                    _%pl-tail95720%_)
                                                   'single-inheritance-head:
                                                   (_%get-names95520%_
                                                    (reverse _%sis-rhead95721%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names95520%_
                                                    _%sis-tail95722%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name95509%_
                                                    _%c95741%_))
                                                  (let ((_g95849_
                                                         (let ((__tmp95851
                                                                (lambda (_%g9574295744%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq95507%_ _%c95741%_ _%g9574295744%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp95851
                    _%sis-rhead95721%_
                    _%sis-tail95722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g95850_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g95849_)
                           (##values-length _g95849_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g95850_ 2)))
                    (error "Context expects 2 values" _g95850_)))
              (let ((_%sis-rh295747%_
                     (let () (declare (not safe)) (##values-ref _g95849_ 0)))
                    (_%sis-tl295748%_
                     (let () (declare (not safe)) (##values-ref _g95849_ 1))))
                (if (null? _%sis-rh295747%_)
                    (_%u95717%_
                     _%plrh95740%_
                     (cons _%c95741%_ _%pl-tail95720%_)
                     '()
                     _%sis-tl295748%_)
                    (_%u95717%_
                     _%plrh95740%_
                     _%pl-tail95720%_
                     (cdr _%sis-rh295747%_)
                     _%sis-tl295748%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match9572595762%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead9572395732%_)
                                                    (let ((_%tl9572995755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead9572395732%_)))
                                                          (_%hd9572895753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead9572395732%_))))
                                                      (let ((_%c95758%_
                                                             _%hd9572895753%_)
                                                            (_%plrh95760%_
                                                             _%tl9572995755%_))
                                                        (_%K9572795750%_
                                                         _%plrh95760%_
                                                         _%c95758%_)))
                                                    (_%E9572695736%_)))))
                                         (if (null? _%pl-rhead9572395732%_)
                                             (_%K9573095766%_)
                                             (_%try-match9572595762%_))))))))
                              (_g95852_
                               (let ((_g95853_
                                      (let ((__tmp95855
                                             (reverse _%supers95501%_)))
                                        (declare (not safe))
                                        (append1! _%rpls95524%_ __tmp95855))))
                                 #!void
                                 _g95853_))
                              (_%hpls95526%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl95525%_ _%rpls95524%_)))
                              (_%c3-select-next95527%_
                               (lambda (_%tails95665%_)
                                 (let ((_%candidate?95671%_
                                        (lambda (_%c95667%_)
                                          (let ((__tmp95856
                                                 (lambda (_%tail95669%_)
                                                   (not (member _%c95667%_
                                                                (cdr _%tail95669%_)
                                                                _%eq95507%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp95856
                                             _%tails95665%_)))))
                                   (let _%loop95673%_ ((_%ts95675%_
                                                        _%tails95665%_))
                                     (let* ((_%ts9567695686%_ _%ts95675%_)
                                            (_%else9567895694%_
                                             (lambda () (_%err95521%_)))
                                            (_%K9568095700%_
                                             (lambda (_%rts95697%_ _%c95698%_)
                                               (if (_%candidate?95671%_
                                                    _%c95698%_)
                                                   _%c95698%_
                                                   (_%loop95673%_
                                                    _%rts95697%_)))))
                                       (if (pair? _%ts9567695686%_)
                                           (let ((_%hd9568195703%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts9567695686%_)))
                                                 (_%tl9568295705%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts9567695686%_))))
                                             (if (pair? _%hd9568195703%_)
                                                 (let* ((_%hd9568395708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd9568195703%_)))
                                                        (_%c95711%_
                                                         _%hd9568395708%_)
                                                        (_%rts95713%_
                                                         _%tl9568295705%_))
                                                   (_%K9568095700%_
                                                    _%rts95713%_
                                                    _%c95711%_))
                                                 (_%err95521%_)))
                                           (_%err95521%_)))))))
                              (_%remove-next!95528%_
                               (lambda (_%next95610%_ _%tails95611%_)
                                 (let _%loop95613%_ ((_%t95615%_
                                                      _%tails95611%_))
                                   (let* ((_%t9561695627%_ _%t95615%_)
                                          (_%E9561995631%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t9561695627%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K9562595662%_
                                            (lambda () _%tails95611%_))
                                           (_%K9562095639%_
                                            (lambda (_%more95635%_
                                                     _%tail95636%_
                                                     _%head95637%_)
                                              (if (_%eq95507%_
                                                   _%head95637%_
                                                   _%next95610%_)
                                                  (set-car!
                                                   _%t95615%_
                                                   _%tail95636%_)
                                                  '#!void)
                                              (_%loop95613%_ _%more95635%_))))
                                       (let ((_%try-match9561895658%_
                                              (lambda ()
                                                (if (pair? _%t9561695627%_)
                                                    (let ((_%tl9562295644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t9561695627%_)))
                                                          (_%hd9562195642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t9561695627%_))))
                                                      (if (pair? _%hd9562195642%_)
                                                          (let ((_%tl9562495649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd9562195642%_)))
                        (_%hd9562395647%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd9562195642%_))))
                    (let ((_%head95652%_ _%hd9562395647%_)
                          (_%tail95654%_ _%tl9562495649%_)
                          (_%more95656%_ _%tl9562295644%_))
                      (_%K9562095639%_
                       _%more95656%_
                       _%tail95654%_
                       _%head95652%_)))
                  (_%E9561995631%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E9561995631%_)))))
                                         (if (null? _%t9561695627%_)
                                             (_%K9562595662%_)
                                             (_%try-match9561895658%_))))))))
                              (_%precedence-list95529%_
                               (let _%c3loop95560%_ ((_%rhead95562%_
                                                      _%rhead95500%_)
                                                     (_%tails95563%_
                                                      _%hpls95526%_))
                                 (let* ((_%tails95565%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails95563%_)))
                                        (_%tails9556695576%_ _%tails95565%_)
                                        (_%else9556995587%_
                                         (lambda ()
                                           (let ((_%next95584%_
                                                  (_%c3-select-next95527%_
                                                   _%tails95565%_)))
                                             (_%c3loop95560%_
                                              (cons _%next95584%_
                                                    _%rhead95562%_)
                                              (_%remove-next!95528%_
                                               _%next95584%_
                                               _%tails95565%_))))))
                                   (let ((_%K9557495607%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead95562%_
                                             _%sis95518%_)))
                                         (_%K9557195593%_
                                          (lambda (_%tail95591%_)
                                            (append-reverse
                                             _%rhead95562%_
                                             (append _%tail95591%_
                                                     _%sis95518%_)))))
                                     (let ((_%try-match9556895603%_
                                            (lambda ()
                                              (if (pair? _%tails9556695576%_)
                                                  (let ((_%tl9557395598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails9556695576%_)))
                                                        (_%hd9557295596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails9556695576%_))))
                                                    (if (null? _%tl9557395598%_)
                                                        (let ((_%tail95601%_
                                                               _%hd9557295596%_))
                                                          (_%K9557195593%_
                                                           _%tail95601%_))
                                                        (_%else9556995587%_)))
                                                  (_%else9556995587%_)))))
                                       (if (null? _%tails9556695576%_)
                                           (_%K9557495607%_)
                                           (_%try-match9556895603%_)))))))
                              (_%super-struct95530%_
                               (let* ((_%sis9553195539%_ _%sis95518%_)
                                      (_%else9553395547%_ (lambda () '#f))
                                      (_%K9553595552%_
                                       (lambda (_%s95550%_) _%s95550%_)))
                                 (if (pair? _%sis9553195539%_)
                                     (let* ((_%hd9553695555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis9553195539%_)))
                                            (_%s95558%_ _%hd9553695555%_))
                                       (_%K9553595552%_ _%s95558%_))
                                     (_%else9553395547%_)))))
                      (values _%precedence-list95529%_
                              _%super-struct95530%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords95802%_ . _%args95803%_)
        (apply c4-linearize__%
               _%@@keywords95802%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95802%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95802%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords95802%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords95802%_
                  'get-name:
                  absent-value))
               _%args95803%_)))
    (define c4-linearize
      (lambda _%args9548995809%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args9548995809%_)))))
